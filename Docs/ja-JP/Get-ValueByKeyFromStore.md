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
| `-StoreName` | String | ✅ | — | 0 | — | キーを取得するストアの名前 |
| `-KeyName` | String | ✅ | — | 1 | — | 指定されたストアから取得するキー |
| `-DefaultValue` | String | — | — | 2 | — | オプションのデフォルト値 |
| `-SynchronizationKey` | String | — | — | 3 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
