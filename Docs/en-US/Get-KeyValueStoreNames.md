# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Retrieves the names of available key-value stores.

## Description

* Scans the key-value store directory for JSON files and extracts unique
  store names based on the specified synchronization key pattern.
* Ensures the store directory exists and synchronizes non-local stores if
  necessary.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
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

## Parameter Details

### `-SynchronizationKey <String>`

> Key to identify synchronization scope, defaults to all

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Database path for key-value store data files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Sync-KeyValueStore.md)
