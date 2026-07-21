# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> लगातार सत्रों के लिए Playwright ब्राउज़र प्रोफ़ाइल निर्देशिका प्राप्त करता है।

## Description

* Playwright स्वचालित परीक्षण के लिए ब्राउज़र प्रोफ़ाइल निर्देशिकाएँ बनाता और प्रबंधित करता है।
* प्रोफ़ाइलें LocalAppData के अंतर्गत GenXdev.Powershell\Playwright.profiles में संग्रहीत की जाती हैं।
* प्रत्येक BrowserType मान को अपनी उप-निर्देशिका मिलती है, जो वास्तविक ब्राउज़र प्रोफ़ाइलों (ChromeNormal, EdgeNormal) को बंडल किए गए Playwright प्रोफ़ाइलों (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright) से अलग रखती है।

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | ब्राउज़र प्रकार: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright, या WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

OS-स्थापित Chrome ब्राउज़र प्रोफ़ाइल के लिए पथ बनाता या लौटाता है।

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

स्वतः पहचाने गए Chromium ब्राउज़र प्रोफ़ाइल के लिए पथ बनाता है या लौटाता है।

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

बंडल किए गए Playwright Chromium प्रोफ़ाइल के लिए पथ बनाता या लौटाता है।

## Parameter Details

### `-BrowserType <String>`

> ब्राउज़र प्रकार: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright, या WebKitPlaywright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unprotect-WebbrowserTab.md)
