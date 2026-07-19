# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> 检索可用的键值存储的名称。

## Description

扫描键值存储目录中的 JSON 文件，并根据指定的同步键模式提取唯一的存储名称。确保存储目录存在，并在必要时同步非本地存储。

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | 用于标识同步范围的键，默认为全部 |
| `-DatabasePath` | String | — | — | Named | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

从默认位置检索所有商店名称。

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

检索'本地'同步作用域的店铺名称。

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

使用别名从自定义数据库路径中检索所有商店名称。

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
