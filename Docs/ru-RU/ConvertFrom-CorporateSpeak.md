# ConvertFrom-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `uncorporatize

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ConvertFrom-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The text to convert from corporate speak |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для прикрепления |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the enhanced text to clipboard |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | {
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
| `-ContinueLast` | SwitchParameter | — | — | Named | — | The quick brown fox jumps over the lazy dog. The transformation is complete. |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Разрешить использование стандартных AI-инструментов во время обработки |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для случайности аудиоответа (передается в LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для генерации ответа (передаётся в LLMQuery) |
| `-Language` | String | — | — | Named | — | Код или название языка для обработки (передается в LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков CPU для использования (передается в LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления вывода (передается в LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки (передается в LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обнаружения аудио (передается в LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину при генерации последовательности (передается в LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для фильтрации выходных данных (передается в LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Порог логарифмической вероятности для фильтрации вывода (передается в LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Порог отсутствия речи для обнаружения аудио (передается в LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Отключить речевой вывод (передан в LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts (passed to LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) (passed to LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture (passed to LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Отключить использование контекста (передается в LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Включить стратегию семплирования с лучевым поиском (передается в LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Возвращать только ответы (переданные в LLMQuery) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks (passed to LLMQuery) |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова инструмента (передается в LLMQuery) |

## Outputs

- `String`

## Related Links

- [ConvertFrom-CorporateSpeak on GitHub](https://github.com/genXdev/genXdev)
