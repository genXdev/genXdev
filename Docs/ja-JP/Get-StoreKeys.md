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
| `-StoreName` | String | ✅ | — | 0 | — | キーを取得するストアの名前 |
| `-SynchronizationKey` | String | — | — | 1 | — | 同期スコープを識別するキー。デフォルトはすべて |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
