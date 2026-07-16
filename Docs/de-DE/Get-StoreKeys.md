# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store whose keys should be retrieved |
| `-SynchronizationKey` | String | — | — | 1 | — | Schlüssel zur Identifizierung des Synchronisationsbereichs, Standardwert: alle |
| `-DatabasePath` | String | — | — | Named | — | Datenbankpfad für Key-Value-Speicherdatendateien |

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
