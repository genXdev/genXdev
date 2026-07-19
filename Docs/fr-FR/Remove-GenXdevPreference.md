# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> Supprime une valeur de préférence du magasin de préférences GenXdev.

## Description

* Supprime une valeur de préférence du stockage local et éventuellement du
  stockage par défaut.
* Fournit deux ensembles de paramètres - un pour la suppression locale uniquement et un autre pour
  la suppression des stockages local et par défaut.
* Assure une synchronisation correcte lors de la modification du stockage par défaut.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la préférence à supprimer |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Passer également à la suppression de la préférence des valeurs par défaut |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Supprime la préférence « Thème » uniquement du stockage local.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Supprime la préférence "Theme" du stockage local et du stockage par défaut.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
