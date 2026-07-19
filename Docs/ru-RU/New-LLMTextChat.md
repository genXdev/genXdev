# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> Запускает интерактивный текстовый чат с возможностями ИИ.

## Description

Инициирует интерактивный чат с возможностями ИИ, позволяя пользователям добавлять или удалять функции PowerShell во время разговора и выполнять команды PowerShell. Эта функция предоставляет комплексный интерфейс для бесед с поддержкой ИИ, обширной интеграцией инструментов и настройкой.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Текст запроса для отправки модели *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | Системные инструкции для модели |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для прикрепления |
| `-Temperature` | Double | — | — | 3 | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-ResponseFormat` | String | — | — | Named | `$null` | {"type": "json_schema", "json_schema": {"name": "text_transformation_response", "strict": true, "schema": {"required": ["response"], "properties": {"response": {"type": "string", "description": "The transformed text output"}}, "type": "object"}}} |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Массив определений команд PowerShell для использования в качестве инструментов |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Will only output markup blocks of the specified types |
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
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Будет выводить только ответы в виде блоков разметки |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Используется внутренне для вызова режима чата только один раз после вызова LLM *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Имена функций инструментов, которые не должны требовать подтверждения |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина ответов на обратные вызовы инструментов |
| `-AudioTemperature` | Object | — | — | Named | — | Температура для генерации звука |
| `-TemperatureResponse` | Object | — | — | Named | — | Температура для генерации ответа |
| `-Language` | Object | — | — | Named | — | Язык для модели или вывода |
| `-CpuThreads` | Object | — | — | Named | — | Количество потоков ЦП для использования |
| `-SuppressRegex` | Object | — | — | Named | — | Регулярное выражение для подавления вывода |
| `-AudioContextSize` | Object | — | — | Named | — | Размер аудио контекста для обработки |
| `-SilenceThreshold` | Object | — | — | Named | — | Порог тишины для обработки аудио |
| `-LengthPenalty` | Object | — | — | Named | — | Штраф за длину при генерации последовательности |
| `-EntropyThreshold` | Object | — | — | Named | — | Порог энтропии для фильтрации вывода |
| `-LogProbThreshold` | Object | — | — | Named | — | Log probability threshold for output filtering |
| `-NoSpeechThreshold` | Object | — | — | Named | — | Отсутствие порога речи для обнаружения аудио |
| `-DontSpeak` | Object | — | — | Named | — | Отключить вывод речи |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | Object | — | — | Named | — | Отключить VOX (голосовую активацию) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Используйте захват звука рабочего стола |
| `-NoContext` | Object | — | — | Named | — | Disable context usage |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use beam search sampling strategy |
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

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)
