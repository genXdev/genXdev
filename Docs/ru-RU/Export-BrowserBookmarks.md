# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Экспортирует закладки браузера в JSON-файл.

## Description

Командлет Export-BrowserBookmarks экспортирует закладки из указанного веб-браузера (Microsoft Edge, Google Chrome или Mozilla Firefox) в JSON-файл. За один раз можно указать только один тип браузера. Закладки экспортируются с полным сохранением их структуры и метаданных.

## Syntax

```powershell
Export-BrowserBookmarks -OutputFile <String> [-Chrome] [-Edge] [<CommonParameters>]

Export-BrowserBookmarks [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFile` | String | ✅ | — | 0 | — | Путь к JSON-файлу, в котором будут сохранены закладки |
| `-Chrome` | SwitchParameter | — | — | Named | — | Экспорт закладок из Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Экспорт закладок из Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Экспорт закладок из Mozilla Firefox *(Parameter set: )* |

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
