# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Путь к каталогу с файлами сниппетов букмарклета |
| `-TargetFolder` | String | — | — | 1 | `""` | Целевая папка закладок в структуре закладок браузера |
| `-Edge` | SwitchParameter | — | — | Named | — | Импорт букмарклетов в браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Импорт букмарклетов в браузер Google Chrome |
| `-Firefox` | SwitchParameter | — | — | Named | — | Импорт букмарклетов в браузер Mozilla Firefox |

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
