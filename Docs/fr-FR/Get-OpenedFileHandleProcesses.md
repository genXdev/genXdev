# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Récupère les processus qui ont des descripteurs de fichiers ouverts vers les fichiers spécifiés.

## Description

* Utilise l'outil handle.exe de Sysinternals pour identifier les processus qui
  ont actuellement des handles ouverts sur un ou plusieurs fichiers spécifiés.
* Utile pour déterminer quels processus empêchent les opérations sur les fichiers
  comme la suppression ou la modification.
* Nécessite que handle.exe de la suite Sysinternals soit installé et
  disponible dans le chemin système.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le chemin vers le(s) fichier(s) à vérifier pour les handles ouverts |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Identifie tous les processus qui ont des handles ouverts vers le fichier spécifié.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Vérifie plusieurs fichiers via l'entrée du pipeline pour les processus ayant des handles ouverts.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
