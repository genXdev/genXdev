# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> Enciende la alimentación del monitor.

## Description

Utiliza la API de Windows a través de GenXdev.Helpers.WindowObj para activar el monitor desde el estado de suspensión/apagado. Esto es útil para scripts de automatización que necesitan asegurarse de que el monitor esté encendido.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Enciende la alimentación del monitor.

### Example 2

```powershell
wake-monitor
```

Enciende la alimentación del monitor usando un alias.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
