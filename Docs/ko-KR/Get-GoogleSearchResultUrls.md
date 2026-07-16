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
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | 수행할 쿼리 |
| `-Max` | Int32 | — | — | Named | `200` | 가져올 최대 결과 수, 기본값은 200 |
| `-Language` | String | — | — | Named | — | 반환된 검색 결과의 언어 |

## Related Links

- [Get-GoogleSearchResultUrls on GitHub](https://github.com/genXdev/genXdev)
