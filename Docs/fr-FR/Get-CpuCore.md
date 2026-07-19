# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule et retourne le nombre total de cœurs CPU logiques dans le système.

## Description

Interroge le matériel système via Windows Management Instrumentation (WMI) pour déterminer le nombre total de cœurs logiques du processeur. La fonction tient compte de l'hyperthreading en multipliant le nombre de cœurs physiques par 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Obtient le nombre total de cœurs de CPU logiques.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
