# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | GoogleでPDFファイルを検索するための検索語句 |
| `-Max` | Int32 | — | — | 1 | `200` | 取得する結果の最大数（デフォルト: 200） |
| `-Language` | String | — | — | 2 | — | 検索結果のオプション言語フィルター |

## Related Links

- [Copy-PDFsFromGoogleQuery on GitHub](https://github.com/genXdev/genXdev)
