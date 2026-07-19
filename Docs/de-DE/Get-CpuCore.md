# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück.

## Description

Fragt die Systemhardware über Windows Management Instrumentation (WMI) ab, um die Gesamtanzahl der logischen CPU-Kerne zu ermitteln. Die Funktion berücksichtigt Hyperthreading, indem sie die physische Kernanzahl mit 2 multipliziert.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Gibt die Gesamtanzahl der logischen CPU-Kerne zurück.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
