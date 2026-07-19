# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent en retourneert het totale aantal logische CPU-kernen in het systeem.

## Description

Vraagt de systeemhardware op via Windows Management Instrumentation (WMI) om het totale aantal logische CPU-kernen te bepalen. De cmdlet houdt rekening met hyperthreading door het fysieke aantal kernen te vermenigvuldigen met 2. Deze informatie is nuttig voor het optimaliseren van parallelle verwerkingstaken en het begrijpen van systeemcapaciteiten.

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

Haalt het totale aantal logische CPU-kernen op dat beschikbaar is op het systeem.

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
