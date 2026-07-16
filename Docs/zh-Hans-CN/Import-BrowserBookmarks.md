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
| `-InputFile` | String | — | — | 0 | — | 要导入的书签CSV文件路径 *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | 导入的书签集合 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | 导入到 Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | 导入到 Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | 导入到 Firefox（不支持） |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
