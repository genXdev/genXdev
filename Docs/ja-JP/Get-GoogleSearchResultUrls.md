# Get-GoogleSearchResultUrls

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinksget

## Synopsis

> Google検索を実行してリンクを返します

## Description

Google検索を実行してリンクを返します

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

## Examples

### PS C:\> $Urls = Get-GoogleSearchResultUrls "site:github.com PowerShell module"; $Urls

```powershell
PS C:\> $Urls = Get-GoogleSearchResultUrls "site:github.com PowerShell module"; $Urls
```

## Related Links

- [Get-GoogleSearchResultUrls on GitHub](https://github.com/genXdev/genXdev)
