# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> Schakelt de monitor in.

## Description

Maakt gebruik van de Windows API via GenXdev.Helpers.WindowObj om de monitor uit de slaap-/uitgeschakelde status te wekken. Dit is nuttig voor automatisering scripts die ervoor moeten zorgen dat de monitor is ingeschakeld.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Schakelt de monitor in.

### Example 2

```powershell
wake-monitor
```

Schakelt de monitor in met behulp van een alias.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
