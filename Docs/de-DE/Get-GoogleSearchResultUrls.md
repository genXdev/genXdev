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
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | Die durchzuführende Abfrage |
| `-Max` | Int32 | — | — | Named | `200` | Die maximale Anzahl der Ergebnisse, die abgerufen werden sollen, Standard ist 200 |
| `-Language` | String | — | — | Named | — | Die Sprache der zurückgegebenen Suchergebnisse |

## Related Links

- [Get-GoogleSearchResultUrls on GitHub](https://github.com/genXdev/genXdev)
