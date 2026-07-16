# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Motif(s) à rechercher pour les définitions de refactorisation 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-DefaultValue` | String | — | — | Named | — | Valeur par défaut si la préférence n'est pas trouvée |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-SkipSession` | SwitchParameter | — | — | Named | — | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)
