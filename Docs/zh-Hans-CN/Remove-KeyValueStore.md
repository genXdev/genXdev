# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 移除键值存储。

## Description

此函数用于删除指定的键值存储。对于本地存储，它会物理删除文件。对于同步存储，它会将所有键标记为已删除并触发同步。

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Name of the store to delete |
| `-SynchronizationKey` | String | — | — | 1 | — | 用于标识同步范围的关键 |
| `-DatabasePath` | String | — | — | Named | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

移除一个名为"MyStore"的本地键值存储。

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

移除具有特定同步键的同步存储。

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
