# Connect-PlaywrightViaDebuggingPort

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** —

## Synopsis

> डिबगिंग पोर्ट के माध्यम से मौजूदा ब्राउज़र इंस्टेंस से कनेक्ट होता है।

## Description

वेबसॉकेट डीबगर URL का उपयोग करके क्रोमियम-आधारित ब्राउज़र के चल रहे इंस्टेंस से कनेक्शन स्थापित करता है। Playwright इंस्टेंस बनाता है और CDP (क्रोम डेवटूल्स प्रोटोकॉल) पर कनेक्ट होता है। कनेक्टेड ब्राउज़र इंस्टेंस को बाद के संदर्भ के लिए वैश्विक डिक्शनरी में संग्रहीत किया जाता है।

## Syntax

```powershell
Connect-PlaywrightViaDebuggingPort -WsEndpoint <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WsEndpoint` | String | ✅ | — | 0 | — | ब्राउज़र डिबगिंग कनेक्शन के लिए WebSocket URL |

## Examples

### Connect-PlaywrightViaDebuggingPort `     -WsEndpoint "ws://localhost:9222/devtools/browser/abc123" ##############################################################################

```powershell
Connect-PlaywrightViaDebuggingPort `
    -WsEndpoint "ws://localhost:9222/devtools/browser/abc123"
##############################################################################
```

## Parameter Details

### `-WsEndpoint <String>`

> ब्राउज़र डिबगिंग कनेक्शन के लिए WebSocket URL

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unprotect-WebbrowserTab.md)
