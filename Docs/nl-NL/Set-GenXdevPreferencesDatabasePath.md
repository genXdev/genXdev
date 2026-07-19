# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Stelt het databasepad in voor voorkeuren die worden gebruikt in GenXdev.Data-bewerkingen.

## Description

* Configureert het globale databasepad dat door de GenXdev.Data-module wordt gebruikt voor verschillende opslag van voorkeuren en gegevensbewerkingen.
* Instellingen worden opgeslagen in de huidige sessie (met behulp van globale variabelen) en kunnen uit de sessie worden verwijderd (met behulp van -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Een databasepad waar voorkeursbestanden zich bevinden |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen opgeslagen in sessie voor Data-voorkeuren zoals Taal, Database-paden, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Wanneer gespecificeerd, slaat de instelling alleen op in de huidige sessie (globale variabele) zonder deze te bewaren in voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wanneer opgegeven, wist alleen de sessie-instelling (globale variabele) zonder permanente voorkeuren te beïnvloeden |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Stelt het databasepad in de huidige sessie in (globale variabele).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Stelt het databasepad in met een positionele parameter.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Stelt het pad alleen in voor de huidige sessie zonder het te behouden.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Wist de globale variabele voor het databasepad.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
