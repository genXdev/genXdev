# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> Stelt een standaard voorkeurswaarde in de GenXdev-voorkeurenopslag.

## Description

* Beheert standaardvoorkeuren in het GenXdev-voorkeurssysteem.
* Handelt het opslaan van waarden af, verwijdert voorkeuren wanneer waarden leeg zijn, en
  zorgt ervoor dat wijzigingen binnen het systeem worden gesynchroniseerd.
* Ondersteunt null-waarden door de voorkeur in dergelijke gevallen volledig te verwijderen.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | De naam van de voorkeur die in de standaardwaarden moet worden ingesteld |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | De waarde die voor de voorkeur moet worden opgeslagen |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wis de sessie-instelling (globale variabele) voordat u gaat ophalen |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor Data-voorkeuren zoals Taal, Database-paden, enz. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Stelt de standaard themavoorkeur in op 'Donker'.

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Gebruikt het alias om e-mailmeldingen in standaardinstellingen uit te schakelen.

## Parameter Details

### `-Name <String>`

> De naam van de voorkeur die in de standaardwaarden moet worden ingesteld

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

> De waarde die voor de voorkeur moet worden opgeslagen

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

> Databasepad voor voorkeursgegevensbestanden

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevPreferencesDatabasePath.md)
