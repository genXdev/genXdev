# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> Creates an interactive audio chat session with an LLM model.

## Description

Инициирует голосовой диалог с языковой моделью, поддерживая аудиоввод и аудиовывод. Функция обрабатывает запись аудио, транскрипцию, запросы к модели и синтез речи. Поддерживает несколько языковых моделей и различные параметры конфигурации, включая управление окнами, ускорение GPU и расширенные функции обработки аудио.

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Initial query text to send to the model |
| `-Instructions` | String | — | — | 1 | — | Системные инструкции для модели |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для прикрепления |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Тип модели Whisper для использования, по умолчанию LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Температура для распознавания аудиовхода (0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | Параметр температуры для контроля случайности ответа. |
| `-LanguageIn` | String | — | — | Named | — | Устанавливает язык для обнаружения |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Количество потоков ЦП для использования, по умолчанию 0 (авто) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Порог обнаружения тишины (0..32767, по умолчанию 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Штраф за длину |
| `-EntropyThreshold` | Single | — | — | Named | — | Энтропийный порог |
| `-LogProbThreshold` | Single | — | — | Named | — | Порог логарифмической вероятности |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Порог речи отсутствует |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-ResponseFormat` | String | — | — | Named | `$null` | {"type": "json_schema", "json_schema": {"name": "text_transformation_response", "strict": true, "schema": {"required": ["response"], "properties": {"response": {"type": "string", "description": "The transformed text output"}}, "type": "object"}}} |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Will only output markup blocks of the specified types |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-Functions` | ScriptBlock[] | — | — | Named | — | Массив ScriptBlock инструментов, которые будут доступны LLM (проксируются в Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array of tool function names that do not require confirmation (pass-through to Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Chat mode for LLM query (pass-through to Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова инструмента (передача в Invoke-LLMQuery) |
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
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable text-to-speech for AI responses |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable text-to-speech for AI thought responses |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Не используйте обнаружение тишины для автоматической остановки записи. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-AudioDevice` | String | — | — | Named | — | Имя аудиоустройства или GUID (поддерживаются маски, выбирается первое совпадение) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Используйте как настольное устройство, так и записывающее устройство |
| `-NoContext` | SwitchParameter | — | — | Named | — | Не используйте контекст |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Подавлять ли распознанный текст в выводе |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Будет выводить только ответы в виде блоков разметки |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)
