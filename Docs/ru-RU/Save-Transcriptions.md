# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | Путь к каталогу для поиска медиафайлов |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | — | Устанавливает язык для перевода. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Порог суммы для временных меток токенов, по умолчанию 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | Максимальное количество токенов на сегмент |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Максимальная продолжительность тишины перед автоматической остановкой записи |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Порог обнаружения тишины (0..32767, по умолчанию 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Количество потоков ЦП для использования, по умолчанию 0 (авто) |
| `-Temperature` | Single | — | — | Named | `0.5` | Температура для распознавания речи |
| `-TemperatureInc` | Single | — | — | Named | — | Приращение температуры |
| `-Prompt` | String | — | — | Named | — | Use this text to prompt the model |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста |
| `-MaxDuration` | Object | — | — | Named | — | Максимальная длительность аудио |
| `-Offset` | Object | — | — | Named | — | Смещение для аудио |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Максимальное количество последних текстовых токенов |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Максимальная длина сегмента |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Single | — | — | Named | — | Штраф за длину |
| `-EntropyThreshold` | Single | — | — | Named | — | Энтропийный порог |
| `-LogProbThreshold` | Single | — | — | Named | — | Порог логарифмической вероятности |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Порог речи отсутствует |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Включать ли временные метки токенов в вывод |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Разбивать ли по границам слов |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Игнорировать ли тишину (нарушит временные метки) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Показывать ли прогресс |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Использовать только один сегмент |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Whether to print special tokens |
| `-NoContext` | SwitchParameter | — | — | Named | — | Не используйте контекст |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-ModelType` | String | — | — | Named | — | Тип модели Whisper для использования, по умолчанию LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объекты вместо строк |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Related Links

- [Save-Transcriptions on GitHub](https://github.com/genXdev/genXdev)
