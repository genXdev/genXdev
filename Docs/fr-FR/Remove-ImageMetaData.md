# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> Supprime les fichiers de métadonnées d'image des répertoires d'images.

## Description

La fonction Remove-ImageMetaData supprime les fichiers de métadonnées JSON associés aux images. Elle peut supprimer sélectivement uniquement les mots-clés (description.json), les données de personnes (people.json), les données d'objets (objects.json) ou les données de scènes (scenes.json), ou supprimer tous les fichiers de métadonnées si aucun commutateur spécifique n'est fourni. Les fichiers de métadonnées spécifiques à une langue peuvent être supprimés en spécifiant le paramètre Language, et toutes les variantes linguistiques peuvent être supprimées à l'aide du commutateur AllLanguages.

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | Tableau des chemins de répertoires à traiter pour la suppression des métadonnées d'image. S'il n'est pas spécifié, utilise les répertoires système par défaut. |
| `-Language` | String | — | — | 1 | — | Le langage pour supprimer les fichiers de métadonnées spécifiques à une langue. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-Recurse` | SwitchParameter | — | — | Named | — | Parcourir les répertoires de manière récursive. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Supprimez uniquement les fichiers people.json (données de reconnaissance faciale). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Supprimez uniquement les fichiers objects.json (données de détection d'objets). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Only remove scenes.json files (scene classification data). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Supprimer les fichiers de métadonnées pour toutes les langues prises en charge. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Supprime tous les fichiers de métadonnées pour les images dans plusieurs répertoires et tous les sous-répertoires.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Supprime uniquement les fichiers description.json des répertoires système par défaut et de leurs sous-répertoires.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Supprime uniquement les fichiers people.json du répertoire MyPhotos.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Supprime de manière récursive les fichiers de description en anglais et en espagnol des répertoires par défaut.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Utilise l'alias pour supprimer les fichiers de mots-clés pour toutes les langues prises en charge.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
