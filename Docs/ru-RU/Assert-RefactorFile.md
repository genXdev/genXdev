# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | Путь к исходному файлу для улучшения |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | The refactor definition containing settings and prompt template |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)
