# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importa favoritos de um arquivo ou coleção para um navegador da web.

## Description

Importa favoritos no Microsoft Edge ou Google Chrome a partir de um arquivo CSV ou de uma coleção de objetos de favoritos. Os favoritos são adicionados à barra de favoritos do navegador ou a pastas especificadas. A importação do Firefox não é suportada atualmente.

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
