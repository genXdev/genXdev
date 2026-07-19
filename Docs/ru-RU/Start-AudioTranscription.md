# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile, `transcribe

## Synopsis

> Transcribes an audio file, video file, or a recording device to text

## Description

Транскрибирует аудиофайл, видеофайл или запись с устройства в текст с помощью модели Whisper AI. Функция может обрабатывать различные аудио- и видеоформаты, преобразовывать их в подходящий формат для транскрипции и, при необходимости, переводить результат на другой язык. Поддерживает вывод субтитров в формате SRT и различные параметры обработки аудио для точной настройки качества транскрипции.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | Путь к аудио- или видеофайлу для транскрибации. Если не указан, запись с микрофона. |
| `-AudioDevice` | String | — | — | Named | — | Имя аудиоустройства или GUID (поддерживаются маски, выбирается первое совпадение) |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Устанавливает язык для перевода. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Порог суммы для временных меток токенов, по умолчанию 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Максимальное количество токенов на сегмент |
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
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,500
Привет, это пример субтитров.

2
00:00:05,000 --> 00:00:09,000
Это вторая строка субтитров. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Возвращает объекты вместо строк |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Используйте как настольное устройство, так и записывающее устройство |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |
| `-VOX` | SwitchParameter | — | — | Named | — | Используйте определение тишины, чтобы автоматически остановить запись. |

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
