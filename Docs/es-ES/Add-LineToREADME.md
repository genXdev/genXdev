# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-LineToREADME [[-Line] <String>] -Section <String> -Prefix <String> [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 1 | — | La sección a la que agregar la línea |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | El prefijo a usar para la línea |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio Code después de modificar |
| `-Show` | SwitchParameter | — | — | Named | — | Mostra la secció modificada |
| `-Done` | SwitchParameter | — | — | Named | — | Mark the item as completed |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
