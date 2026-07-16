# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | The script to execute and analyze for errors |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object | — | — | Named | — | Attachments to include in the LLM query. |
| `-ImageDetail` | Object | — | — | Named | — | Уровень детализации изображения для запроса LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | Время жизни в секундах для запроса LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | {
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
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | Filter for markup block types in the LLM response. |
| `-ChatOnce` | Object | — | — | Named | — | Запустить чат только один раз для запроса LLM. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Максимальная длина обратного вызова инструмента для запроса LLM. |
| `-AudioTemperature` | Object | — | — | Named | — | Температура для генерации аудио. |
| `-TemperatureResponse` | Object | — | — | Named | — | Температура для генерации ответа. |
| `-Language` | Object | — | — | Named | — | Язык для запроса LLM. |
| `-CpuThreads` | Object | — | — | Named | — | Количество потоков ЦП для использования. |
| `-SuppressRegex` | Object | — | — | Named | — | Regex to suppress output. |
| `-AudioContextSize` | Object | — | — | Named | — | Размер аудиоконтекста для запроса LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | Порог тишины для обработки аудио. |
| `-LengthPenalty` | Object | — | — | Named | — | Штраф за длину для вывода LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | Порог энтропии для вывода LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | Порог логарифмической вероятности для вывода LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Нет порога речи для обработки аудио. |
| `-DontSpeak` | Object | — | — | Named | — | Не воспроизводить аудио. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Вы — полезный ассистент, предназначенный для вывода JSON. |
| `-NoVOX` | Object | — | — | Named | — | Disable VOX for audio output. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Используйте захват звука рабочего стола. |
| `-NoContext` | Object | — | — | Named | — | Не используйте контекст для запроса LLM. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Применить стратегию выборки с лучевым поиском. |
| `-OnlyResponses` | Object | — | — | Named | — | {
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

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)
