# Write-Bookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importeert bladwijzers uit een bestand of verzameling naar een webbrowser.

## Description

Importeert bladwijzers in Microsoft Edge of Google Chrome vanuit een CSV-bestand of een verzameling bladwijzerobjecten. De bladwijzers worden toegevoegd aan de bladwijzerbalk van de browser of aan opgegeven mappen. Firefox-import wordt momenteel niet ondersteund.

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
