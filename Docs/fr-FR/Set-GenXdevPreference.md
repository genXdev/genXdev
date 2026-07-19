# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> Définit une valeur de préférence dans le magasin de préférences GenXdev.

## Description

* Gère les préférences dans le stockage local de GenXdev.
* Permet de définir de nouvelles préférences, de mettre à jour des préférences existantes ou de les supprimer lorsqu'une valeur null/vide est fournie.
* Les préférences sont stockées avec la synchronisation réglée sur "Local".

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la préférence à définir |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | La valeur à stocker pour la préférence |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Définit la préférence « Thème » sur « Sombre » dans le stockage local.

### Example 2

```powershell
setPreference Theme Light
```

Utilise l'alias et les paramètres positionnels pour définir la préférence de thème.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
