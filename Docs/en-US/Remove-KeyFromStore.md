# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> Removes a key from a key-value store.

## Description

This function removes a specified key from a named key-value store. For local stores, the key is permanently deleted. For synchronized stores, the key is marked as deleted to allow for synchronization.

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store |
| `-KeyName` | String | ✅ | — | 1 | — | Key to be deleted |
| `-SynchronizationKey` | String | — | — | 2 | — | Key to identify synchronization scope |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Remove the key "MyKey" from the store "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Remove a key using the alias.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
