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
| `-SynchronizationKey` | String | — | — | 1 | — | Key to identify synchronization scope, defaults to all |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
