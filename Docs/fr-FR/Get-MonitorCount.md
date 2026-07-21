# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le nombre total de moniteurs d'affichage connectés au système.

## Description

* Utilise la classe d’assistance WPF (Windows Presentation Foundation) pour déterminer avec précision le nombre de moniteurs d’affichage physiques actuellement connectés au système.
* Cela inclut les moniteurs actifs et ceux détectés mais désactivés.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Retourne le nombre total de moniteurs connectés (par exemple 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Retourne le nombre de moniteurs avec une sortie détaillée montrant le processus de détection.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRTest-CpuAvx.md)
