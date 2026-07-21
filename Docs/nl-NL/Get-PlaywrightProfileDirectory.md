# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt de Playwright-browserprofielmap op voor persistente sessies.

## Description

* Maakt beheerprofielen voor browserprofielen voor Playwright geautomatiseerd testen.
* Profielen worden opgeslagen in LocalAppData onder
  GenXdev.Powershell\Playwright.profiles.
* Elke BrowserType-waarde krijgt zijn eigen submap, waardoor echte browserprofielen
  (ChromeNormal, EdgeNormal) gescheiden blijven van gebundelde Playwright-profielen
  (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Het browsertype: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright of WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Maakt het pad aan of retourneert het voor het door het besturingssysteem geïnstalleerde Chrome-browserprofiel.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Maakt of retourneert het pad voor het automatisch gedetecteerde Chromium-browserprofiel.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Maakt het pad aan of retourneert het pad voor het gebundelde Playwright Chromium-profiel.

## Parameter Details

### `-BrowserType <String>`

> Het browsertype: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright of WebKitPlaywright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Unprotect-WebbrowserTab.md)
