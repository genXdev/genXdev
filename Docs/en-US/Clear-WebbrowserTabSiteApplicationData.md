# Clear-WebbrowserTabSiteApplicationData

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `clearsitedata`

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

## Parameter Details

### `-Edge`

> Clear in Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Clear in Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Clear in Microsoft Edge or Google Chrome, depending on what the default browser is

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Clear in Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Clear in the Playwright-managed WebKit browser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-WebsiteInAllBrowsers.md)
