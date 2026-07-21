# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Récupère tous les noms de préférence des magasins de session et de base de données.

## Description

* Récupère une liste unique de noms de préférences en combinant les clés du stockage de session (variables globales) et des magasins de préférences locaux et par défaut.
* Respecte les paramètres de gestion de session pour contrôler les sources interrogées.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilisez les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins d'accès à la base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférences |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Retourne un tableau trié de noms de préférences uniques provenant du stockage de session et des deux magasins en utilisant le chemin de base de données spécifié.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Retourne uniquement les noms de préférences du stockage de session.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Retourne uniquement les noms de préférence à partir des magasins de base de données.

## Parameter Details

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
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevPreferencesDatabasePath.md)
