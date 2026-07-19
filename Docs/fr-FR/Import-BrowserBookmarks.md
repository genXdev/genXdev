# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importe des signets à partir d'un fichier ou d'une collection dans un navigateur web.

## Description

Importe des signets dans Microsoft Edge ou Google Chrome à partir d'un fichier CSV ou d'une collection d'objets signet. Les signets sont ajoutés à la barre de favoris du navigateur ou à des dossiers spécifiés. L'importation depuis Firefox n'est actuellement pas prise en charge.

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
