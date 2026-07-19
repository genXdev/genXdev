# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> Turns off power to all connected monitors.

## Description

Uses Windows API calls to send a power-off signal to all connected monitors. This is equivalent to pressing the physical power button on your monitors. The monitors will enter power saving mode but can be awakened by moving the mouse or pressing a key.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Turns off all connected monitors.

### Example 2

```powershell
poweroff
```

Turns off all connected monitors using the alias.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
