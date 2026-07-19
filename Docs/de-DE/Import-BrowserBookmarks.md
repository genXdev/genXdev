# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importiert Lesezeichen aus einer Datei oder Sammlung in einen Webbrowser.

## Description

Importiert Lesezeichen in Microsoft Edge oder Google Chrome aus einer CSV-Datei oder einer Sammlung von Lesezeichenobjekten. Die Lesezeichen werden der Lesezeichenleiste des Browsers oder angegebenen Ordnern hinzugefügt. Der Firefox-Import wird derzeit nicht unterstützt.

## Syntax

```powershell
Import-BrowserBookmarks [[-InputFile] <String>] [<CommonParameters>]

Import-BrowserBookmarks [[-Bookmarks] <Array>] [<CommonParameters>]

Import-BrowserBookmarks [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputFile` | String | — | — | 0 | — | Pfad zur CSV-Datei mit Lesezeichen zum Importieren *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Sammlung von Lesezeichen zum Importieren *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | In Google Chrome importieren |
| `-Edge` | SwitchParameter | — | — | Named | — | Import in Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | In Firefox importieren (nicht unterstützt) |

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
