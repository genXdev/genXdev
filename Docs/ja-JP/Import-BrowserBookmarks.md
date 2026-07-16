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
| `-InputFile` | String | — | — | 0 | — | インポートするブックマークのCSVファイルへのパス *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | インポートするブックマークのコレクション *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome にインポート |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge にインポート |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox にインポート（非対応） |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
