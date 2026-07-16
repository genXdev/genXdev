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
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | The name of the refactor, accepts wildcards 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Filenames to add |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Filenames to remove |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | 3 | — | Clean up deleted files |
| `-Reset` | SwitchParameter | — | — | Named | — | Start from the beginning of the refactor set |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Restart all LLM selections |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-Speak` | SwitchParameter | — | — | Named | — | Speak out the details of next refactor |

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
