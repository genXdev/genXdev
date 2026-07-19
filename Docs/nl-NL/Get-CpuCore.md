# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent en retourneert het totale aantal logische CPU-kernen in het systeem.

## Description

Vraagt de systeemhardware op via Windows Management Instrumentation (WMI) om het totale aantal logische CPU-kernen te bepalen. De functie houdt rekening met hyperthreading door het fysieke aantal kernen te vermenigvuldigen met 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Haalt het totale aantal logische CPU-kernen op.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
