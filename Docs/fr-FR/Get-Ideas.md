# Get-Ideas

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `ideas

## Synopsis

> Affiche les idées d'un fichier README.md.

## Description

Affiche toutes les idées de la section "## Ideas" d'un fichier README.md. Peut utiliser soit le README dans le répertoire actuel, le répertoire du profil PowerShell, ou le répertoire OneDrive.

## Syntax

```powershell
Get-Ideas [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### Ideas -UseHomeREADME

```powershell
Ideas -UseHomeREADME
```

### Ideas -UseOneDriveREADME

```powershell
Ideas -UseOneDriveREADME
```

## Related Links

- [Get-Ideas on GitHub](https://github.com/genXdev/genXdev)
