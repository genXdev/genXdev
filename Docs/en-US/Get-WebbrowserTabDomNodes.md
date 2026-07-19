# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> Queries and manipulates DOM nodes in the active browser tab using CSS selectors.

## Description

Uses browser automation to find elements matching a CSS selector and returns their
HTML content or executes custom JavaScript on each matched element. This function
is useful for web scraping and browser automation tasks.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | The query selector string or array of strings to use for selecting DOM nodes |
| `-ModifyScript` | String | — | — | 1 | `''` | The script to modify the output of the query selector, e.g. e.outerHTML or e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Use Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Firefox browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use the Playwright-managed WebKit browser |
| `-Page` | Object | — | — | Named | — | Browser page object reference for targeting a specific tab |
| `-ByReference` | PSObject | — | — | Named | — | Browser session reference object for reusing an existing browser session |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevent automatic tab selection |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
