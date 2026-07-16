# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-BrowserBookmark [[-Queries] <String[]>] [-Chrome] [-Count <Int32>] [-Edge] [-Firefox] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 一致するブックマークを見つけるための検索語句 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ブックマークを検索する |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome のブックマークを検索する |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox ブックマークを検索 |
| `-Count` | Int32 | — | — | Named | `99999999` | 返す結果の最大数 |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return bookmark objects instead of just URLs |

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
