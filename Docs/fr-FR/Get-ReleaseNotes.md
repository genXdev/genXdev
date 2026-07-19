# Get-ReleaseNotes

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenotes

## Synopsis

> Displays ReleaseNotes from a README.md file.

## Description

Affiche toutes les ReleaseNotes de la section "## Release notes" d'un fichier README.md. Peut utiliser soit le README dans l'emplacement actuel, le répertoire de profil PowerShell, ou le répertoire OneDrive.

## Syntax

```powershell
Get-ReleaseNotes [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### ReleaseNotes -UseHomeREADME

```powershell
ReleaseNotes -UseHomeREADME
```

## Related Links

- [Get-ReleaseNotes on GitHub](https://github.com/genXdev/genXdev)
