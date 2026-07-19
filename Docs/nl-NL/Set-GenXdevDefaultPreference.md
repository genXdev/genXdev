# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> Stelt een standaardvoorkeurswaarde in de GenXdev-voorkeurenopslag in.

## Description

* Beheert standaardvoorkeuren in het GenXdev-voorkeurssysteem.
* Verwerkt het opslaan van waarden, het verwijderen van voorkeuren wanneer waarden leeg zijn, en
  zorgt ervoor dat wijzigingen in het systeem worden gesynchroniseerd.
* Ondersteunt null-waarden door de voorkeur in dergelijke gevallen volledig te verwijderen.

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | De naam van de voorkeur die in standaardwaarden moet worden ingesteld |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | De waarde die moet worden opgeslagen voor de voorkeur |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Stelt de standaard themavoorkeur in op "Donker".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Gebruikt het alias om e-mailnotificaties uit te schakelen in standaardinstellingen.

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
