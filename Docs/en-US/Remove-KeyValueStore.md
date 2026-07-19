# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Removes a key-value store.

## Description

This function deletes a specified key-value store. For local stores, it physically removes the file. For synchronized stores, it marks all keys as deleted and triggers synchronization.

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store to delete |
| `-SynchronizationKey` | String | — | — | 1 | — | Key to identify synchronization scope |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Remove a local key-value store named "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Remove a synchronized store with a specific synchronization key.

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
