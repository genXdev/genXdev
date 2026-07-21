# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück.

## Description

Fragt die Systemhardware über Windows-Verwaltungsinstrumentation (WMI) ab, um die Gesamtzahl der logischen CPU-Kerne zu ermitteln. Die Funktion berücksichtigt Hyperthreading, indem sie die physische Kernanzahl mit 2 multipliziert.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Ruft die Gesamtanzahl der logischen CPU-Kerne ab.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-CpuAvx.md)
