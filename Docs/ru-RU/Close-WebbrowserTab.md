# Close-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `ct, `CloseTab

## Synopsis

> Закрывает текущую выбранную вкладку веб-браузера.

## Description

Закрывает текущую выбранную вкладку веб-браузера с помощью метода CloseAsync() ChromeDriver. Если вкладка не выбрана, функция автоматически попытается выбрать последнюю использовавшуюся вкладку перед закрытием.

## Syntax

```powershell
Close-WebbrowserTab [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Перейдите в браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigate using Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Открывается в Microsoft Edge или Google Chrome, в зависимости от того, какой браузер установлен по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Открывается в Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Использует управляемый Playwright браузер WebKit |

## Examples

### Close-WebbrowserTab Closes the currently active browser tab

```powershell
Close-WebbrowserTab
Closes the currently active browser tab
```

### ct Uses the alias to close the currently active browser tab

```powershell
ct
Uses the alias to close the currently active browser tab
```

## Related Links

- [Close-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
