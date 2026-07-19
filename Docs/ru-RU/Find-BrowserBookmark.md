# Find-BrowserBookmark

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `bookmarks

## Synopsis

> Находит закладки из одного или нескольких веб-браузеров.

## Description

Выполняет поиск по закладкам из Microsoft Edge, Google Chrome или Mozilla Firefox. Возвращает закладки, соответствующие одному или нескольким поисковым запросам по имени, URL или пути папки. Если запросы не указаны, возвращает все закладки из выбранных браузеров.

## Syntax

```powershell
Find-BrowserBookmark [[-Queries] <String[]>] [-Chrome] [-Count <Int32>] [-Edge] [-Firefox] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Поисковые запросы для поиска соответствующих закладок 🌐 *Supports wildcards* |
| `-Edge` | SwitchParameter | — | — | Named | — | Поиск по закладкам Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Поиск по закладкам Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Search through Firefox bookmarks |
| `-Count` | Int32 | — | — | Named | `99999999` | Максимальное количество результатов для возврата |
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
