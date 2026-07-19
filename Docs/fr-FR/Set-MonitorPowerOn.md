# Set-MonitorPowerOn

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `wakemonitor, `monitoroff

## Synopsis

> Allume l'écran.

## Description

Utilise l'API Windows via GenXdev.Helpers.WindowObj pour réveiller le moniteur de l'état de veille/extinction. Utile pour les scripts d'automatisation qui doivent s'assurer que le moniteur est allumé.

## Syntax

```powershell
Set-MonitorPowerOn [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOn
```

Allume l'écran.

### Example 2

```powershell
wake-monitor
```

Allume le moniteur via un alias.

## Related Links

- [Set-MonitorPowerOn on GitHub](https://github.com/genXdev/genXdev)
