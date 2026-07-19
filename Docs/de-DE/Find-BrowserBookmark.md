# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> Sucht Lesezeichen aus einem oder mehreren Webbrowsern.

## Description

Durchsucht Lesezeichen aus Microsoft Edge, Google Chrome oder Mozilla Firefox.
Gibt Lesezeichen zurück, die mit einer oder mehreren Suchanfragen im Namen, in der URL oder im Ordnerpfad übereinstimmen. Wenn keine Suchanfragen angegeben werden, werden alle Lesezeichen aus den ausgewählten Browsern zurückgegeben.

## Syntax

```powershell
Find-BrowserBookmark [[-Queries] <String[]>] [-Chrome] [-Count <Int32>] [-Edge] [-Firefox] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Suchbegriffe, um passende Lesezeichen zu finden 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Durch Microsoft Edge-Lesezeichen suchen |
| `-Chrome` | SwitchParameter | — | — | Named | — | Search through Google Chrome bookmarks |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox-Lesezeichen durchsuchen |
| `-Count` | Int32 | — | — | Named | `99999999` | Maximale Anzahl der zurückzugebenden Ergebnisse |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return bookmark objects instead of just URLs |

## Examples

### Find-BrowserBookmark -Query "github" -Edge -Chrome -Count 10 Searches Edge and Chrome bookmarks for "github", returns first 10 URLs

```powershell
Find-BrowserBookmark -Query "github" -Edge -Chrome -Count 10
Searches Edge and Chrome bookmarks for "github", returns first 10 URLs
```

### bookmarks powershell -e -ff -PassThru Searches Edge and Firefox bookmarks for "powershell", returns full objects

```powershell
bookmarks powershell -e -ff -PassThru
Searches Edge and Firefox bookmarks for "powershell", returns full objects
```

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
