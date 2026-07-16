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
| `-StoreName` | String | ✅ | — | 0 | — | キーバリューペアのストア名 |
| `-KeyName` | String | ✅ | — | 1 | — | 設定または更新するキーの名前 |
| `-Value` | String | — | — | 2 | — | 保存する値 |
| `-SynchronizationKey` | String | — | — | 3 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
