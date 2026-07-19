# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> Récupère une valeur de préférence depuis le stockage de préférences de GenXdev.

## Description

* Implémente un système de récupération de préférences à deux niveaux.
* Vérifie d'abord le stockage local pour une valeur de préférence.
* Si introuvable, se rabat sur le stockage par défaut.
* Si toujours introuvable, renvoie la valeur par défaut fournie.

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

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Récupère la préférence 'Thème' avec comme valeur par défaut 'Sombre'.

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Utilise l'alias et les paramètres positionnels.

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
