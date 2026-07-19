# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> Retrieves all key names for a given key-value store.

## Description

* Queries the KeyValueStore JSON file to retrieve all active (non-deleted)
  keys for a specified store.
* Can optionally filter by synchronization scope.
* Automatically initializes the directory structure if not found and
  handles synchronization for non-local stores.

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

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Retrieves all keys from the ApplicationSettings store for Local scope.

### Example 2

```powershell
getkeys AppSettings
```

Retrieves keys using the alias.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
