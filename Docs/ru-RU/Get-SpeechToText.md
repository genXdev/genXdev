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
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Путь к директории файла модели |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | Audio file path, FileInfo object, or any audio format supported by Whisper. |
| `-LanguageIn` | String | — | — | Named | — | Устанавливает язык ввода для определения, по умолчанию 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Устанавливает язык вывода |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Температура для обнаружения речи |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Приращение температуры |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Порог речи отсутствует |
| `-Prompt` | String | — | — | Named | — | Use this text to prompt the model |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Порог суммы для временных меток токенов, по умолчанию 0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальное количество токенов на сегмент |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Размер аудиоконтекста |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальная длительность аудио |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Смещение для аудио |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальное количество последних текстовых токенов |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальная длина сегмента |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Штраф за длину |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Энтропийный порог |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Порог логарифмической вероятности |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Тип модели Whisper для использования, по умолчанию LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Возвращает объекты вместо строк |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Whether to include token timestamps |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Разбивать ли по границам слов |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Показывать ли прогресс |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Использовать только один сегмент |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Whether to print special tokens |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Не используйте контекст |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Use beam search sampling strategy |

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
