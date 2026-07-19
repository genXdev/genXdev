# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> 检索给定键值存储中的所有键名。

## Description

* 查询 KeyValueStore JSON 文件，获取指定存储中所有活跃（未删除）的键。
* 可选择按同步范围进行过滤。
* 如果未找到目录结构，会自动初始化，并为非本地存储处理同步。

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 需要检索密钥的商店名称 |
| `-SynchronizationKey` | String | — | — | 1 | — | 用于标识同步范围的键，默认为全部 |
| `-DatabasePath` | String | — | — | Named | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

从本地作用域的 ApplicationSettings 存储中检索所有键。

### Example 2

```powershell
getkeys AppSettings
```

使用别名检索密钥。

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
