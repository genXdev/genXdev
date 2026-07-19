# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> Stelt een voorkeurswaarde in de GenXdev-voorkeurenopslag in.

## Description

* Beheert voorkeuren in de GenXdev lokale opslag.
* Kan nieuwe voorkeuren instellen, bestaande bijwerken of verwijderen wanneer een null/lege waarde wordt opgegeven.
* Voorkeuren worden opgeslagen met synchronisatie ingesteld op "Lokaal".

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de voorkeur die moet worden ingesteld |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | De waarde die moet worden opgeslagen voor de voorkeur |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

Stelt de "Thema"-voorkeur in op "Donker" in de lokale opslag.

### Example 2

```powershell
setPreference Theme Light
```

Gebruikt het alias en positionele parameters om de themavoorkeur in te stellen.

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
