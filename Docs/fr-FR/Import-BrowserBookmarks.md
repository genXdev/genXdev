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
| `-InputFile` | String | — | — | 0 | — | Chemin vers le fichier CSV contenant les signets à importer *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Collection de signets à importer *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importer dans Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Importer dans Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importer dans Firefox (non pris en charge) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
