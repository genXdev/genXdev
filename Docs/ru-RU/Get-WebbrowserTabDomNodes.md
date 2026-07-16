# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Edge] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | Строка или массив строк запроса для выбора узлов DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | The script to modify the output of the query selector, e.g. e.outerHTML or e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Используйте браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Используйте браузер Google Chrome |
| `-Page` | Object | — | — | Named | — | Ссылка на объект страницы браузера |
| `-ByReference` | PSObject | — | — | Named | — | Объект ссылки на сессию браузера |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Предотвратить автоматический выбор вкладок |

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
