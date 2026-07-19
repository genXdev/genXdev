# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile, `transcribe

## Synopsis

> Transcribes an audio file, video file, or a recording device to text

## Description

Transkribiert eine Audiodatei, Videodatei oder ein Aufnahmegerät mithilfe des Whisper-KI-Modells in Text. Die Funktion kann verschiedene Audio- und Videoformate verarbeiten, sie in das geeignete Format für die Transkription konvertieren und optional die Ausgabe in eine andere Sprache übersetzen. Unterstützt die SRT-Untertitelformatausgabe und verschiedene Audioverarbeitungsparameter zur Feinabstimmung der Transkriptionsqualität.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | Der Dateipfad der zu transkribierenden Audio- oder Videodatei. Wenn nicht angegeben, wird über das Mikrofon aufgenommen. |
| `-AudioDevice` | String | — | — | Named | — | Name oder GUID des Audiogeräts (Unterstützt Platzhalter, wählt den ersten Treffer) |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Stellt die Sprache für die Übersetzung ein. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Sum threshold for token timestamps, defaults to 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Maximale Anzahl von Tokens pro Segment |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Maximale Dauer der Stille vor automatischem Stopp der Aufnahme |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Ruheerkennungsschwelle (0..32767, Standard 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Anzahl der zu verwendenden CPU-Threads, Standard ist 0 (automatisch) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperatur für Spracherkennung |
| `-TemperatureInc` | Single | — | — | Named | — | Temperaturerhöhung |
| `-Prompt` | String | — | — | Named | — | Prompt zur Verwendung für das Modell |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Größe des Audiokontexts |
| `-MaxDuration` | Object | — | — | Named | — | Maximale Dauer des Audios |
| `-Offset` | Object | — | — | Named | — | Offset für das Audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Maximale Anzahl der letzten Text-Token |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Maximale Segmentlänge |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Starte Zeitstempel ab diesem Moment |
| `-LengthPenalty` | Single | — | — | Named | — | Längenstrafe |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Single | — | — | Named | — | Log-Wahrscheinlichkeitsschwelle |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Kein Sprachschwellenwert |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Ob Token-Zeitstempel in die Ausgabe aufgenommen werden sollen |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Ob an Wortgrenzen getrennt werden soll |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Ob Stille ignoriert werden soll (beeinträchtigt Zeitstempel) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Ob Fortschritt angezeigt werden soll |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Leere Zeilen nicht unterdrücken |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Ob nur ein Segment verwendet werden soll |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Ob spezielle Tokens ausgegeben werden sollen |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Verwenden Sie die Beam-Suchabtaststrategie |
| `-ModelType` | String | — | — | Named | — | Zu verwendender Whisper-Modelltyp, standardmäßig LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
Hier ist ein Beispieltext.

2
00:00:05,000 --> 00:00:09,000
Dies ist ein weiterer Satz im SRT-Format. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt Objekte anstelle von Zeichenketten zurück |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Ob Desktop-Audioaufnahme anstelle des Mikrofoneingangs verwendet werden soll |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Verwenden Sie sowohl Desktop als auch Aufnahmegerät |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |
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
