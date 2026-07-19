# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> Turns the monitor power on.

## Description

Uses the Windows API through GenXdev.Helpers.WindowObj to wake up the monitor from sleep/power off state. This is useful for automation scripts that need to ensure the monitor is powered on.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Turns the monitor power on.

### Example 2

```powershell
wake-monitor
```

Turns the monitor power on using an alias.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
