# Set-BrowserVideoFullscreen

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `fsvideo

## Synopsis

> Maximizes the first video element found in the current browser tab.

## Description

Executes JavaScript code to locate and maximize the first video element on the
current webpage. The video is set to cover the entire viewport with maximum
z-index to ensure visibility. Page scrollbars are hidden for a clean fullscreen
experience.

## Syntax

```powershell
Set-BrowserVideoFullscreen [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Use Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Firefox browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use the Playwright-managed WebKit browser |

## Examples

### Set-BrowserVideoFullscreen

```powershell
Set-BrowserVideoFullscreen
```

## Related Links

- [Set-BrowserVideoFullscreen on GitHub](https://github.com/genXdev/genXdev)
