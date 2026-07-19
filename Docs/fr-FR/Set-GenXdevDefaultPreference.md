# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> Définit une valeur de préférence par défaut dans le magasin de préférences GenXdev.

## Description

* Gère les préférences par défaut dans le système de préférences GenXdev.
* Gère le stockage des valeurs, la suppression des préférences lorsque les valeurs sont vides, et garantit que les modifications sont synchronisées dans tout le système.
* Prend en charge les valeurs nulles en supprimant entièrement la préférence dans de tels cas.

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | Le nom de la préférence à définir dans les valeurs par défaut |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | La valeur à stocker pour la préférence |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Définit la préférence de thème par défaut sur "Sombre".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Utilise l'alias pour désactiver les notifications par e-mail dans les valeurs par défaut.

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
