// ################################################################################
// Part of PowerShell module : GenXdev.Helpers
// Original cmdlet filename  : misc.cs
// Original author           : René Vaessen / GenXdev
// Version                   : 3.26.2026
// ################################################################################
// Copyright (c) 2026 René Vaessen / GenXdev
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ################################################################################



using EdgeTTS.DotNet;
using NAudio.Wave;

namespace GenXdev.Helpers
{
    /// <summary>
    /// Provides static text-to-speech instances backed by Microsoft Edge's
    /// neural TTS engine and NAudio for audio playback.
    /// </summary>
    public static class Misc
    {
        /// <summary>
        /// Default TTS synthesizer (uses Edge's default voice).
        /// </summary>
        public static EdgeTtsSynthesizer Speech = new EdgeTtsSynthesizer();

        /// <summary>
        /// Customizable TTS synthesizer – voice, rate, volume
        /// and pitch can be set before speaking.
        /// </summary>
        public static EdgeTtsSynthesizer SpeechCustomized =
            new EdgeTtsSynthesizer();
    }

    // -----------------------------------------------------------------------
    // Voice metadata (replaces System.Speech InstalledVoice / VoiceInfo)
    // -----------------------------------------------------------------------

    /// <summary>
    /// Metadata for an available Edge TTS voice.  The <c>Name</c>
    /// property provides backward-compatibility with the old
    /// <c>.VoiceInfo.Name</c> pattern used in PowerShell scripts.
    /// </summary>
    public class VoiceInfo
    {
        public string ShortName { get; internal set; }
        public string Locale { get; internal set; }
        public string Gender { get; internal set; }
        public string Name => ShortName; // backward compat
    }

    // -----------------------------------------------------------------------
    // EdgeTTS synthesizer wrapper
    // -----------------------------------------------------------------------

    /// <summary>
    /// Wraps EdgeTTS.DotNet and NAudio into an API surface compatible
    /// with the legacy <c>SpeechSynthesizer</c> calls used by
    /// <c>Start-TextToSpeech</c>, <c>Stop-TextToSpeech</c>
    /// and <c>Get-IsSpeaking</c>.
    /// </summary>
    public class EdgeTtsSynthesizer : IDisposable
    {
        private readonly object _gate = new();
        private readonly SemaphoreSlim _queueSemaphore = new(1, 1);
        private CancellationTokenSource _globalCancel = new();
        private string _voice = "en-US-AriaNeural";
        private string _rate = "+0%";
        private string _volume = "+0%";
        private string _pitch = "+0Hz";
        private CancellationTokenSource _activeCts;
        private bool _disposed;

        /// <summary>True while audio is playing.</summary>
        public bool IsSpeaking
        {
            get
            {
                lock (_gate)
                {
                    return _activeCts != null &&
                        !_activeCts.IsCancellationRequested;
                }
            }
        }

        /// <summary>
        /// String state for backward-compat ("Speaking" / "Ready").
        /// </summary>
        public string State => IsSpeaking ? "Speaking" : "Ready";

        // -- configuration setters ------------------------------------------

        public void SetVoice(string voice)
        {
            lock (_gate) { _voice = voice; }
        }

        public void SetRate(string rate)
        {
            lock (_gate) { _rate = rate; }
        }

        public void SetVolume(string volume)
        {
            lock (_gate) { _volume = volume; }
        }

        public void SetPitch(string pitch)
        {
            lock (_gate) { _pitch = pitch; }
        }

        // -- voice discovery ------------------------------------------------

        /// <summary>Returns all Edge TTS voices (blocks).</summary>
        public List<VoiceInfo> GetInstalledVoices()
        {
            var t = EdgeTTS.DotNet.Voices.ListVoicesAsync();
            t.Wait();
            return t.Result.Select(v => new VoiceInfo
            {
                ShortName = v.ShortName,
                Locale = v.Locale,
                Gender = v.Gender
            }).ToList();
        }

        /// <summary>
        /// Select a voice from the list returned by
        /// <see cref="GetInstalledVoices"/>.
        /// </summary>
        public void SelectVoice(VoiceInfo voice)
        {
            if (voice != null) SetVoice(voice.ShortName);
        }

        // -- speak (synchronous) --------------------------------------------

        /// <summary>
        /// Speak with configured voice/prosody.  Blocks until playback
        /// finishes.
        /// </summary>
        public void Speak(string text)
        {
            SpeakInternal(text, wait: true);
        }

        // -- speak (asynchronous / fire-and-forget) -------------------------

        /// <summary>
        /// Speak on a background thread.  Returns immediately.
        /// </summary>
        public void SpeakAsync(string text)
        {
            string voice, rate, volume, pitch;
            CancellationToken token;
            lock (_gate)
            {
                if (_disposed)
                    throw new ObjectDisposedException(
                        nameof(EdgeTtsSynthesizer));

                voice = _voice;
                rate = _rate;
                volume = _volume;
                pitch = _pitch;

                _activeCts?.Cancel();
                _activeCts?.Dispose();
                _activeCts = new CancellationTokenSource();
                token = _activeCts.Token;
            }

            _ = Task.Run(async () =>
            {
                try
                {
                    await SpeakCoreAsync(text, voice, rate, volume,
                        pitch, wait: false, token);
                }
                catch (OperationCanceledException) { }
                catch (Exception ex)
                {
                    System.Console.Error.WriteLine(
                        "EdgeTTS SpeakAsync error: " + ex.Message);
                }
                finally
                {
                    lock (_gate)
                    {
                        if (_activeCts != null &&
                            _activeCts.Token == token)
                        {
                            _activeCts.Dispose();
                            _activeCts = null;
                        }
                    }
                }
            }, token);
        }

        // -- speak (queued, like old System.Speech) -------------------------

        /// <summary>
        /// Enqueue text to speak after any currently-playing speech
        /// finishes.  Multiple calls queue up sequentially without
        /// cancelling each other.
        /// </summary>
        public void SpeakAsyncQueued(string text)
        {
            string voice, rate, volume, pitch;
            lock (_gate)
            {
                if (_disposed)
                    throw new ObjectDisposedException(
                        nameof(EdgeTtsSynthesizer));
                voice = _voice;
                rate = _rate;
                volume = _volume;
                pitch = _pitch;
            }

            // Enqueue on a serial background worker so calls play in order
            _ = Task.Run(async () =>
            {
                await _queueSemaphore.WaitAsync();
                try
                {
                    using var cts = CancellationTokenSource
                        .CreateLinkedTokenSource(_globalCancel.Token);
                    lock (_gate)
                    {
                        _activeCts?.Dispose();
                        _activeCts = cts;
                    }
                    await SpeakCoreAsync(text, voice, rate, volume,
                        pitch, wait: true, cts.Token);
                }
                catch (OperationCanceledException) { }
                catch (Exception ex)
                {
                    System.Console.Error.WriteLine(
                        "EdgeTTS SpeakQueued error: " + ex.Message);
                }
                finally
                {
                    lock (_gate)
                    {
                        _activeCts?.Dispose();
                        _activeCts = null;
                    }
                    _queueSemaphore.Release();
                }
            });
        }

        // -- cancel ---------------------------------------------------------

        /// <summary>Cancel all active and queued speech.</summary>
        public void SpeakAsyncCancelAll()
        {
            lock (_gate)
            {
                _activeCts?.Cancel();
                _globalCancel.Cancel();
                _globalCancel.Dispose();
                _globalCancel = new CancellationTokenSource();
            }
        }

        // -- internals ------------------------------------------------------

        private void SpeakInternal(string text, bool wait)
        {
            string voice, rate, volume, pitch;
            CancellationToken token;
            lock (_gate)
            {
                if (_disposed)
                    throw new ObjectDisposedException(
                        nameof(EdgeTtsSynthesizer));

                voice = _voice;
                rate = _rate;
                volume = _volume;
                pitch = _pitch;

                _activeCts?.Cancel();
                _activeCts?.Dispose();
                _activeCts = new CancellationTokenSource();
                token = _activeCts.Token;
            }

            try
            {
                SpeakCoreAsync(text, voice, rate, volume,
                    pitch, wait, token).GetAwaiter().GetResult();
            }
            catch (OperationCanceledException) { }
            finally
            {
                lock (_gate)
                {
                    if (_activeCts != null &&
                        _activeCts.Token == token)
                    {
                        _activeCts.Dispose();
                        _activeCts = null;
                    }
                }
            }
        }

        private static async Task SpeakCoreAsync(
            string text, string voice, string rate,
            string volume, string pitch,
            bool wait, CancellationToken token)
        {
            string tempFile = null;
            try
            {
                var communicate = new Communicate(
                    text,
                    voice: voice,
                    rate: rate,
                    volume: volume,
                    pitch: pitch);

                tempFile = Path.GetTempFileName() + ".mp3";
                await communicate.SaveAsync(tempFile, token);

                if (new FileInfo(tempFile).Length == 0)
                {
                    System.Console.Error.WriteLine(
                        "EdgeTTS: No audio data received.");
                    return;
                }

                PlayAudioFile(tempFile, token, wait);
                tempFile = null; // ownership transferred to PlayAudioFile
            }
            catch (OperationCanceledException) { }
            catch (Exception ex)
            {
                System.Console.Error.WriteLine(
                    "EdgeTTS SpeakCore error: " + ex.Message);
            }
            finally
            {
                if (tempFile != null)
                {
                    try { File.Delete(tempFile); } catch { }
                }
            }
        }

        private static void PlayAudioFile(
            string filePath, CancellationToken token, bool wait)
        {
            var reader = new AudioFileReader(filePath);
            var output = new WaveOutEvent();
            output.Init(reader);

            if (wait)
                PlaySync(output, reader, filePath, token);
            else
                PlayAsync(output, reader, filePath, token);
        }

        private static void PlaySync(
            WaveOutEvent output, AudioFileReader reader,
            string filePath, CancellationToken token)
        {
            using (reader)
            using (output)
            {
                var stopped = new ManualResetEventSlim(false);
                output.PlaybackStopped += (_, _) => stopped.Set();
                output.Play();

                while (output.PlaybackState == PlaybackState.Playing &&
                       !token.IsCancellationRequested)
                {
                    Thread.Sleep(50);
                }

                if (token.IsCancellationRequested)
                    output.Stop();

                // Wait for PlaybackStopped with generous timeout
                stopped.Wait(TimeSpan.FromSeconds(60));
            }

            // Safe to delete now — playback is done
            try { File.Delete(filePath); } catch { }
        }

        private static void PlayAsync(
            WaveOutEvent output, AudioFileReader reader,
            string filePath, CancellationToken token)
        {
            // NO using blocks — cleanup on PlaybackStopped or cancel
            var capturedOutput = output;
            var capturedReader = reader;
            var capturedPath = filePath;

            var ctr = token.Register(() =>
            {
                try { capturedOutput.Stop(); } catch { }
            });

            capturedOutput.PlaybackStopped += (_, _) =>
            {
                ctr.Dispose();
                try { capturedOutput.Dispose(); } catch { }
                try { capturedReader.Dispose(); } catch { }
                try { File.Delete(capturedPath); } catch { }
            };

            capturedOutput.Play();
        }

        // -- IDisposable ----------------------------------------------------

        public void Dispose()
        {
            lock (_gate)
            {
                if (_disposed) return;
                _disposed = true;
                _globalCancel.Cancel();
                _activeCts?.Cancel();
                _activeCts?.Dispose();
                _activeCts = null;
                _globalCancel.Dispose();
                _queueSemaphore.Dispose();
            }
        }
    }
}