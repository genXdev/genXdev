# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Checks if Windows is up to date and optionally installs available updates.

## Description

This function checks for Windows updates, winget package updates, and PowerShell
module updates. It can display available updates or automatically install them.
The function requires administrative privileges to install Windows updates and
can optionally reboot the system if updates require a restart.

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

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Checks for available Windows and winget updates without installing them.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Automatically installs all available Windows and winget updates.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Installs all updates and reboots automatically if required using the alias.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Displays available updates grouped by category for better organization.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Checks for updates including drivers with custom search criteria.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
