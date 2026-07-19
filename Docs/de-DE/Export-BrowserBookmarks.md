# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Exportiert Browser-Lesezeichen in eine JSON-Datei.

## Description

Das Cmdlet Export-BrowserBookmarks exportiert Lesezeichen aus einem angegebenen Webbrowser (Microsoft Edge, Google Chrome oder Mozilla Firefox) in eine JSON-Datei. Es kann jeweils nur ein Browsertyp angegeben werden. Die Lesezeichen werden unter vollständiger Beibehaltung ihrer Struktur und Metadaten exportiert.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | Pfad zur JSON-Datei, in der Lesezeichen gespeichert werden |
| `-Chrome` | SwitchParameter | — | — | Named | — | Lesezeichen aus Google Chrome exportieren |
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
