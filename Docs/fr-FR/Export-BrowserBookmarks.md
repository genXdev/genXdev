# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
