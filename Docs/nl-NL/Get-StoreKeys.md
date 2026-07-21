# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys`

## Synopsis

> Haalt alle sleutelnamen op voor een bepaalde sleutel-waarde opslag.

## Description

* Query't het KeyValueStore JSON-bestand om alle actieve (niet-verwijderde)
  sleutels voor een opgegeven winkel op te halen.
* Kan optioneel filteren op synchronisatiebereik.
* Initialiseert automatisch de mapstructuur indien niet gevonden en
  verwerkt synchronisatie voor niet-lokale winkels.

## Syntax

```powershell
Get-StoreKeys -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Naam van de winkel waarvan de sleutels moeten worden opgehaald |
| `-SynchronizationKey` | String | — | — | 1 | — | Sleutel om synchronisatiebereik te identificeren, standaard alles |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor gegevensbestanden van sleutelwaardearchief |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Haalt alle sleutels op uit de ApplicationSettings-opslag voor het lokale bereik.

### Example 2

```powershell
getkeys AppSettings
```

Haalt sleutels op met behulp van het alias.

## Parameter Details

### `-StoreName <String>`

> Naam van de winkel waarvan de sleutels moeten worden opgehaald

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Sleutel om synchronisatiebereik te identificeren, standaard alles

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Databasepad voor gegevensbestanden van sleutelwaardearchief

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-KeyValueStorePath.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Sync-KeyValueStore.md)
