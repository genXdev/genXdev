# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> Navigates the current web browser tab to a specified URL.

## Description

Устанавливает местоположение (URL) текущей выбранной вкладки веб-браузера. Поддерживает оба браузера Edge и Chrome через опциональные переключатели. Навигация включает проверку URL и обеспечивает правильную загрузку страницы с помощью асинхронных операций.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

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
| `-Chromium` | SwitchParameter | — | — | Named | — | Выполните навигацию с помощью Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Выполните навигацию с помощью браузера Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Выполните навигацию с помощью браузера WebKit, управляемого Playwright |
| `-Page` | Object | — | — | Named | — | Ссылка на объект страницы браузера |
| `-ByReference` | PSObject | — | — | Named | — | Объект ссылки на сессию браузера |

## Examples

### Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge

```powershell
Set-WebbrowserTabLocation -Url "https://github.com/microsoft" -Edge
```

### "https://github.com/microsoft" | lt -ch

```powershell
"https://github.com/microsoft" | lt -ch
```

## Related Links

- [Set-WebbrowserTabLocation on GitHub](https://github.com/genXdev/genXdev)
