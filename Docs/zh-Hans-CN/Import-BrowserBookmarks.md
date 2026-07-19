# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> 将文件或收藏集中的书签导入网页浏览器中。

## Description

从CSV文件或书签对象集合导入书签到Microsoft Edge或Google Chrome。书签会添加到浏览器的书签栏或指定文件夹中。目前不支持Firefox导入。

## Syntax

```powershell
Import-BrowserBookmarks [[-InputFile] <String>] [<CommonParameters>]

Import-BrowserBookmarks [[-Bookmarks] <Array>] [<CommonParameters>]

Import-BrowserBookmarks [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputFile` | String | — | — | 0 | — | 要导入的书签CSV文件路径 *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | 导入的书签集合 *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | 导入到 Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | 导入到 Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | 导入到 Firefox（不支持） |

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
