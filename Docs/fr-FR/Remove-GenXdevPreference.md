# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> Supprime une valeur de préférence du magasin de préférences GenXdev.

## Description

* Supprime une valeur de préférence du magasin local et éventuellement du magasin par défaut.
* Fournit deux ensembles de paramètres - un pour la suppression locale uniquement et un autre pour la suppression à la fois des magasins local et par défaut.
* Assure une synchronisation correcte lors de la modification du magasin par défaut.

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la préférence à supprimer |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Basculer pour également supprimer la préférence des valeurs par défaut |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilisez les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins d'accès à la base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférences |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Supprime la préférence « Thème » uniquement du magasin local.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Supprime la préférence « Thème » des magasins local et par défaut.

## Parameter Details

### `-Name <String>`

> Le nom de la préférence à supprimer

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> Basculer pour également supprimer la préférence des valeurs par défaut

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Utilisez les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins d'accès à la base de données, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Effacer le paramètre de session (variable globale) avant de récupérer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Chemin de la base de données pour les fichiers de données de préférences

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> N'utilisez pas les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevPreferencesDatabasePath.md)
