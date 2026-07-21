# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 初始化用于本地和 OneDrive 存储的 KeyValueStore 目录结构。

## Description

为基于 JSON 的键值存储创建目录结构，分别位于两个位置：本地机器用于即时访问，OneDrive 文件夹用于云同步。该 cmdlet 确保两个目录都存在并正确配置。

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

为键值存储创建标准的本地和OneDrive目录。

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

在指定自定义路径下创建键值存储目录。

## Parameter Details

### `-DatabasePath <String>`

> 键值存储数据文件的数据库路径

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Sync-KeyValueStore.md)
