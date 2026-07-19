# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importeert bladwijzers uit een bestand of verzameling naar een webbrowser.

## Description

Importeert bladwijzers in Microsoft Edge of Google Chrome vanuit een CSV-bestand of een verzameling bladwijzerobjecten. De bladwijzers worden toegevoegd aan de bladwijzerbalk van de browser of aan opgegeven mappen. Firefox-import wordt momenteel niet ondersteund.

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
