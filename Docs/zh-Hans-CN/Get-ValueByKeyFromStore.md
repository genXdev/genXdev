# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> 从基于JSON的键值存储中检索一个值。

## Description

* 从基于JSON文件的键值存储中检索指定键的值。
* 支持可选的默认值以及不同作用域之间的同步。
* 提供自动目录初始化和同步功能。

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 用于检索密钥的存储名称 |
| `-KeyName` | String | ✅ | — | 1 | — | 从指定存储中检索的键 |
| `-DefaultValue` | String | — | — | 2 | — | 一个可选的默认值 |
| `-SynchronizationKey` | String | — | — | 3 | — | 用于标识同步范围的关键 |
| `-DatabasePath` | String | — | — | Named | — | 键值存储数据文件的数据库路径 |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

从 AppSettings 中检索“Theme”值，如果未找到则返回“Dark”。

### Example 2

```powershell
getvalue AppSettings Theme
```

使用 'getvalue' 别名来检索一个值。

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
