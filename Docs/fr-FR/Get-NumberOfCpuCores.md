# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule et retourne le nombre total de cœurs CPU logiques dans le système.

## Description

Interroge le matériel système via Windows Management Instrumentation (WMI) pour déterminer le nombre total de cœurs logiques du processeur. L'applet de commande tient compte de l'hyperthreading en multipliant le nombre de cœurs physiques par 2. Cette information est utile pour optimiser les tâches de traitement parallèle et comprendre les capacités du système.

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

Récupère le nombre total de cœurs logiques CPU disponibles sur le système.

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
