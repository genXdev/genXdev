# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Текст запроса для отправки модели |
| `-Instructions` | String | — | — | 1 | — | Системные инструкции для модели |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для прикрепления |
| `-ResponseFormat` | String | — | — | Named | — | {"type": "json_schema", "json_schema": {"name": "text_transformation_response", "strict": true, "schema": {"required": ["response"], "properties": {"response": {"type": "string", "description": "The transformed text output"}}, "type": "object"}}} |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Инструментальные функции, не требующие подтверждения пользователя |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-AudioTemperature` | Double | — | — | Named | — | Температура для случайности генерации аудио |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для случайности ответа (аудиочат) |
| `-Language` | String | — | — | Named | — | Language code or name for audio chat |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков ЦП, используемых для аудиочата |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления определенных выводов в аудиочате |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для голосового чата |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для аудиочата |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину для аудиоответов в чате |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для аудиочата |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for audio chat |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Нет порога речи для аудиочата |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Не воспроизводите аудиоответы |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Не думай вслух |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) for audio chat |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Использовать захват звука рабочего стола для аудиочата |
| `-NoContext` | SwitchParameter | — | — | Named | — | Отключить контекст для аудиочата |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for audio chat |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Вулкан игра — это увлекательное приключение, которое захватывает с первых минут. |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Исключить мыслительные процессы из истории разговора |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | The quick brown fox jumps over the lazy dog. The transformation is complete. |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Будет выводить только ответы в виде блоков разметки |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Will only output markup blocks of the specified types |
| `-ChatMode` | String | — | — | Named | — | Режим чата включен. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Используется внутренне для вызова режима чата только один раз после вызова LLM |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Максимальная длина вывода обратного вызова инструмента в символах. Вывод, превышающий эту длину, будет обрезан с предупреждением. По умолчанию — 100000 символов. |

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)
