# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> Haalt een voorkeurswaarde op uit de GenXdev voorkeurenopslag.

## Description

* Implementeert een tweetraps voorkeursophaalsysteem.
* Controleert eerst de lokale opslag voor een voorkeurswaarde.
* Indien niet gevonden, valt het terug naar de standaardopslag.
* Indien nog steeds niet gevonden, retourneert het de opgegeven standaardwaarde.

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de voorkeur om op te halen |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | De standaardwaarde als voorkeur niet wordt gevonden |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Haalt de 'Thema'-voorkeur op met terugval op standaard 'Donker'.

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Gebruikt het alias en de positionele parameters.

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
