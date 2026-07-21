# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent en retourneert het totale aantal logische CPU-kernen in het systeem.

## Description

Bevraagt de systeemhardware via Windows Management Instrumentation (WMI) om het totale aantal logische CPU-kernen te bepalen. De cmdlet houdt rekening met hyperthreading door het aantal fysieke kernen te vermenigvuldigen met 2. Deze informatie is nuttig voor het optimaliseren van parallelle verwerkingstaken en het begrijpen van systeemmogelijkheden.

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

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-CpuAvx.md)
