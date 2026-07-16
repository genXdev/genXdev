# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la préférence à récupérer |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | Valeur par défaut si la préférence n'est pas trouvée |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
