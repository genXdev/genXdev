# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initialiseert de directorystructuur van KeyValueStore voor lokale en OneDrive-opslag.

## Description

Maakt een mapstructuur voor op JSON gebaseerde sleutel-waardeparen op twee locaties: lokale machine voor directe toegang en OneDrive-map voor cloudsynchronisatie. De cmdlet zorgt ervoor dat beide mappen bestaan en correct zijn geconfigureerd.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Databasepad voor data-bestanden van key-value-opslag |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Creëert de standaard lokale en OneDrive-mappen voor sleutelwaardewinkels.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Creëert sleutel-waardearchiefmappen onder het opgegeven aangepaste pad.

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)
