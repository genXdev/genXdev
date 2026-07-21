# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Synchronizes local and OneDrive key-value store JSON files.

## Description

Performs two-way synchronization between local and OneDrive shadow JSON files using a last-modified timestamp strategy. Records are merged based on their last modification time, with newer versions taking precedence.

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Key to identify synchronization scope |
| `-DatabasePath` | String | — | — | Named | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Parameter Details

### `-SynchronizationKey <String>`

> Key to identify synchronization scope

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-ValueByKeyInStore.md)
