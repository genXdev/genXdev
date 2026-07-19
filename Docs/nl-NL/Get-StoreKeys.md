# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> Haalt alle sleutelnamen op voor een gegeven sleutel-waarde opslag.

## Description

* Bevraagt het KeyValueStore JSON-bestand om alle actieve (niet-verwijderde) sleutels voor een opgegeven winkel op te halen.
* Kan optioneel filteren op synchronisatiebereik.
* Initialiseert automatisch de mapstructuur als deze niet wordt gevonden en handelt synchronisatie af voor niet-lokale winkels.

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Naam van de winkel waarvan de sleutels moeten worden opgehaald |
| `-SynchronizationKey` | String | — | — | 1 | — | Sleutel om synchronisatiebereik te identificeren, standaard alles |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Haalt alle sleutels op uit de ApplicationSettings-opslag voor het Lokale bereik.

### Example 2

```powershell
getkeys AppSettings
```

Haalt sleutels op met het alias.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
