# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata

## Synopsis

> Clears all browser storage data for the current tab in Edge or Chrome.

## Description

The Clear-WebbrowserTabSiteApplicationData cmdlet executes a JavaScript snippet
that clears various types of browser storage for the current tab, including:
- Local storage
- Session storage
- Cookies
- IndexedDB databases
- Cache storage
- Service worker registrations

## Syntax

```powershell
Clear-WebbrowserTabSiteApplicationData [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Clear in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Clear in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Clear in Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Clear in Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Clear in the Playwright-managed WebKit browser |

## Examples

### Clear-WebbrowserTabSiteApplicationData -Edge Clears all browser storage data in the current Edge tab.

```powershell
Clear-WebbrowserTabSiteApplicationData -Edge
Clears all browser storage data in the current Edge tab.
```

### clearsitedata -Chrome Clears all browser storage data in the current Chrome tab using the alias. ##############################################################################

```powershell
clearsitedata -Chrome
Clears all browser storage data in the current Chrome tab using the alias.
##############################################################################
```

## Related Links

- [Clear-WebbrowserTabSiteApplicationData on GitHub](https://github.com/genXdev/genXdev)
