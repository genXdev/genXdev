# Set-WebbrowserTabLocation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `lt, `Nav

## Synopsis

> Navigates the current webbrowser tab to a specified URL.

## Description

Sets the location (URL) of the currently selected webbrowser tab. Supports both
Edge and Chrome browsers through optional switches. The navigation includes
validation of the URL and ensures proper page loading through async operations.

## Syntax

```powershell
Set-WebbrowserTabLocation -Url <String> [-ByReference <PSObject>] [-Chromium] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]

Set-WebbrowserTabLocation [-Edge] [<CommonParameters>]

Set-WebbrowserTabLocation [-Chrome] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Url` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The URL to navigate to |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |
| `-Edge` | SwitchParameter | — | — | Named | — | Navigate using Microsoft Edge browser *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Navigate using Google Chrome browser *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Navigate using Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Navigate using Firefox browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Navigate using the Playwright-managed WebKit browser |
| `-Page` | Object | — | — | Named | — | Browser page object reference |
| `-ByReference` | PSObject | — | — | Named | — | Browser session reference object |

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
