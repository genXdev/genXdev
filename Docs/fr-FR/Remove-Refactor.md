# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-RemoveDefault] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la refactorisation, accepte les caractères génériques 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | — | Switch to also remove the standard refactor set |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | Valeur par défaut si la préférence n'est pas trouvée |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-SkipSession` | SwitchParameter | — | — | Named | — | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
