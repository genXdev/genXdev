# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> Récupère la langue par défaut configurée pour les opérations de métadonnées d'image.

## Description

* Cette cmdlet récupère la langue par défaut utilisée par le module GenXdev.AI pour les opérations de métadonnées d'image.
* Elle vérifie d'abord les variables Globales (sauf si SkipSession est spécifié), puis utilise les préférences persistantes, et enfin les valeurs par défaut du système.

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | La langue par défaut pour les opérations de métadonnées d'image |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences IA telles que la langue, les collections d'images, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Ne pas utiliser les paramètres alternatifs stockés dans la session pour les préférences IA comme la langue, les collections d'images, etc. |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

Obtenez la langue actuellement configurée à partir des variables globales ou des préférences.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

Obtenir la langue configurée depuis les préférences persistantes, en ignorant la session.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

Effacer le paramètre de session et obtenir la langue des préférences persistantes.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
