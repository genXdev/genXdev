# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-NoAutoSelectTab] [-Page <Object>] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | URL для перехода |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Предотвратить автоматический выбор вкладок |
| `-Edge` | SwitchParameter | — | — | Named | — | Перейдите в браузер Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigate using Google Chrome browser *(Parameter set: )* |
| `-Page` | Object | — | — | Named | — | Ссылка на объект страницы браузера |
| `-ByReference` | PSObject | — | — | Named | — | Объект ссылки на сессию браузера |

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
