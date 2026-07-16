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
| `-InputFile` | String | — | — | 0 | — | Caminho para o arquivo CSV com marcadores para importar *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Coleção de favoritos para importar *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importar para o Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Importar para o Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importar para o Firefox (não suportado) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
