# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> Максимизирует первый элемент видео, найденный на текущей вкладке браузера.

## Description

Выполняет JavaScript-код для поиска и разворачивания первого видеоэлемента на текущей веб-странице. Видео устанавливается так, чтобы занимать весь видимый экран с максимальным z-index для обеспечения видимости. Полосы прокрутки страницы скрываются для чистого полноэкранного просмотра.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Используйте браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Используйте браузер Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Используйте Microsoft Edge или Google Chrome, в зависимости от того, какой браузер является браузером по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Используйте браузер Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Используйте браузер WebKit, управляемый Playwright |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)
