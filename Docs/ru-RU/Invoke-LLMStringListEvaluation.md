# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `getlist, `getstring

## Synopsis

> Извлекает или генерирует список релевантных строк из входного текста с помощью ИИ-анализа.

## Description

Эта функция использует модели ИИ для анализа входного текста и извлечения или генерации списка релевантных строк. Она может обрабатывать текст для выявления ключевых моментов, извлечения элементов из списков или генерации связанных концепций. Входные данные могут быть предоставлены напрямую через параметры, из конвейера или из системного буфера обмена. Функция возвращает массив строк и, при необходимости, копирует результаты в буфер обмена.

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | {
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
| `-Instructions` | String | — | — | 1 | `''` | Инструкции для модели ИИ по созданию списка строк |
| `-Attachments` | String[] | — | — | 2 | `@()` | Массив путей к файлам для прикрепления |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Уровень детализации изображения |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Скопировать результат в буфер обмена |
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
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Не добавляйте мысли модели в историю разговора |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | The quick brown fox jumps over the lazy dog. The transformation is complete. |
| `-Speak` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Включить преобразование текста в речь для ответов ИИ |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Не хранить сессию в кэше сессии |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Включить инструменты по умолчанию для модели ИИ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature для случайности ответа аудио. |
| `-TemperatureResponse` | Double | — | — | Named | — | Температура для случайности текстового ответа. |
| `-Language` | String | — | — | Named | — | ru-RU |
| `-CpuThreads` | Int32 | — | — | Named | — | Количество потоков ЦП для использования. |
| `-SuppressRegex` | String | — | — | Named | — | Регулярное выражение для подавления определенных выходных данных. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Размер аудиоконтекста для обработки. |
| `-SilenceThreshold` | Double | — | — | Named | — | Порог тишины для обнаружения аудио. |
| `-LengthPenalty` | Double | — | — | Named | — | Штраф за длину для генерации последовательности. |
| `-EntropyThreshold` | Double | — | — | Named | — | Порог энтропии для фильтрации вывода. |
| `-LogProbThreshold` | Double | — | — | Named | — | Порог логарифмической вероятности для фильтрации вывода. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Нет порога речи для обнаружения аудио. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Отключить речевой вывод. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Используйте захват звука рабочего стола. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Применить стратегию выборки с лучевым поиском. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Ты — полезный помощник, предназначенный для вывода JSON. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальная длина обратного вызова для вызовов инструментов. |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Outputs

- `String[]`

## Related Links

- [Invoke-LLMStringListEvaluation on GitHub](https://github.com/genXdev/genXdev)
