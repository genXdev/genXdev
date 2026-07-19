# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Exporte les signets du navigateur vers un fichier JSON.

## Description

La cmdlet Export-BrowserBookmarks exporte les signets d'un navigateur web spécifié (Microsoft Edge, Google Chrome ou Mozilla Firefox) vers un fichier JSON. Un seul type de navigateur peut être spécifié à la fois. Les signets sont exportés avec une préservation complète de leur structure et de leurs métadonnées.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | Chemin vers le fichier JSON où les signets seront sauvegardés |
| `-Chrome` | SwitchParameter | — | — | Named | — | Exporter les favoris de Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Exporter les favoris depuis Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Exporter les signets de Mozilla Firefox *(Parameter set: )* |

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
