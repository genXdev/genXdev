# Write-Bookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Импортирует закладки из файла или коллекции в веб-браузер.

## Description

Импортирует закладки в Microsoft Edge или Google Chrome из CSV-файла или коллекции объектов закладок. Закладки добавляются на панель закладок браузера или в указанные папки. Импорт из Firefox в настоящее время не поддерживается.

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
