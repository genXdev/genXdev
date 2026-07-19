# Get-Issues

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issues

## Synopsis

> Displays issues from a README.md file.

## Description

Affiche tous les problèmes de la section « ## Issues » d'un fichier README.md. Peut utiliser soit le README dans l'emplacement actuel, le répertoire du profil PowerShell, ou le répertoire OneDrive.

## Syntax

```powershell
Get-Issues [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utiliser README dans le répertoire du profil PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Utilisez le README dans le répertoire OneDrive |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Trier les lignes par date (préfixe aaaammjj) au lieu de la priorité |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverser l'ordre de tri (croissant au lieu de décroissant) |
| `-First` | Int32 | — | — | 0 | `0` | Limiter la sortie aux N premières lignes |

## Examples

### Issues -UseHomeREADME

```powershell
Issues -UseHomeREADME
```

### Issues -UseOneDriveREADME

```powershell
Issues -UseOneDriveREADME
```

## Related Links

- [Get-Issues on GitHub](https://github.com/genXdev/genXdev)
