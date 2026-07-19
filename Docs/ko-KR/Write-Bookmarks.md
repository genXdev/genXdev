# Write-Bookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 파일이나 컬렉션에서 북마크를 웹 브라우저로 가져옵니다.

## Description

CSV 파일 또는 북마크 객체 모음에서 Microsoft Edge나 Google Chrome으로 북마크를 가져옵니다. 북마크는 브라우저의 북마크 바나 지정된 폴더에 추가됩니다. Firefox 가져오기는 현재 지원되지 않습니다.

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
