# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Teste si le processeur prend en charge les jeux d'instructions AVX et AVX2.

## Description

* Vérifie si le processeur prend en charge les jeux d'instructions AVX et AVX2 en utilisant l'API Windows (kernel32.dll IsProcessorFeaturePresent).
* Renvoie un objet avec les propriétés booléennes AVX et AVX2.
* Utile pour déterminer la compatibilité matérielle pour les charges de travail IA/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Vérifie la prise en charge du jeu d'instructions CPU et retourne la disponibilité d'AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-NumberOfCpuCores.md)
