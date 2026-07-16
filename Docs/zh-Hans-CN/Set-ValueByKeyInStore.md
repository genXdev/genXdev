# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
