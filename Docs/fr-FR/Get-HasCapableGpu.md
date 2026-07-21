# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Détermine si un GPU compatible CUDA avec une mémoire suffisante est présent.

## Description

Vérifie la présence de GPU compatibles CUDA avec au moins 4 Go de mémoire vidéo. Il utilise Windows Management Instrumentation (WMI) pour interroger les contrôleurs vidéo installés et vérifier leur capacité mémoire. Cette vérification est essentielle pour les charges de travail d'IA qui nécessitent une mémoire GPU importante.

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

Vérifie si le système dispose d'un GPU compatible CUDA avec une mémoire suffisante.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRTest-CpuAvx.md)
