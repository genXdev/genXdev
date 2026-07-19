# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> Verwijdert een voorkeurswaarde uit de GenXdev voorkeurenopslag.

## Description

* Verwijdert een voorkeurswaarde uit de lokale opslag en optioneel uit de standaardopslag.
* Biedt twee parametersets: één voor alleen lokale verwijdering en een andere voor verwijdering uit zowel lokale als standaardopslag.
* Zorgt voor correcte synchronisatie bij wijziging van de standaardopslag.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | De naam van de voorkeur die verwijderd moet worden |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Schakel ook over om de voorkeur uit standaardwaarden te verwijderen |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Verwijdert de "Thema"-voorkeur alleen uit de lokale opslag.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Verwijdert de voorkeur "Thema" uit zowel de lokale als de standaardopslagplaatsen.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
