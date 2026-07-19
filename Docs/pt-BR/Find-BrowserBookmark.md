# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> Encontra favoritos de um ou mais navegadores da web.

## Description

Pesquisa em favoritos do Microsoft Edge, Google Chrome ou Mozilla Firefox.
Retorna favoritos que correspondem a uma ou mais consultas de pesquisa em seu nome, URL ou
caminho de pasta. Se nenhuma consulta for fornecida, retorna todos os favoritos dos navegadores selecionados.

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
