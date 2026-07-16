# Get-GoogleSearchResultUrls

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinksget

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GoogleSearchResultUrls -Queries <String[]> [-Language <String>] [-Max <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | 実行するクエリ |
| `-Max` | Int32 | — | — | Named | `200` | 取得する最大件数です。デフォルトは200です。 |
| `-Language` | String | — | — | Named | — | 検索結果の表示言語 |

## Related Links

- [Get-GoogleSearchResultUrls on GitHub](https://github.com/genXdev/genXdev)
