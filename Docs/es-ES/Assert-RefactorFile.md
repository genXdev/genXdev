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
| `-Path` | String | ✅ | — | 0 | — | La ruta al archivo fuente para mejorar |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | La definición de refactorización que contiene la configuración y la plantilla de prompt |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)
