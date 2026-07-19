# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> 从键值存储中移除一个键。

## Description

此函数从指定的键值存储中移除一个键。对于本地存储，该键会被永久删除。对于同步存储，该键会被标记为已删除以便进行同步。

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 商店名称 |
| `-KeyName` | String | ✅ | — | 1 | — | Key to be deleted |
| `-SynchronizationKey` | String | — | — | 2 | — | 用于标识同步范围的关键 |
| `-DatabasePath` | String | — | — | Named | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

从存储 "MyStore" 中移除键 "MyKey"。

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

使用别名删除密钥。

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
