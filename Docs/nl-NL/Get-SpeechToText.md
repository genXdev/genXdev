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
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Pad naar de modelbestandsmap |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Audiotrackpad, FileInfo-object of elk audioformaat dat wordt ondersteund door Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Stelt de invoertaal in om te detecteren, standaard 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Stelt de uitvoertaal in |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatuur voor spraakdetectie |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Temperatuurtoename |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Geen spraakdrempel |
| `-Prompt` | String | — | — | Named | — | Prompt om te gebruiken voor het model |
| `-SuppressRegex` | String | — | — | Named | — | Regex om tokens uit de uitvoer te onderdrukken |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Somdrempel voor token-tijdstempels, standaard ingesteld op 0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximum aantal tokens per segment |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Grootte van de audiocontext |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximale duur van de audio |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Offset voor de audio |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximum number of last text tokens |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximum segment length |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Lengtestraf |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Entropiedrempel |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Drempelwaarschijnlijkheid voor logaritme |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Whisper-modeltype om te gebruiken, standaard is LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Retourneert objecten in plaats van strings |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Of om token-tijdstempels te includeren |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Of scheiden op woordgrenzen |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Of voortgang tonen |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Of alleen één segment gebruiken |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Of speciale tokens moeten worden afgedrukt |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Gebruik geen context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Gebruik beam search samplingstrategie |

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
