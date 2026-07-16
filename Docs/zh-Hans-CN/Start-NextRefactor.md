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
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | 重构的名称，接受通配符 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | 要添加的文件名 |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | 要移除的文件名 |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | 3 | — | 清理已删除的文件 |
| `-Reset` | SwitchParameter | — | — | Named | — | 从重构集的开头开始 |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | 重新启动所有LLM选择 |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | 将所有文件标记为已重构 |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-Speak` | SwitchParameter | — | — | Named | — | 说出下一次重构的细节 |

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
