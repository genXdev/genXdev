# Receive-RealTimeSpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Преобразует аудиовход в реальном времени в текст с использованием модели Whisper AI.

## Description

Этот командлет захватывает аудио с микрофона или рабочего стола и транскрибирует его в текст в реальном времени с помощью модели Whisper AI. Он поддерживает различные источники аудио, обнаружение тишины и несколько параметров конфигурации для распознавания речи.

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | Путь к файлу модели |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | Использовать захват звука рабочего стола вместо микрофона |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | Whether to use both desktop audio capture and recording device simultaneously |
| `-AudioDevice` | String | — | — | Named | — | Используйте как настольное устройство, так и записывающее устройство |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | Возвращает объекты вместо строк |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | Whether to include token timestamps |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Порог суммы для временных меток токенов, по умолчанию 0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | Разбивать ли по границам слов |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальное количество токенов на сегмент |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | Игнорировать ли тишину (нарушит временные метки) |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальная продолжительность тишины перед автоматической остановкой записи |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Порог обнаружения тишины (0..32767, по умолчанию 30) |
| `-LanguageIn` | String | — | — | Named | — | Устанавливает язык ввода для определения, по умолчанию 'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Устанавливает язык вывода |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Температура для обнаружения речи |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Приращение температуры |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-Prompt` | String | — | — | Named | — | Use this text to prompt the model |
| `-SuppressRegex` | String | — | — | Named | — | Regex to suppress tokens from the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | Показывать ли прогресс |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Размер аудиоконтекста |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | Whether to NOT suppress blank lines |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальная длительность аудио |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Смещение для аудио |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальное количество последних текстовых токенов |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | Использовать только один сегмент |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | Whether to print special tokens |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Максимальная длина сегмента |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Штраф за длину |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Энтропийный порог |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Порог логарифмической вероятности |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Порог речи отсутствует |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Не используйте контекст |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | Use beam search sampling strategy |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | Тип модели Whisper для использования, по умолчанию Small |

## Examples

### Example 1

```powershell
Receive-RealTimeSpeechToText
```

Базовое использование с микрофоном.

### Example 2

```powershell
Receive-RealTimeSpeechToText -UseDesktopAudioCapture
```

Используется захват звука с рабочего стола.

### Example 3

```powershell
Receive-RealTimeSpeechToText -AudioDevice "Microphone*"
```

Использование конкретного аудиоустройства.

### Example 4

```powershell
Receive-RealTimeSpeechToText -MaxDurationOfSilence "00:00:05"
```

С функцией обнаружения тишины.

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
