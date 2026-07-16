# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
