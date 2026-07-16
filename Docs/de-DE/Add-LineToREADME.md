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
| `-Section` | String | ✅ | — | 1 | — | Der Abschnitt, dem die Zeile hinzugefügt werden soll |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | Der für die Zeile zu verwendende Präfix |
| `-Code` | SwitchParameter | — | — | Named | — | Open in Visual Studio Code after modifying |
| `-Show` | SwitchParameter | — | — | Named | — | Die geänderte Sektion wird angezeigt. |
| `-Done` | SwitchParameter | — | — | Named | — | Mark the item as completed |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
