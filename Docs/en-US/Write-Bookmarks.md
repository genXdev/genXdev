# Write-Bookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Imports bookmarks from a file or collection into a web browser.

## Description

Imports bookmarks into Microsoft Edge or Google Chrome from either a CSV file or
a collection of bookmark objects. The bookmarks are added to the browser's
bookmark bar or specified folders. Firefox import is not currently supported.

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
