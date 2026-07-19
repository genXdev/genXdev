# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> Maximiert das erste Video-Element, das im aktuellen Browser-Tab gefunden wird.

## Description

Führt JavaScript-Code aus, um das erste Video-Element auf der aktuellen Webseite zu lokalisieren und zu maximieren. Das Video wird so eingestellt, dass es den gesamten Viewport mit maximalem z-index abdeckt, um Sichtbarkeit zu gewährleisten. Die Bildlaufleisten der Seite werden ausgeblendet, um ein sauberes Vollbild-Erlebnis zu ermöglichen.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Verwenden Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Verwenden Sie den Firefox-Browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwenden Sie den Playwright-verwalteten WebKit-Browser |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)
