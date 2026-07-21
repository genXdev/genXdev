# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent en retourneert het totale aantal logische CPU-kernen in het systeem.

## Description

Voert een query uit op de systeemhardware via Windows Management Instrumentation (WMI) om het totale aantal logische CPU-kernen te bepalen. De functie houdt rekening met hyperthreading door het aantal fysieke kernen te vermenigvuldigen met 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Hiermee wordt het totale aantal logische CPU-kernen opgehaald.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-CpuAvx.md)
