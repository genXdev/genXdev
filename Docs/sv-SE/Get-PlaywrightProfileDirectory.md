# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Hämtar Playwright-webbläsarprofilkatalogen för beständiga sessioner.

## Description

* Skapar och hanterar webbläsarprofilsmappar för automatiserad testning med Playwright.
* Profiler lagras i LocalAppData under GenXdev.PowerShell\Playwright.profiles.
* Varje BrowserType-värde får en egen undermapp, vilket håller verkliga webbläsarprofiler (ChromeNormal, EdgeNormal) separata från medföljande Playwright-profiler (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Webbläsartyp: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright eller WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Skapar eller returnerar sökvägen för den OS-installerade Chrome-webbläsarprofilen.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Skapar eller returnerar sökväg för den automatiskt identifierade Chromium-webbläsarprofilen.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Skapar eller returnerar sökväg till den medföljande Playwright Chromium-profilen.

## Parameter Details

### `-BrowserType <String>`

> Webbläsartyp: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright eller WebKitPlaywright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Unprotect-WebbrowserTab.md)
