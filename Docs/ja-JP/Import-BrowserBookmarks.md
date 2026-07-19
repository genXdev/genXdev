# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> ファイルまたはコレクションからブックマークをウェブブラウザにインポートします。

## Description

CSVファイルまたはブックマークオブジェクトのコレクションから、Microsoft EdgeまたはGoogle Chromeにブックマークをインポートします。ブックマークはブラウザのブックマークバーまたは指定されたフォルダに追加されます。Firefoxからのインポートは現在サポートされていません。

## Syntax

```powershell
Import-BrowserBookmarks [[-InputFile] <String>] [<CommonParameters>]

Import-BrowserBookmarks [[-Bookmarks] <Array>] [<CommonParameters>]

Import-BrowserBookmarks [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputFile` | String | — | — | 0 | — | インポートするブックマークのCSVファイルへのパス *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | インポートするブックマークのコレクション *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome にインポート |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge にインポート |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox にインポート（非対応） |

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
