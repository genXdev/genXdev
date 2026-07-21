# Get-PlaywrightProfileDirectory

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يحصل على دليل ملف تعريف متصفح Playwright للجلسات المستمرة.

## Description

* ينشئ ويدير أدلة ملفات تعريف المتصفح لاختبار الأتمتة باستخدام Playwright.
* يتم تخزين ملفات التعريف في LocalAppData ضمن GenXdev.Powershell\Playwright.profiles.
* كل قيمة BrowserType تحصل على دليل فرعي خاص بها، مما يبقي ملفات تعريف المتصفح الحقيقية (ChromeNormal, EdgeNormal) منفصلة عن ملفات تعريف Playwright المضمنة (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).

## Syntax

```powershell
Get-PlaywrightProfileDirectory [[-BrowserType] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | — | نوع المتصفح: ChromeNormal، EdgeNormal، ChromiumNormal، ChromiumPlaywright، FirefoxPlaywright، أو WebKitPlaywright |

## Examples

### Example 1

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

ينشئ أو يعيد مسار ملف تعريف متصفح Chrome المثبت من قبل نظام التشغيل.

### Example 2

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

إنشاء أو إرجاع مسار ملف التعريف لمتصفح Chromium المكتشف تلقائياً.

### Example 3

```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

ينشئ أو يُرجع مسار ملف تعريف Chromium الخاص بـ Playwright المضمن.

## Parameter Details

### `-BrowserType <String>`

> نوع المتصفح: ChromeNormal، EdgeNormal، ChromiumNormal، ChromiumPlaywright، FirefoxPlaywright، أو WebKitPlaywright

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Connect-PlaywrightViaDebuggingPort.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Unprotect-WebbrowserTab.md)
