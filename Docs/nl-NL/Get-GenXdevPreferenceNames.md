# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Haalt alle voorkeursnamen op uit sessieopslag en database-opslagplaatsen.

## Description

* Haalt een unieke lijst met voorkeursnamen op door sleutels te combineren uit sessieopslag (globale variabelen) en zowel de lokale als de standaard voorkeursopslag.
* Respecteert sessiebeheerparameters om te bepalen welke bronnen worden opgevraagd.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wis de sessie-instelling (globale variabele) voordat u gaat ophalen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor Data-voorkeuren zoals Taal, Database-paden, enz. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Retourneert een gesorteerde matrix van unieke voorkeursnamen uit sessieopslag en beide winkels met het opgegeven databasepad.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Retourneert alleen voorkeursnamen uit de sessieopslag.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Retourneert alleen voorkeurnamen uit databasearchieven.

## Parameter Details

### `-SessionOnly`

> Gebruik alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc.

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

> Wis de sessie-instelling (globale variabele) voordat u gaat ophalen

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

> Databasepad voor voorkeursgegevensbestanden

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

> Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor Data-voorkeuren zoals Taal, Database-paden, enz.

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevPreferencesDatabasePath.md)
