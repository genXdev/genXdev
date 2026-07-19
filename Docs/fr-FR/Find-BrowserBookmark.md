# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> Trouve des signets provenant d'un ou plusieurs navigateurs web.

## Description

Effectue une recherche dans les signets de Microsoft Edge, Google Chrome ou Mozilla Firefox.
Renvoie les signets qui correspondent à une ou plusieurs requêtes de recherche dans leur nom, URL ou
chemin de dossier. Si aucune requête n'est fournie, renvoie tous les signets des
navigateurs sélectionnés.

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
