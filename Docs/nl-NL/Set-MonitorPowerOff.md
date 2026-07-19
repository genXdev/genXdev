# Set-MonitorPowerOff

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `poweroff

## Synopsis

> Schakelt de stroom naar alle aangesloten monitors uit.

## Description

Gebruikt Windows API-aanroepen om een uitschakelsignaal naar alle aangesloten monitoren te sturen. Dit is gelijk aan het indrukken van de fysieke aan/uit-knop op uw monitoren. De monitoren gaan in de energiebesparende modus, maar kunnen worden gewekt door de muis te bewegen of een toets in te drukken.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Schakelt alle aangesloten monitors uit.

### Example 2

```powershell
poweroff
```

Schakelt alle aangesloten monitors uit met behulp van het alias.

## Related Links

- [Set-MonitorPowerOff on GitHub](https://github.com/genXdev/genXdev)
