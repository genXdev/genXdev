# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet und gibt die Gesamtzahl der logischen CPU-Kerne im System zurück.

## Description

Fragt die Systemhardware über Windows-Verwaltungsinstrumentation (WMI) ab, um die Gesamtzahl der logischen CPU-Kerne zu ermitteln. Das Cmdlet berücksichtigt Hyperthreading, indem es die Anzahl der physischen Kerne mit 2 multipliziert. Diese Informationen sind nützlich für die Optimierung von parallelen Verarbeitungsaufgaben und zum Verständnis der Systemfähigkeiten.

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

Ruft die Gesamtzahl der logischen CPU-Kerne ab, die auf dem System verfügbar sind.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-CpuAvx.md)
