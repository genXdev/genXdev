# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> Включает питание монитора.

## Description

Использует Windows API через GenXdev.Helpers.WindowObj для вывода монитора из спящего/выключенного состояния. Это полезно для скриптов автоматизации, которым необходимо убедиться, что монитор включен.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Включает питание монитора.

### Example 2

```powershell
wake-monitor
```

Включает питание монитора с помощью псевдонима.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
