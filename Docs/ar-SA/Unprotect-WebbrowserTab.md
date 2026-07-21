# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl`

## Synopsis

> يتحكم في علامة تبويب متصفح ويب محددة للتلاعب التفاعلي.

## Description

تمكّن هذه الدالة التحكم التفاعلي في علامة تبويب المتصفح التي تم تحديدها مسبقًا باستخدام Select-WebbrowserTab. توفر وصولًا مباشرًا إلى خصائص وأساليب كائن صفحة Microsoft Playwright، مما يسمح بالتفاعل الآلي مع المتصفح.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | استخدام علامة التبويب الحالية بدلاً من تحديد علامة تبويب جديدة *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | إعادة تشغيل المتصفح إذا لم يتم اكتشاف خادم التصحيح *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Parameter Details

### `-UseCurrent`

> استخدام علامة التبويب الحالية بدلاً من تحديد علامة تبويب جديدة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `current` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-Force`

> إعادة تشغيل المتصفح إذا لم يتم اكتشاف خادم التصحيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Stop-WebbrowserVideos.md)
