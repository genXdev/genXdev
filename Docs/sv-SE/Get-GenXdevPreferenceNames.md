# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Hämtar alla inställningsnamn från sessionslagring och databaslager.

## Description

Hämtar en unik lista med inställningsnamn genom att kombinera nycklar från sessionslagring (globala variabler) och både lokala och standardinställningsarkiv. Respekterar sessionshanteringsparametrar för att styra vilka källor som efterfrågas.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Använd alternativa inställningar som lagrats i sessionen för datapreferenser som språk, databassökvägar, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Rensa sessionsinställningen (global variabel) innan hämtning |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databassökväg för inställningsdatafiler |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Använd inte alternativa inställningar lagrade i sessionen för datapreferenser som språk, databassökvägar, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Returnerar en sorterad array med unika preferensnamn från sessionslagring och båda butikerna med den angivna databassökvägen.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Returnerar endast preferensnamn från sessionslagring.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Returnerar endast preferensnamn från databaslager.

## Parameter Details

### `-SessionOnly`

> Använd alternativa inställningar som lagrats i sessionen för datapreferenser som språk, databassökvägar, etc.

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

> Rensa sessionsinställningen (global variabel) innan hämtning

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

> Databassökväg för inställningsdatafiler

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
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreferencesDatabasePath.md)
