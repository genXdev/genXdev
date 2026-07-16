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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Zoektermen om overeenkomende bladwijzers te vinden 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Zoek door Microsoft Edge-bladwijzers |
| `-Chrome` | SwitchParameter | — | — | Named | — | Search through Google Chrome bookmarks |
| `-Firefox` | SwitchParameter | — | — | Named | — | Search through Firefox bookmarks |
| `-Count` | Int32 | — | — | Named | `99999999` | Maximaal aantal terug te geven resultaten |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return bookmark objects instead of just URLs |

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
