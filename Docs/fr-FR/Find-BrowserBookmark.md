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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Termes de recherche pour trouver des signets correspondants 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Search through Microsoft Edge bookmarks |
| `-Chrome` | SwitchParameter | — | — | Named | — | Search through Google Chrome bookmarks |
| `-Firefox` | SwitchParameter | — | — | Named | — | Rechercher dans les signets Firefox |
| `-Count` | Int32 | — | — | Named | `99999999` | Nombre maximum de résultats à retourner |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return bookmark objects instead of just URLs |

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
