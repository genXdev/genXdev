# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> Vindt bladwijzers van een of meerdere webbrowsers.

## Description

Doorzoekt bladwijzers uit Microsoft Edge, Google Chrome of Mozilla Firefox.
Geeft bladwijzers terug die overeenkomen met een of meer zoekopdrachten in hun naam, URL of
mappad. Als er geen zoekopdrachten worden opgegeven, worden alle bladwijzers uit de geselecteerde
browsers geretourneerd.

## Syntax

```powershell
Find-BrowserBookmark [[-Queries] <String[]>] [-Chrome] [-Count <Int32>] [-Edge] [-Firefox] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Zoektermen om overeenkomende bladwijzers te vinden 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Zoek door Microsoft Edge-bladwijzers |
| `-Chrome` | SwitchParameter | — | — | Named | — | Search through Google Chrome bookmarks |
| `-Firefox` | SwitchParameter | — | — | Named | — | Search through Firefox bookmarks |
| `-Count` | Int32 | — | — | Named | `99999999` | Maximaal aantal terug te geven resultaten |
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
