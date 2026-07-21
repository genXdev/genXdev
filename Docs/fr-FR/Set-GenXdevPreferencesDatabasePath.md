# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Définit le chemin de la base de données pour les préférences utilisées dans les opérations GenXDev.Data.

## Description

* Configure le chemin de base de données global utilisé par le module GenXdev.Data pour
  divers stockages de préférences et opérations de données.
* Les paramètres sont stockés dans la session actuelle (à l'aide de variables globales) et
  peuvent être effacés de la session (à l'aide de -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Un chemin de base de données où les fichiers de données de préférences sont situés |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Lorsqu'il est spécifié, enregistre le paramètre uniquement dans la session en cours (variable globale) sans le conserver dans les préférences |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Lorsqu'il est spécifié, efface uniquement le paramètre de session (variable globale) sans affecter les préférences persistantes |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Définit le chemin d'accès à la base de données dans la session en cours (variable globale).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Définit le chemin de la base de données à l'aide du paramètre positionnel.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Définit le chemin uniquement pour la session en cours sans le conserver.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Efface la variable globale du chemin de la base de données.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Un chemin de base de données où les fichiers de données de préférences sont situés

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> Lorsqu'il est spécifié, enregistre le paramètre uniquement dans la session en cours (variable globale) sans le conserver dans les préférences

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

> Lorsqu'il est spécifié, efface uniquement le paramètre de session (variable globale) sans affecter les préférences persistantes

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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-GenXdevPreference.md)
