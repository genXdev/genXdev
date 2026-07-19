# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the total number of display monitors connected to the system.

## Description

* Uses the Windows Presentation Foundation (WPF) Screen helper class to
  accurately determine the number of physical display monitors currently
  connected to the system.
* This includes both active and detected but disabled monitors.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Returns the total number of connected monitors (e.g. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Returns monitor count with verbose output showing detection process.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
