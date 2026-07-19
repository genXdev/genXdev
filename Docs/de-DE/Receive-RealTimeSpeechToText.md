# Receive-RealTimeSpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Konvertiert Echtzeit-Audioeingabe mithilfe des Whisper-KI-Modells in Text.

## Description

Dieses Cmdlet erfasst Audio von Mikrofon oder Desktop und transkribiert es in Echtzeit in Text unter Verwendung des Whisper-KI-Modells. Es unterstützt verschiedene Audioquellen, Stilleerkennung und mehrere Konfigurationsoptionen für die Spracherkennung.

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Pfad zur Modelldatei |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Ob stattdessen die Desktop-Audioaufnahme anstelle des Mikrofons verwendet werden soll |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | Whether to use both desktop audio capture and recording device simultaneously |
| `-AudioDevice` | String | — | — | Named | — | Verwenden Sie sowohl Desktop als auch Aufnahmegerät |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Gibt Objekte anstelle von Zeichenketten zurück |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Ob Token-Zeitstempel eingeschlossen werden sollen |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Sum threshold for token timestamps, defaults to 0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Ob an Wortgrenzen getrennt werden soll |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Anzahl von Tokens pro Segment |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | Ob Stille ignoriert werden soll (beeinträchtigt Zeitstempel) |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Dauer der Stille vor automatischem Stopp der Aufnahme |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Ruheerkennungsschwelle (0..32767, Standard 30) |
| `-LanguageIn` | String | — | — | Named | — | Legt die zu erkennende Eingabesprache fest, Standard ist 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Legt die Ausgangssprache fest |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatur für Spracherkennung |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperaturerhöhung |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Ob die Ausgabe übersetzt werden soll |
| `-Prompt` | String | — | — | Named | — | Prompt zur Verwendung für das Modell |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Ob Fortschritt angezeigt werden soll |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Größe des Audiokontexts |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Leere Zeilen nicht unterdrücken |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Dauer des Audios |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Offset für das Audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Anzahl der letzten Text-Token |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Ob nur ein Segment verwendet werden soll |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Ob spezielle Tokens ausgegeben werden sollen |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Segmentlänge |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Starte Zeitstempel ab diesem Moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Längenstrafe |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Log-Wahrscheinlichkeitsschwelle |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Kein Sprachschwellenwert |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Verwenden Sie die Beam-Suchabtaststrategie |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Zu verwendender Whisper-Modelltyp, Standard ist Small |

## Examples

### Example 1

```powershell
Receive-RealTimeSpeechToText
```

Grundlegende Nutzung mit Mikrofon.

### Example 2

```powershell
Receive-RealTimeSpeechToText -UseDesktopAudioCapture
```

Desktop-Audioerfassung verwenden.

### Example 3

```powershell
Receive-RealTimeSpeechToText -AudioDevice "Microphone*"
```

Verwendung eines bestimmten Audiogeräts.

### Example 4

```powershell
Receive-RealTimeSpeechToText -MaxDurationOfSilence "00:00:05"
```

Mit Stummerkennung.

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
