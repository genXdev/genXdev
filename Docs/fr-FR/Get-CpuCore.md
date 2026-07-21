# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule et retourne le nombre total de cœurs de processeur logiques dans le système.

## Description

Interroge le matériel système via Windows Management Instrumentation (WMI) pour déterminer le nombre total de cœurs de processeur logiques. La fonction tient compte de l'hyperthreading en multipliant le nombre de cœurs physiques par 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Obtient le nombre total de cœurs logiques du processeur.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRTest-CpuAvx.md)
