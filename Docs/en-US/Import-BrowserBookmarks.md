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
| `-InputFile` | String | — | — | 0 | — | Path to CSV file with bookmarks to import *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Collection of bookmarks to import *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Import into Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Import into Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Import into Firefox (not supported) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
