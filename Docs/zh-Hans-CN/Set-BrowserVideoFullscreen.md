# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> 最大化当前浏览器标签页中找到的第一个视频元素。

## Description

执行JavaScript代码，定位当前网页中的第一个视频元素并将其最大化。视频设置为覆盖整个视口，使用最大z-index确保可见性。页面滚动条被隐藏，以提供干净的全屏体验。

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | 请使用 Microsoft Edge 浏览器 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 请使用谷歌浏览器 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器是什么，使用 Microsoft Edge 或 Google Chrome。 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 使用 Firefox 浏览器 |
| `-Webkit` | SwitchParameter | — | — | Named | — | 使用 Playwright 管理的 WebKit 浏览器 |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)
