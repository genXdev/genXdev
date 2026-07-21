# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ermittelt, ob eine CUDA-fähige GPU mit ausreichendem Arbeitsspeicher vorhanden ist.

## Description

Überprüft das System auf CUDA-kompatible GPUs mit mindestens 4 GB Videospeicher. Verwendet Windows Management Instrumentation (WMI), um installierte Videocontroller abzufragen und deren Speicherkapazität zu überprüfen. Diese Prüfung ist für KI-Workloads erforderlich, die einen erheblichen GPU-Speicher benötigen.

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

Überprüft, ob das System eine CUDA-fähige GPU mit ausreichend Speicher hat.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-CpuAvx.md)
