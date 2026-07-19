# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile, `transcribe

## Synopsis

> Transcribes an audio file, video file, or a recording device to text

## Description

Transcribes an audio file, video file, or a recording device to text using
the Whisper AI model. The function can handle various audio and video formats,
convert them to the appropriate format for transcription, and optionally
translate the output to a different language. Supports SRT subtitle format
output and various audio processing parameters for fine-tuning the
transcription quality.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | The file path of the audio or video file to transcribe. If not provided, records from microphone. |
| `-AudioDevice` | String | — | — | Named | — | Audio device name or GUID (supports wildcards, picks first match) |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Sets the language to translate to. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Sum threshold for token timestamps, defaults to 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Maximum number of tokens per segment |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Maximum duration of silence before automatically stopping recording |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Silence detect threshold (0..32767 defaults to 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Number of CPU threads to use, defaults to 0 (auto) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperature for speech recognition |
| `-TemperatureInc` | Single | — | — | Named | — | Temperature increment |
| `-Prompt` | String | — | — | Named | — | Prompt to use for the model |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Size of the audio context |
| `-MaxDuration` | Object | — | — | Named | — | Maximum duration of the audio |
| `-Offset` | Object | — | — | Named | — | Offset for the audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Maximum number of last text tokens |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Maximum segment length |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Single | — | — | Named | — | Length penalty |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Single | — | — | Named | — | Log probability threshold |
| `-NoSpeechThreshold` | Single | — | — | Named | — | No speech threshold |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Whether to include token timestamps in the output |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Whether to split on word boundaries |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Whether to ignore silence (will mess up timestamps) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Whether to show progress |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Whether to use single segment only |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Whether to print special tokens |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-ModelType` | String | — | — | Named | — | Whisper model type to use, defaults to LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | Output in SRT format. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns objects instead of strings |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Use both desktop and recording device |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-VOX` | SwitchParameter | — | — | Named | — | Use silence detection to automatically stop recording |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)
