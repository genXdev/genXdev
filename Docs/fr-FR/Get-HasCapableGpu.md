# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Détermine si un GPU compatible CUDA avec suffisamment de mémoire est présent.

## Description

Vérifie si le système dispose de GPU compatibles CUDA avec au moins 4 Go de RAM vidéo. Il utilise Windows Management Instrumentation (WMI) pour interroger les contrôleurs vidéo installés et vérifier leur capacité mémoire. Cette vérification est essentielle pour les charges de travail d'IA nécessitant une mémoire GPU importante.

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

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
