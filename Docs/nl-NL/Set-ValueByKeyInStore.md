# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> Beheert sleutel-waardeparen in een op JSON-bestanden gebaseerde opslag.

## Description

Biedt persistente opslag voor sleutel-waardeparen met behulp van JSON-bestanden. Verwerkt zowel het invoegen van nieuwe items als het bijwerken van bestaande. Ondersteunt optionele synchronisatie voor niet-lokale opslag. Deze functie voert een upsert-bewerking uit die ofwel nieuwe sleutel-waardeparen invoegt of bestaande bijwerkt op basis van de combinatie van synchronisatiesleutel, winkelnaam en sleutelnaam.

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Winkelnaam voor het sleutel-waardepaar |
| `-KeyName` | String | ✅ | — | 1 | — | Naam van de sleutel om in te stellen of bij te werken |
| `-Value` | String | — | — | 2 | — | Waarde om op te slaan |
| `-SynchronizationKey` | String | — | — | 3 | — | Sleutel om synchronisatiebereik te identificeren |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Stel een API-eindpunt in in de ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Gebruik de alias om een waarde in te stellen.

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
