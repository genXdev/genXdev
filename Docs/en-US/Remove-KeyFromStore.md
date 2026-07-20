# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> Removes a key from a key-value store.

## Description

This function removes a specified key from a named key-value store. For local stores, the key is permanently deleted. For synchronized stores, the key is marked as deleted to allow for synchronization.

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
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

## Parameter Details

### `-StoreName <String>`

> Name of the store

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> Key to be deleted

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Sync-KeyValueStore.md)
