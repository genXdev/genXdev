# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Инструкция для преобразования текста: Вы — полезный ассистент, предназначенный для вывода JSON. |
| `-Instructions` | String | — | — | 1 | `''` | Инструкции для модели ИИ по созданию списка строк |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для прикрепления |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | The quick brown fox jumps over the lazy dog. The transformation is complete. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Открывает поиск на IMDB для каждого результата |
| `-AudioTemperature` | Double | — | — | Named | — | Контролирует температуру для генерации аудио. |
| `-TemperatureResponse` | Double | — | — | Named | — | Управляет температурой генерации ответов. |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков CPU для обработки. |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления определенных выходных данных. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог обнаружения тишины в аудио. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф применяется к более длинным ответам. |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для генерации ответа. |
| `-LogProbThreshold` | Double | — | — | Named | — | Пороговое значение логарифмической вероятности для вывода. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Порог обнаружения отсутствия речи в аудио. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Препятствует произнесению ответа. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Предотвращает озвучивание мыслей модели. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Отключает VOX (голосовую активацию). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Используйте захват рабочего стола для ввода аудиосигнала. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Отключает контекст для запроса. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Применить стратегию выборки с лучевым поиском. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "Преобразованный текстовый вывод"
        }
      },
      "type": "object"
    }
  }
} |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова для вызовов инструментов. |

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)
