# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 下载通过 Google 搜索结果找到的 PDF 文件。

## Description

在之前选择的网页浏览器标签页中执行谷歌搜索，并将所有找到的PDF文件下载到当前目录。支持多个查询和语言筛选。

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 用于在谷歌上搜索PDF文件的检索词 |
| `-Max` | Int32 | — | — | 1 | `200` | 要检索的最大结果数（默认值：200） |
| `-Language` | String | — | — | 2 | — | 搜索结果的可选语言筛选器 |

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
