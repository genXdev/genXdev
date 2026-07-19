# Remove-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Supprime les ensembles de refactorisation du système de préférences GenXdev.

## Description

Gère les ensembles de refactorisation dans le système de préférences GenXdev en supprimant les entrées spécifiées. Fonctionne à la fois avec les ensembles de refactorisation personnalisés et par défaut. Les ensembles par défaut sont protégés sauf autorisation explicite de suppression. Tous les ensembles de refactorisation sont identifiés par le préfixe "refactor_set_" dans le système de préférences.

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la refactorisation, accepte les caractères génériques 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | Switch to also remove the standard refactor set |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | Valeur par défaut si la préférence n'est pas trouvée |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-SkipSession` | SwitchParameter | — | — | Named | — | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Related Links

- [Remove-Refactor on GitHub](https://github.com/genXdev/genXdev)
