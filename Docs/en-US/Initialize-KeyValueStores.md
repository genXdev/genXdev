# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initializes KeyValueStore directory structure for local and OneDrive storage.

## Description

Creates directory structure for JSON-based key-value stores in two locations: local machine for immediate access and OneDrive folder for cloud synchronization. The cmdlet ensures both directories exist and are properly configured.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Database path for key-value store data files |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Creates the standard local and OneDrive directories for key-value stores.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Creates key-value store directories under the specified custom path.

## Parameter Details

### `-DatabasePath <String>`

> Database path for key-value store data files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Sync-KeyValueStore.md)
