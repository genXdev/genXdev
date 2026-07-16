# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
