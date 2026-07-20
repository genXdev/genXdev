# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the Playwright browser profile directory for persistent sessions.

## Description

* Creates and manages browser profile directories for Playwright automated
  testing.
* Profiles are stored in LocalAppData under
  GenXdev.Powershell\Playwright.profiles.
* Each BrowserType value gets its own subdirectory, keeping real-browser
  profiles (ChromeNormal, EdgeNormal) separate from bundled Playwright
  profiles (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | The browser type: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright, or WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Creates or returns path for the OS-installed Chrome browser profile.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Creates or returns path for the auto-detected Chromium browser profile.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Creates or returns path for the bundled Playwright Chromium profile.

## Parameter Details

### `-BrowserType <String>`

> The browser type: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright, or WebKitPlaywright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Connect-PlaywrightViaDebuggingPort.md)
- [ensurePlaywright](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ensurePlaywright.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Unprotect-WebbrowserTab.md)
