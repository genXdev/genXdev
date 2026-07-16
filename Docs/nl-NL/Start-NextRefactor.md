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
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | De naam van de refactor, accepteert wildcards 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Te verwerken bestanden |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Filenamen om te verwijderen |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | 3 | — | Opruimen van verwijderde bestanden |
| `-Reset` | SwitchParameter | — | — | Named | — | Start from the beginning of the refactor set |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Herstart alle LLM-selecties |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Markeer alle bestanden als gerefactord |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-Speak` | SwitchParameter | — | — | Named | — | Alright, let's outline the next refactor. Focus on extracting the user authentication logic into a dedicated service module. Create a new file 'authService.js' to handle login, logout, and token validation. Then, update the existing controller to delegate these operations to the service. Also, centralize error handling in a middleware. This will improve separation of concerns and testability. |

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
