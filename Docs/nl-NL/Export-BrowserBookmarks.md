# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Exporteert browserbladwijzers naar een JSON-bestand.

## Description

De cmdlet Export-BrowserBookmarks exporteert bladwijzers uit een opgegeven webbrowser (Microsoft Edge, Google Chrome of Mozilla Firefox) naar een JSON-bestand. Er kan slechts één browsertype tegelijk worden opgegeven. De bladwijzers worden geëxporteerd met volledige behoud van hun structuur en metadata.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | Pad naar het JSON-bestand waar bladwijzers worden opgeslagen |
| `-Chrome` | SwitchParameter | — | — | Named | — | Bladwijzers exporteren uit Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Bladwijzers exporteren uit Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Bladwijzers exporteren uit Mozilla Firefox *(Parameter set: )* |

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
