# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Import-BrowserBookmarks [[-InputFile] <String>] [<CommonParameters>]

Import-BrowserBookmarks [[-Bookmarks] <Array>] [<CommonParameters>]

Import-BrowserBookmarks [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputFile` | String | — | — | 0 | — | 가져올 북마크가 포함된 CSV 파일 경로 *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Collection of bookmarks to import *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome으로 가져오기 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge로 가져오기 |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox로 가져오기 (지원되지 않음) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
