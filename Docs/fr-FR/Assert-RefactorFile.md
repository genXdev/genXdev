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
| `-Path` | String | ✅ | — | 0 | — | Le chemin vers le fichier source à améliorer |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | La définition de refactorisation contenant les paramètres et le modèle de prompt |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)
