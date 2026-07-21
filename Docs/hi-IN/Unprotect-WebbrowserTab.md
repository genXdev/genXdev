# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl`

## Synopsis

> चयनित वेब ब्राउज़र टैब को इंटरैक्टिव हेरफेर के लिए नियंत्रण में लेता है।

## Description

यह फ़ंक्शन पहले Select-WebbrowserTab का उपयोग करके चुने गए ब्राउज़र टैब का इंटरैक्टिव नियंत्रण सक्षम करता है। यह Microsoft Playwright Page ऑब्जेक्ट के गुणों और विधियों तक सीधी पहुँच प्रदान करता है, जिससे स्वचालित ब्राउज़र इंटरैक्शन संभव होता है।

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | नया टैब चुनने के बजाय वर्तमान टैब का उपयोग करें *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | यदि कोई डिबगिंग सर्वर का पता नहीं चलता है तो ब्राउज़र को पुनः आरंभ करें *(Parameter set: )* |

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

> नया टैब चुनने के बजाय वर्तमान टैब का उपयोग करें

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

> यदि कोई डिबगिंग सर्वर का पता नहीं चलता है तो ब्राउज़र को पुनः आरंभ करें

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-WebbrowserVideos.md)
