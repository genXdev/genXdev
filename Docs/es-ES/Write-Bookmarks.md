# Write-Bookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importa marcadores desde un archivo o colección a un navegador web.

## Description

Importa marcadores en Microsoft Edge o Google Chrome desde un archivo CSV o una colección de objetos de marcador. Los marcadores se agregan a la barra de marcadores del navegador o a carpetas específicas. Actualmente, la importación desde Firefox no está soportada.

## Syntax

```powershell
Write-Bookmarks -BookmarksFilePath <String> -BookmarksToWrite <Array> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BookmarksFilePath` | String | ✅ | — | 0 | — | The `-BookmarksFilePath` parameter. |
| `-BookmarksToWrite` | Array | ✅ | — | 1 | — | The `-BookmarksToWrite` parameter. |

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

- [Write-Bookmarks on GitHub](https://github.com/genXdev/genXdev)
