# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> Haalt alle voorkeursnamen op uit de sessieopslag en de databaseopslag.

## Description

* Haalt een unieke lijst van voorkeursnamen op door sleutels uit
  sessieopslag (globale variabelen) en zowel de lokale als standaard
  voorkeursopslag te combineren.
* Respecteert sessiebeheerparameters om te bepalen welke bronnen
  worden opgevraagd.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Retourneert een gesorteerde array van unieke voorkeursnamen uit de sessieopslag en beide winkels met het opgegeven databasepad.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Retourneert alleen voorkeursnamen uit sessieopslag.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Retourneert alleen voorkeursnamen uit databaserepositories.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
