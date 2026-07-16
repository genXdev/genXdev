# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Automatically install available Windows updates |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Automatically reboot if updates require a restart |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Custom Windows Update search criteria |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Include drivers in update search |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Group and color output by update category |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Disable banner/status output |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Skip reboot requirement check/reporting |

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
