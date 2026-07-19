# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> Schaltet die Monitorstromversorgung ein.

## Description

Verwendet die Windows-API über GenXdev.Helpers.WindowObj, um den Monitor aus dem Schlaf-/Energiesparmodus aufzuwecken. Dies ist nützlich für Automatisierungsskripts, die sicherstellen müssen, dass der Monitor eingeschaltet ist.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Schaltet die Monitorstromversorgung ein.

### Example 2

```powershell
wake-monitor
```

Schaltet die Monitoreinschaltfunktion mit einem Alias ein.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
