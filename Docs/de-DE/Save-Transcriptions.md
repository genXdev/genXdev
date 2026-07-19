# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Generiert Untertiteldateien für Audio- und Videodateien mit OpenAI Whisper.

## Description

Durchsucht rekursiv das angegebene Verzeichnis nach Mediendateien und verwendet ein lokales OpenAI Whisper-Modell, um Untertiteldateien im SRT-Format zu generieren. Die Funktion unterstützt mehrere Audio-/Videoformate und kann optional Untertitel mithilfe einer LLM-Abfrage in eine andere Sprache übersetzen. Die Dateibenennung folgt einem standardisierten Muster mit Sprachcodes (z. B. video.mp4.en.srt).

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | Der Verzeichnispfad zum Durchsuchen nach Mediendateien |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | — | Stellt die Sprache für die Übersetzung ein. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Sum threshold for token timestamps, defaults to 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | Maximale Anzahl von Tokens pro Segment |
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
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt Objekte anstelle von Zeichenketten zurück |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Ob Desktop-Audioaufnahme anstelle des Mikrofoneingangs verwendet werden soll |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildsammlungen usw. |

## Examples

### Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

```powershell
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"
```

### Save-Transcriptions "C:\Media" "Japanese" "English"

```powershell
Save-Transcriptions "C:\Media" "Japanese" "English"
```

## Related Links

- [Save-Transcriptions on GitHub](https://github.com/genXdev/genXdev)
