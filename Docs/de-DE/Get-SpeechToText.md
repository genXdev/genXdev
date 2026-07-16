# Get-SpeechToText

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SpeechToText [-Input] <Object> [-ModelFileDirectoryPath <string>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-NoSpeechThreshold <float>] [-Prompt <string>] [-SuppressRegex <string>] [-TokenTimestampsSumThreshold <float>] [-MaxTokensPerSegment <int>] [-AudioContextSize <int>] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-ModelType <GgmlType>] [-Passthru] [-WithTokenTimestamps] [-SplitOnWord] [-WithTranslate] [-WithProgress] [-DontSuppressBlank] [-SingleSegmentOnly] [-PrintSpecialTokens] [-NoContext] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Pfad zum Modellverzeichnis |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Audio file path, FileInfo object, or any audio format supported by Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Legt die zu erkennende Eingabesprache fest, Standard ist 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Legt die Ausgangssprache fest |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatur für Spracherkennung |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperaturerhöhung |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Kein Sprachschwellenwert |
| `-Prompt` | String | — | — | Named | — | Prompt zur Verwendung für das Modell |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Sum threshold for token timestamps, defaults to 0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Anzahl von Tokens pro Segment |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Größe des Audiokontexts |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Dauer des Audios |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Offset für das Audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Anzahl der letzten Text-Token |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale Segmentlänge |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Starte Zeitstempel ab diesem Moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Längenstrafe |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Log-Wahrscheinlichkeitsschwelle |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Zu verwendender Whisper-Modelltyp, standardmäßig LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Gibt Objekte anstelle von Zeichenketten zurück |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Ob Token-Zeitstempel eingeschlossen werden sollen |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Ob an Wortgrenzen getrennt werden soll |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Ob die Ausgabe übersetzt werden soll |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Ob Fortschritt angezeigt werden soll |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Leere Zeilen nicht unterdrücken |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Ob nur ein Segment verwendet werden soll |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Ob spezielle Tokens ausgegeben werden sollen |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Verwenden Sie die Beam-Suchabtaststrategie |

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
