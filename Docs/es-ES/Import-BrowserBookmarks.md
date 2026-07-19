# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importa marcadores desde un archivo o colección a un navegador web.

## Description

Importa marcadores en Microsoft Edge o Google Chrome desde un archivo CSV o una colección de objetos de marcador. Los marcadores se agregan a la barra de marcadores del navegador o a carpetas específicas. Actualmente, la importación desde Firefox no está soportada.

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

## Examples

### Import-BrowserBookmarks -InputFile "C:\MyBookmarks.csv" -Edge Imports bookmarks from the CSV file into Microsoft Edge.

```powershell
Import-BrowserBookmarks -InputFile "C:\MyBookmarks.csv" -Edge
Imports bookmarks from the CSV file into Microsoft Edge.
```

### $bookmarks = @(     @{         Name = "Microsoft";         URL = "https://microsoft.com";         Folder = "Tech"     } ) Import-BrowserBookmarks -Bookmarks $bookmarks -Chrome Imports a collection of bookmarks into Google Chrome.

```powershell
$bookmarks = @(
    @{
        Name = "Microsoft";
        URL = "https://microsoft.com";
        Folder = "Tech"
    }
)
Import-BrowserBookmarks -Bookmarks $bookmarks -Chrome
Imports a collection of bookmarks into Google Chrome.
```

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
