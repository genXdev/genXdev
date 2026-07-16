# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
