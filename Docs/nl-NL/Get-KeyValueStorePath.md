# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt het bestandspad op voor een sleutel-waarde opslag.

## Description

* Construeert het bestandspad voor een sleutel-waardeopslag op basis van de synchronisatiesleutel, de opslagnaam en de basisdirectory.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | De synchronisatiesleutel die wordt gebruikt om de winkel te identificeren |
| `-StoreName` | String | ✅ | — | 1 | — | De naam van de sleutel-waarde opslag |
| `-BasePath` | String | — | — | Named | — | Het basisdirectorypad voor opslagbestanden |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Haal het pad op voor een lokale sleutel-waardenopslag.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
