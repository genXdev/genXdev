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
| `-KeyName` | String | ✅ | — | 1 | — | Key to retrieve from the specified store |
| `-DefaultValue` | String | — | — | 2 | — | A optional default value |
| `-SynchronizationKey` | String | — | — | 3 | — | Key to identify synchronization scope |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
