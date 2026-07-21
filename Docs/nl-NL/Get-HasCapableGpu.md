# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bepaalt of er een CUDA-capabele GPU met voldoende geheugen aanwezig is.

## Description

Controleert het systeem op CUDA-compatibele GPU's met minimaal 4 GB videogeheugen. Het maakt gebruik van Windows Management Instrumentation (WMI) om geïnstalleerde videocontrollers op te vragen en hun geheugencapaciteit te verifiëren. Deze controle is essentieel voor AI-workloads die aanzienlijk GPU-geheugen vereisen.

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

Controleert of het systeem een CUDA-compatibele GPU met voldoende geheugen heeft.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-CpuAvx.md)
