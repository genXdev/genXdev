# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> Retrieves the names of available key-value stores.

## Description

* Scans the key-value store directory for JSON files and extracts unique
  store names based on the specified synchronization key pattern.
* Ensures the store directory exists and synchronizes non-local stores if
  necessary.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Key to identify synchronization scope, defaults to all |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Retrieves all store names from the default location.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Retrieves store names for the 'Local' synchronization scope.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Retrieves all store names from a custom database path using the alias.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
