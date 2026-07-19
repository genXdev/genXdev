# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Импортирует закладки из файла или коллекции в веб-браузер.

## Description

Импортирует закладки в Microsoft Edge или Google Chrome из CSV-файла или коллекции объектов закладок. Закладки добавляются на панель закладок браузера или в указанные папки. Импорт из Firefox в настоящее время не поддерживается.

## Syntax

```powershell
Import-BrowserBookmarks [[-InputFile] <String>] [<CommonParameters>]

Import-BrowserBookmarks [[-Bookmarks] <Array>] [<CommonParameters>]

Import-BrowserBookmarks [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputFile` | String | — | — | 0 | — | Путь к CSV-файлу с закладками для импорта *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Коллекция закладок для импорта *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Импортировать в Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Import into Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Импорт в Firefox (не поддерживается) |

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
