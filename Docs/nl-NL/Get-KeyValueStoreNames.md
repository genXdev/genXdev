# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Haalt de namen op van beschikbare sleutel-waardewinkels.

## Description

* Scannt de sleutelwaardeopslagdirectory naar JSON-bestanden en extraheert unieke
  opslagnamen op basis van het opgegeven synchronisatiesleutelpatroon.
* Zorgt ervoor dat de opslagdirectory bestaat en synchroniseert niet-lokale opslag
  indien nodig.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Sleutel om synchronisatiebereik te identificeren, standaard alles |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor gegevensbestanden van sleutelwaardearchief |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Haalt alle winkelnamen op uit de standaardlocatie.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Haalt winkelnamen op voor het synchronisatiebereik 'Lokaal'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Haalt alle winkelnamen op uit een aangepast databasepad met behulp van de alias.

## Parameter Details

### `-SynchronizationKey <String>`

> Sleutel om synchronisatiebereik te identificeren, standaard alles

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Sync-KeyValueStore.md)
