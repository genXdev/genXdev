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
| `-InputFile` | String | — | — | 0 | — | Pfad zur CSV-Datei mit Lesezeichen zum Importieren *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Sammlung von Lesezeichen zum Importieren *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | In Google Chrome importieren |
| `-Edge` | SwitchParameter | — | — | Named | — | Import in Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | In Firefox importieren (nicht unterstützt) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
