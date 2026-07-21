# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> Manages key-value pairs in a JSON file-based store.

## Description

Provides persistent storage for key-value pairs using JSON files. Handles both insertion of new entries and updates to existing ones. Supports optional synchronization for non-local stores. This function implements an upsert operation that either inserts new key-value pairs or updates existing ones based on the combination of synchronization key, store name, and key name.

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Store name for the key-value pair |
| `-KeyName` | String | ✅ | — | 1 | — | Name of the key to set or update |
| `-Value` | String | — | — | 2 | — | Value to be stored |
| `-SynchronizationKey` | String | — | — | 3 | — | Key to identify synchronization scope |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Set an API endpoint in the ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Use the alias to set a value.

## Parameter Details

### `-StoreName <String>`

> Store name for the key-value pair

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

> Name of the key to set or update

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Value to be stored

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
| **Position?** | 3 |
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
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyValueStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Sync-KeyValueStore.md)
