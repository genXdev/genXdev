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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Termos de busca para encontrar favoritos correspondentes 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Pesquisar nos favoritos do Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | JSON |
| `-Firefox` | SwitchParameter | — | — | Named | — | Pesquisar nos favoritos do Firefox |
| `-Count` | Int32 | — | — | Named | `99999999` | Número máximo de resultados a retornar |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return bookmark objects instead of just URLs |

## Related Links

- [Find-BrowserBookmark on GitHub](https://github.com/genXdev/genXdev)
