# Get-GoogleSearchResultUrls

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinksget

## Synopsis

> Voert een Google-zoekopdracht uit en retourneert de links

## Description

Voert een Google-zoekopdracht uit en retourneert de links

## Syntax

```powershell
Get-GoogleSearchResultUrls -Queries <String[]> [-Language <String>] [-Max <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | De uit te voeren query |
| `-Max` | Int32 | — | — | Named | `200` | Het maximale aantal resultaten dat u wilt verkrijgen, standaard 200 |
| `-Language` | String | — | — | Named | — | De taal van de geretourneerde zoekresultaten |

## Examples

### PS C:\> $Urls = Get-GoogleSearchResultUrls "site:github.com PowerShell module"; $Urls

```powershell
PS C:\> $Urls = Get-GoogleSearchResultUrls "site:github.com PowerShell module"; $Urls
```

## Related Links

- [Get-GoogleSearchResultUrls on GitHub](https://github.com/genXdev/genXdev)
