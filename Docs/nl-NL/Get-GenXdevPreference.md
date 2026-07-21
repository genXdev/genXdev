# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> Haalt een voorkeurswaarde op uit de GenXdev-voorkeurenopslag.

## Description

* Implementeert een tweeledig systeem voor het ophalen van voorkeuren.
* Controleert eerst de lokale opslag voor een voorkeurswaarde.
* Indien niet gevonden, valt het terug op de standaardopslag.
* Als nog steeds niet gevonden, wordt de opgegeven standaardwaarde geretourneerd.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de voorkeur om op te halen |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | De standaardwaarde als voorkeur niet wordt gevonden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wis de sessie-instelling (globale variabele) voordat u gaat ophalen |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor Data-voorkeuren zoals Taal, Database-paden, enz. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Haalt de voorkeur "Theme" op met terugval naar standaard "Dark".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Gebruikt het alias en positionele parameters.

## Parameter Details

### `-Name <String>`

> De naam van de voorkeur om op te halen

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> De standaardwaarde als voorkeur niet wordt gevonden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
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

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevPreferencesDatabasePath.md)
