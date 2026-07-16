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
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store to retrieve the key from |
| `-KeyName` | String | ✅ | — | 1 | — | Schlüssel zum Abrufen aus dem angegebenen Speicher |
| `-DefaultValue` | String | — | — | 2 | — | Ein optionaler Standardwert |
| `-SynchronizationKey` | String | — | — | 3 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
