# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Naam van de winkel om de sleutel uit op te halen |
| `-KeyName` | String | ✅ | — | 1 | — | Sleutel om op te halen uit de opgegeven winkel |
| `-DefaultValue` | String | — | — | 2 | — | Een optionele standaardwaarde |
| `-SynchronizationKey` | String | — | — | 3 | — | Sleutel om synchronisatiebereik te identificeren |
| `-DatabasePath` | String | — | — | Named | — | Databasepad voor data-bestanden van key-value-opslag |

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
