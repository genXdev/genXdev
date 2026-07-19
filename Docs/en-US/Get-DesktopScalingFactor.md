# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retrieves the Windows display scaling factor (DPI setting) for a specified
monitor.

## Description

* Gets the current Windows display scaling factor configured for a monitor
  in the system.
* The scaling factor is expressed as a percentage where 100 represents
  standard scaling (96 DPI). Common values are 100, 125, 150, and 200.
* If no monitor is specified, returns the scaling factor for the primary
  display.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | The monitor index to check (0 = primary monitor) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

Returns the scaling factor percentage for the primary monitor.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

Returns the scaling factor percentage for the second monitor using positional
parameter.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
