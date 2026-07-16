# Export-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Export-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
