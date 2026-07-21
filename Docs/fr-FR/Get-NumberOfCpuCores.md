# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule et retourne le nombre total de cœurs de processeur logiques dans le système.

## Description

Interroge le matériel système via Windows Management Instrumentation (WMI) pour déterminer le nombre total de cœurs logiques du processeur. L'applet de commande prend en compte l'hyperthreading en multipliant le nombre de cœurs physiques par 2. Ces informations sont utiles pour optimiser les tâches de traitement parallèle et comprendre les capacités du système.

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

Récupère le nombre total de cœurs CPU logiques disponibles sur le système.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRTest-CpuAvx.md)
