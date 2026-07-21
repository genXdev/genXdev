# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Pobiera katalog profilu przeglądarki Playwright dla trwałych sesji.

## Description

* Tworzy i zarządza katalogami profili przeglądarek do automatycznego testowania za pomocą Playwright.
* Profile są przechowywane w LocalAppData w ścieżce GenXdev.Powershell\Playwright.profiles.
* Każda wartość BrowserType otrzymuje własny podkatalog, oddzielając profile rzeczywistych przeglądarek (ChromeNormal, EdgeNormal) od dołączonych profili Playwright (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Typ przeglądarki: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright lub WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Tworzy lub zwraca ścieżkę do profilu przeglądarki Chrome zainstalowanej w systemie operacyjnym.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Tworzy lub zwraca ścieżkę do automatycznie wykrytego profilu przeglądarki Chromium.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Tworzy lub zwraca ścieżkę do pakietowego profilu przeglądarki Playwright Chromium.

## Parameter Details

### `-BrowserType <String>`

> Typ przeglądarki: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright lub WebKitPlaywright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Unprotect-WebbrowserTab.md)
