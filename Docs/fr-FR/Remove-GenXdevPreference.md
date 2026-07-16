# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la préférence à supprimer |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | `False` | Passer également à la suppression de la préférence des valeurs par défaut |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
