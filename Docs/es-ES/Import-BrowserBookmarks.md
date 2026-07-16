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
| `-InputFile` | String | — | — | 0 | — | Ruta al archivo CSV con marcadores para importar *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Colección de marcadores para importar *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importar a Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Importar a Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importar en Firefox (no compatible) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
