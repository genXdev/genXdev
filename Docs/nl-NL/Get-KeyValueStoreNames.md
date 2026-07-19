# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> Haalt de namen op van beschikbare sleutel-waarde-opslagplaatsen.

## Description

* Doorzoekt de key-value store directory naar JSON-bestanden en extraheert unieke winkelnamen op basis van het opgegeven synchronisatiesleutelpatroon.
* Zorgt ervoor dat de winkel-directory bestaat en synchroniseert indien nodig niet-lokale winkels.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Sleutel om synchronisatiebereik te identificeren, standaard alles |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

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

Haalt winkelnamen op voor het 'Lokaal' synchronisatiebereik.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Haalt alle winkelnamen op uit een aangepast databasepad met behulp van het alias.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
