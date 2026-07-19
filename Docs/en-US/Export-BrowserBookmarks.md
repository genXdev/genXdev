# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Exports browser bookmarks to a JSON file.

## Description

The Export-BrowserBookmarks cmdlet exports bookmarks from a specified web browser
(Microsoft Edge, Google Chrome, or Mozilla Firefox) to a JSON file. Only one
browser type can be specified at a time. The bookmarks are exported with full
preservation of their structure and metadata.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | Path to the JSON file where bookmarks will be saved |
| `-Chrome` | SwitchParameter | — | — | Named | — | Export bookmarks from Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Export bookmarks from Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Export bookmarks from Mozilla Firefox *(Parameter set: )* |

## Examples

### Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge

```powershell
Export-BrowserBookmarks -OutputFile "C:\MyBookmarks.json" -Edge
```

### Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome

```powershell
Export-BrowserBookmarks "C:\MyBookmarks.json" -Chrome
```

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
