# Import-BrowserBookmarks

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Import-BrowserBookmarks [[-InputFile] <String>] [<CommonParameters>]

Import-BrowserBookmarks [[-Bookmarks] <Array>] [<CommonParameters>]

Import-BrowserBookmarks [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputFile` | String | — | — | 0 | — | Путь к CSV-файлу с закладками для импорта *(Parameter set: )* |
| `-Bookmarks` | Array | — | — | 0 | — | Коллекция закладок для импорта *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Импортировать в Google Chrome |
| `-Edge` | SwitchParameter | — | — | Named | — | Import into Microsoft Edge |
| `-Firefox` | SwitchParameter | — | — | Named | — | Импорт в Firefox (не поддерживается) |

## Related Links

- [Import-BrowserBookmarks on GitHub](https://github.com/genXdev/genXdev)
