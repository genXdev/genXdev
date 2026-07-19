# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> Обновляет и управляет наборами рефакторинга, включая выбор и обработку файлов.

## Description

Обеспечивает комплексное управление наборами рефакторинга путем:
- Добавления или удаления файлов из очередей обработки
- Очистки удаленных файлов из набора
- Управления информацией о состоянии и отслеживания прогресса
- Обработки выбора файлов на основе LLM и их обработки
- Поддержки как автоматического, так и ручного управления файлами
- Ведения подробных журналов всех операций
- Корректной обработки удаленных файлов (пропускаются, если не используется CleanUpDeletedFiles)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Название рефакторинга, принимает подстановочные знаки *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | Набор рефакторинга для обновления *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Filenames to add |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Filenames to remove |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Выберите файлы по дате изменения из |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Выберите файлы по дате изменения, чтобы |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Select files by creation date from |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Выберите файлы по дате создания, чтобы |
| `-PromptKey` | String | — | — | Named | — | Ключ подсказки указывает, какой сценарий подсказки использовать |
| `-Prompt` | String | — | — | Named | `''` | Ключ подсказки указывает, какой сценарий подсказки использовать |
| `-SelectionScript` | String | — | — | Named | — | Функция PowerShell для выбора элементов для рефакторинга |
| `-SelectionPrompt` | String | — | — | Named | — | Если указано, будет вызвана LLM для выполнения выбора на основе содержимого скрипта |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | Тип запроса LLM |
| `-Model` | String | — | — | Named | — | Идентификатор или шаблон модели для использования в AI-операциях |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для случайности ответа (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | URL конечной точки API для операций ИИ |
| `-ApiKey` | String | — | — | Named | — | Ключ API для аутентифицированных операций ИИ |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания в секундах для операций ИИ |
| `-Priority` | Int32 | — | — | Named | — | Приоритет для данного рефакторинга установлен |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов при выборе LLM |
| `-KeysToSend` | String[] | — | — | Named | `@()` | The keys to invoke as key strokes after opening the file |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Очистить удаленные файлы |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Переключатель для подавления взаимодействия с пользователем |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Включить обработку выбора файлов на основе LLM |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Switch to process all files in the refactor set |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Переключить на повтор неудачных выборов LLM |
| `-Clear` | SwitchParameter | — | — | Named | — | Очистить все файлы из набора рефакторинга |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Очистить журнал набора рефакторинга |
| `-Reset` | SwitchParameter | — | — | Named | — | Начните с начала набора рефакторинга |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Перезапуск всех LLM-выборок |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Пометить все файлы как реорганизованные |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Автоматически переобрабатывать файлы, измененные с момента последнего обновления |
| `-Code` | SwitchParameter | — | — | Named | — | Иде, чтобы открыть файл в |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Открыть в Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | The next refactor will focus on extracting the validation logic from the PaymentController into a dedicated validation service. This improves separation of concerns and testability. Steps: 1. Create a new PaymentValidationService class. 2. Move the existing validation rules (e.g., amount > 0, currency is supported) into this service. 3. Inject the service into the controller. 4. Update the controller to delegate validation. 5. Write unit tests for the validation service. |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Выбор конфигурации в зависимости от доступной системной оперативной памяти |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Выберите конфигурацию в зависимости от доступной памяти GPU |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
```

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)
