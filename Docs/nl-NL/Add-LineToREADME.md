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
| `-Section` | String | ✅ | — | 1 | — | De sectie om de regel aan toe te voegen |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | Het voorvoegsel dat voor de regel moet worden gebruikt |
| `-Code` | SwitchParameter | — | — | Named | — | Open in Visual Studio Code na aanpassing |
| `-Show` | SwitchParameter | — | — | Named | — | Show the modified section |
| `-Done` | SwitchParameter | — | — | Named | — | Markeer het item als voltooid |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Gebruik README in de PowerShell-profielmap |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Gebruik README in OneDrive-directory |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
