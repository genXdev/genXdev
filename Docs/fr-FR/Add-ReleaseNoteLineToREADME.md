# Add-ReleaseNoteLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenote

## Synopsis

> Ajoute une ligne ReleaseNote au fichier README avec un horodatage.

## Description

Ajoute une ligne de ReleaseNote au fichier README spécifié, préfixée par la date actuelle au format yyyyMMdd. La ligne peut être formatée en code et éventuellement affichée.

## Syntax

```powershell
Add-ReleaseNoteLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The ReleaseNote description text to add |
| `-Code` | SwitchParameter | — | — | Named | — | ```
X=random|death
``` |
| `-Show` | SwitchParameter | — | — | Named | — | README.md

# Project Title

## Description

This is a sample README file.

## Installation

```bash
npm install
```

## Usage

```bash
npm start
``` |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utilisez le README dans le répertoire personnel |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Utilisez le README dans le répertoire OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Priorité pour le tri (plus élevé = affiché en premier, défaut 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Trier les lignes par date (préfixe aaaammjj) au lieu de la priorité |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverser l'ordre de tri (croissant au lieu de décroissant) |
| `-First` | Int32 | — | — | Named | `0` | Limite - Afficher la sortie sur les N premières lignes |

## Examples

### Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"

```powershell
Add-ReleaseNoteLineToREADME -Line "Added new Git ReleaseNote"
```

### ReleaseNote "Added new Git ReleaseNote" -Code -Show

```powershell
ReleaseNote "Added new Git ReleaseNote" -Code -Show
```

## Related Links

- [Add-ReleaseNoteLineToREADME on GitHub](https://github.com/genXdev/genXdev)
