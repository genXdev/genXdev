# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Kalıcı oturumlar için Playwright tarayıcı profil dizinini alır.

## Description

* Playwright otomatik testleri için tarayıcı profili dizinlerini oluşturur ve yönetir.
* Profiller LocalAppData altında GenXdev.Powershell\Playwright.profiles dizininde saklanır.
* Her BrowserType değeri kendi alt dizinini alır, gerçek tarayıcı profillerini (ChromeNormal, EdgeNormal) paketlenmiş Playwright profillerinden (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright) ayırır.

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | Tarayıcı türü: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright veya WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

İşletim sistemi tarafından yüklenmiş Chrome tarayıcı profili için yol oluşturur veya döndürür.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Otomatik algılanan Chromium tarayıcı profili için yol oluşturur veya döndürür.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Paketlenmiş Playwright Chromium profili için yolu oluşturur veya döndürür.

## Parameter Details

### `-BrowserType <String>`

> Tarayıcı türü: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright veya WebKitPlaywright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Unprotect-WebbrowserTab.md)
