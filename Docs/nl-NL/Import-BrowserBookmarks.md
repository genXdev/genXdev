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
| `-InputFile` | String | — | — | 0 | — | Pad naar CSV-bestand met bladwijzers om te importeren *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Verzameling bladwijzers om te importeren *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importeren in Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Importeren in Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importeren in Firefox (niet ondersteund) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
