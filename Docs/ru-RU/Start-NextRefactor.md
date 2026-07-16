# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Название рефакторинга, принимает подстановочные знаки 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Filenames to add |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Filenames to remove |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | 3 | — | Очистить удаленные файлы |
| `-Reset` | SwitchParameter | — | — | Named | — | Начните с начала набора рефакторинга |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Перезапустить все выборы LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Пометить все файлы как реорганизованные |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-Speak` | SwitchParameter | — | — | Named | — | The next refactor will focus on extracting the validation logic from the PaymentController into a dedicated validation service. This improves separation of concerns and testability. Steps: 1. Create a new PaymentValidationService class. 2. Move the existing validation rules (e.g., amount > 0, currency is supported) into this service. 3. Inject the service into the controller. 4. Update the controller to delegate validation. 5. Write unit tests for the validation service. |

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
