# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> Anger ett preferensvärde i GenXdevs preferensarkiv.

## Description

* Hanterar inställningar i den lokala GenXdev-butiken.
* Kan ange nya inställningar, uppdatera befintliga eller ta bort dem när ett
  null-/tomt värde anges.
* Inställningar lagras med synkronisering inställd på "Local".

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Namnet på den inställningen som ska anges |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Värdet som ska lagras för inställningen |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Använd alternativa inställningar som lagrats i sessionen för datapreferenser som språk, databassökvägar, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Rensa sessionsinställningen (global variabel) innan hämtning |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databassökväg för inställningsdatafiler |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Använd inte alternativa inställningar lagrade i sessionen för datapreferenser som språk, databassökvägar, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Anger inställningen för 'Tema' till 'Mörkt' i den lokala butiken.

### Example 2

```powershell
setPreference Theme Light
```

Använder alias och positionsparametrar för att ställa in temapreferensen.

## Parameter Details

### `-Name <String>`

> Namnet på den inställningen som ska anges

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
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
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-GenXdevPreferencesDatabasePath.md)
