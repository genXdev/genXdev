# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Google検索結果で見つかったPDFファイルをダウンロードします。

## Description

以前に選択したWebブラウザのタブでGoogleクエリを実行し、見つかったすべてのPDFファイルを現在のディレクトリにダウンロードします。複数のクエリと言語フィルタリングをサポートします。

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

## Examples

### Open-Webbrowser Select-WebbrowserTab $null = New-Item -ItemType Directory -Name pdfs Set-Location pdfs Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"

```powershell
Open-Webbrowser
Select-WebbrowserTab
$null = New-Item -ItemType Directory -Name pdfs
Set-Location pdfs
Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"
```

## Related Links

- [Copy-PDFsFromGoogleQuery on GitHub](https://github.com/genXdev/genXdev)
