# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> Met à jour les métadonnées EXIF pour les images d'un répertoire.

## Description

Cette fonction extrait et met à jour les métadonnées EXIF pour les images dans les répertoires spécifiés.
Elle traite chaque image pour extraire des métadonnées EXIF détaillées comprenant les détails de l'appareil photo,
les coordonnées GPS, les paramètres d'exposition et d'autres informations techniques. Les métadonnées
sont stockées dans des flux NTFS alternatifs sous la forme :EXIF.json pour une utilisation ultérieure par les fonctions
d'indexation et de recherche.

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Tableau des chemins de répertoires à traiter pour les mises à jour des métadonnées d'image |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Réessayer les mises à jour de métadonnées d'image qui ont précédemment échoué |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Traiter uniquement les images qui n'ont pas déjà de fichiers de métadonnées |
| `-Recurse` | SwitchParameter | — | — | Named | — | Si spécifié, traite les images dans les sous-répertoires de manière récursive |
| `-Force` | SwitchParameter | — | — | Named | — | Forcer la reconstruction des métadonnées même si elles existent déjà |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retourner des objets structurés au lieu d'afficher dans la console |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | N'utilisez pas les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |

## Examples

### Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force

```powershell
Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force
```

### Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv

```powershell
Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv
```

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
