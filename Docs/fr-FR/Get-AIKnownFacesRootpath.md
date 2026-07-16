# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Chemin du répertoire pour les fichiers d'images de visages |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
