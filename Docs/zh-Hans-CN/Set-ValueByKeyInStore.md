# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> 在基于JSON文件的数据存储中管理键值对。

## Description

使用JSON文件为键值对提供持久化存储。处理新条目的插入和已有条目的更新。支持非本地存储的可选同步。此函数实现了基于同步键、存储名称和键名称的组合来插入新的键值对或更新现有键值对的更新插入操作。

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 键值对的存储名称 |
| `-KeyName` | String | ✅ | — | 1 | — | 要设置或更新的键的名称 |
| `-Value` | String | — | — | 2 | — | 要存储的值 |
| `-SynchronizationKey` | String | — | — | 3 | — | 用于标识同步范围的关键 |
| `-DatabasePath` | String | — | — | Named | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

在 ConfigStore 中设置一个 API 端点。

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

使用别名设置一个值。

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
