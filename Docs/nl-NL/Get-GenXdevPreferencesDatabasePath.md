# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt het geconfigureerde databasepad op voor voorkeursgegevensbestanden die worden gebruikt in GenXdev.Data-bewerkingen.

## Description

* Haalt het globale databasepad op dat wordt gebruikt door de GenXdev.Data-module voor
  diverse voorkeursopslag- en gegevensbewerkingen.
* Controleert eerst globale variabelen (tenzij SkipSession is opgegeven), valt
  dan terug op persistente voorkeuren en gebruikt uiteindelijk systeemstandaarden.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Optioneel databasepad overschrijven |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in sessie voor Data voorkeuren zoals Taal, Database paden, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Haalt het databasepad op uit globale variabelen of voorkeuren.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Slaat de sessievariabele over en gebruikt persistente voorkeuren.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Wist de sessie-instelling voordat het pad wordt opgehaald.

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
