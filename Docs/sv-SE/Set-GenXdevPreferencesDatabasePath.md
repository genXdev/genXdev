# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Anger databassökvägen för inställningar som används i GenXdev.Data-operationer.

## Description

* Konfigurerar den globala databassökväg som används av GenXdev.Data-modulen för olika inställningslagring och dataoperationer.
* Inställningarna lagras i den aktuella sessionen (med globala variabler) och kan rensas från sessionen (med -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | En databassökväg där preferensdatafiler finns |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Använd inte alternativa inställningar lagrade i sessionen för datapreferenser som språk, databassökvägar, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | När detta anges sparas inställningen endast i den aktuella sessionen (Global variabel) utan att sparas i inställningar. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | När angiven, rensar endast sessionsinställningen (Global variabel) utan att påverka beständiga inställningar |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Ställer in databassökvägen i den aktuella sessionen (Global variabel).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Ställer in databassökvägen med hjälp av positionsparameter.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Anger sökvägen endast för den aktuella sessionen utan att spara den.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Rensar den globala variabeln för databassökvägen.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> En databassökväg där preferensdatafiler finns

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

> Använd inte alternativa inställningar lagrade i sessionen för datapreferenser som språk, databassökvägar, etc.

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

> När detta anges sparas inställningen endast i den aktuella sessionen (Global variabel) utan att sparas i inställningar.

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

> När angiven, rensar endast sessionsinställningen (Global variabel) utan att påverka beständiga inställningar

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreference.md)
