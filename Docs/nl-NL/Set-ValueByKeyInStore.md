# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
