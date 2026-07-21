# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Stelt het databasepad in voor voorkeuren die worden gebruikt in GenXdev.Data-bewerkingen.

## Description

* Configureert het wereldwijde databasepad dat door de GenXdev.Data-module wordt gebruikt voor
  diverse voorkeursopslag en gegevensbewerkingen.
* Instellingen worden opgeslagen in de huidige sessie (met behulp van globale variabelen) en
  kunnen uit de sessie worden verwijderd (met -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Een databasepad waar voorkeursgegevensbestanden zich bevinden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor Data-voorkeuren zoals Taal, Database-paden, enz. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Wanneer opgegeven, slaat de instelling alleen op in de huidige sessie (globale variabele) zonder deze permanent op te slaan in de voorkeuren. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wanneer opgegeven, wist alleen de sessie-instelling (globale variabele) zonder blijvende voorkeuren te beïnvloeden |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Stelt het databasepad in in de huidige sessie (globale variabele).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Stelt het databasepad in met behulp van een positionele parameter.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Stelt het pad alleen in voor de huidige sessie zonder het te bewaren.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Wist de globale variabele voor het databasepad.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Een databasepad waar voorkeursgegevensbestanden zich bevinden

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
### `-SessionOnly`

> Wanneer opgegeven, slaat de instelling alleen op in de huidige sessie (globale variabele) zonder deze permanent op te slaan in de voorkeuren.

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

> Wanneer opgegeven, wist alleen de sessie-instelling (globale variabele) zonder blijvende voorkeuren te beïnvloeden

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-GenXdevPreference.md)
