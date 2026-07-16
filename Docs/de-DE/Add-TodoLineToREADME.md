# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | ✅ (ByValue) | 0 | `''` | The todo item text to add |
| `-Code` | SwitchParameter | — | — | Named | — | Öffne README in Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Die geänderte Sektion wird angezeigt. |
| `-Done` | SwitchParameter | — | — | Named | — | Todo-Artikel als erledigt markieren |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
