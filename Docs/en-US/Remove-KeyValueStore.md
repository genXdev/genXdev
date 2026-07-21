# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Removes a key-value store.

## Description

This function deletes a specified key-value store. For local stores, it physically removes the file. For synchronized stores, it marks all keys as deleted and triggers synchronization.

## Syntax

```powershell
Remove-KeyValueStore -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
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

## Parameter Details

### `-StoreName <String>`

> Name of the store to delete

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Key to identify synchronization scope

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyFromStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Sync-KeyValueStore.md)
