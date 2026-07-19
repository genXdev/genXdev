# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Verwijdert een sleutel-waardeopslag.

## Description

Deze functie verwijdert een gespecificeerde key-value store. Voor lokale stores wordt het bestand fysiek verwijderd. Voor gesynchroniseerde stores worden alle keys als verwijderd gemarkeerd en wordt synchronisatie geactiveerd.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Naam van de winkel die verwijderd moet worden |
| `-SynchronizationKey` | String | — | — | 1 | — | Sleutel om synchronisatiebereik te identificeren |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Verwijder een lokale sleutel-waarde opslag genaamd "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Verwijder een gesynchroniseerde winkel met een specifieke synchronisatiesleutel.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
