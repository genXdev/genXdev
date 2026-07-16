# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
