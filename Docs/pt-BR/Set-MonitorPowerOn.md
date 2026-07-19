# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> Liga a energia do monitor.

## Description

Usa a API do Windows por meio do GenXdev.Helpers.WindowObj para ativar o monitor do estado de suspensão/desligamento. Isso é útil para scripts de automação que precisam garantir que o monitor esteja ligado.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Liga a energia do monitor.

### Example 2

```powershell
wake-monitor
```

Liga a energia do monitor usando um alias.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
