# New-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `newrefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Название этого нового набора рефакторинга |
| `-PromptKey` | String | ✅ | — | 1 | — | Ключ подсказки указывает, какой сценарий подсказки использовать |
| `-Prompt` | String | — | — | 2 | `''` | Текст пользовательского промпта для переопределения шаблона |
| `-SelectionScript` | String | — | — | 3 | — | Сценарий PowerShell для выбора элементов для рефакторинга |
| `-SelectionPrompt` | String | — | — | 4 | — | Руководство по выбору LLM |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Выбор конфигурации в зависимости от доступной системной оперативной памяти |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Выберите конфигурацию в зависимости от доступной памяти GPU |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-Priority` | Int32 | — | — | Named | `0` | Приоритет для данного рефакторинга установлен |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Here's an array of PowerShell command definitions for LLM tools, each as a JSON object with `command`, `description`, and `parameters` fields. |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | Array of files to process |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | Будет автоматически добавлять изменённые файлы в очередь |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Code` | SwitchParameter | — | — | Named | — | Открывать файлы в Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Открыть в Visual Studio |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Клавиатурные комбинации для отправки после открытия файлов |

## Related Links

- [New-Refactor on GitHub](https://github.com/genXdev/genXdev)
