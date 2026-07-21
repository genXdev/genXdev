# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> Anger ett standardvärde för inställningar i GenXdevs inställningsarkiv.

## Description

* Hanterar standardinställningar i GenXdev-inställningssystemet.
* Hanterar lagring av värden, tar bort inställningar när värden är tomma och
  säkerställer att ändringar synkroniseras över hela systemet.
* Stöder null-värden genom att helt ta bort inställningen i sådana fall.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | Namnet på inställningen som ska ställas in i defaults |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Värdet som ska lagras för inställningen |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Databassökväg för inställningsdatafiler |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Använd alternativa inställningar som lagrats i sessionen för datapreferenser som språk, databassökvägar, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Rensa sessionsinställningen (global variabel) innan hämtning |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Använd inte alternativa inställningar lagrade i sessionen för datapreferenser som språk, databassökvägar, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Ställer in standardtemat till "Mörkt".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Använder aliaset för att inaktivera e-postmeddelanden i standardinställningarna.

## Parameter Details

### `-Name <String>`

> Namnet på inställningen som ska ställas in i defaults

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Värdet som ska lagras för inställningen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Databassökväg för inställningsdatafiler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
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
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreferencesDatabasePath.md)
