# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
