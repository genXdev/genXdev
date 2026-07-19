# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature

## Synopsis

> Ajoute une ligne de fonctionnalité au fichier README avec un horodatage.

## Description

Ajoute une ligne de fonctionnalité au fichier README spécifié, précédée de la date actuelle au format aaaaMMjj. La ligne peut être formatée comme du code et éventuellement affichée.

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The feature description text to add |
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

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Related Links

- [Add-FeatureLineToREADME on GitHub](https://github.com/genXdev/genXdev)
