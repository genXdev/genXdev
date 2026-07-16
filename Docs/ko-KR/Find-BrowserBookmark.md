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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 일치하는 북마크를 찾기 위한 검색어 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Search through Microsoft Edge bookmarks |
| `-Chrome` | SwitchParameter | — | — | Named | — | 크롬 북마크를 검색해 보세요 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox 북마크 검색 |
| `-Count` | Int32 | — | — | Named | `99999999` | 반환할 최대 결과 수 |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return bookmark objects instead of just URLs |

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
