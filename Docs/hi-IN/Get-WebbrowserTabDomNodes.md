# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl`

## Synopsis

> CSS चयनकों का उपयोग करके सक्रिय ब्राउज़र टैब में DOM नोड्स को क्वेरी और हेरफेर करता है।

## Description

ब्राउज़र ऑटोमेशन का उपयोग करके CSS चयनकर्ता से मेल खाने वाले तत्वों को ढूंढता है और उनकी HTML सामग्री लौटाता है या प्रत्येक मिलान किए गए तत्व पर कस्टम JavaScript निष्पादित करता है। यह फ़ंक्शन वेब स्क्रैपिंग और ब्राउज़र ऑटोमेशन कार्यों के लिए उपयोगी है।

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | डोम नोड्स चुनने के लिए उपयोग किया जाने वाला क्वेरी सिलेक्टर स्ट्रिंग या स्ट्रिंग्स की सारणी |
| `-ModifyScript` | String | — | — | 1 | `''` | क्वेरी चयनकर्ता के आउटपुट को संशोधित करने के लिए स्क्रिप्ट, जैसे e.outerHTML या e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज ब्राउज़र का उपयोग करें |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ब्राउज़र का उपयोग करें |
| `-Chromium` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज या गूगल क्रोम का उपयोग करें, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है |
| `-Firefox` | SwitchParameter | — | — | Named | — | फ़ायरफ़ॉक्स ब्राउज़र का उपयोग करें |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित WebKit ब्राउज़र का उपयोग करें |
| `-Page` | Object | — | — | Named | — | किसी विशिष्ट टैब को लक्षित करने के लिए ब्राउज़र पृष्ठ ऑब्जेक्ट संदर्भ |
| `-ByReference` | PSObject | — | — | Named | — | मौजूदा ब्राउज़र सत्र को पुनः उपयोग करने के लिए ब्राउज़र सत्र संदर्भ वस्तु |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | स्वचालित टैब चयन रोकें |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Parameter Details

### `-QuerySelector <String[]>`

> डोम नोड्स चुनने के लिए उपयोग किया जाने वाला क्वेरी सिलेक्टर स्ट्रिंग या स्ट्रिंग्स की सारणी

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifyScript <String>`

> क्वेरी चयनकर्ता के आउटपुट को संशोधित करने के लिए स्क्रिप्ट, जैसे e.outerHTML या e.outerHTML='hello world'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> माइक्रोसॉफ्ट एज ब्राउज़र का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Google Chrome ब्राउज़र का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> माइक्रोसॉफ्ट एज या गूगल क्रोम का उपयोग करें, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> फ़ायरफ़ॉक्स ब्राउज़र का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Playwright-प्रबंधित WebKit ब्राउज़र का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Object>`

> किसी विशिष्ट टैब को लक्षित करने के लिए ब्राउज़र पृष्ठ ऑब्जेक्ट संदर्भ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ByReference <PSObject>`

> मौजूदा ब्राउज़र सत्र को पुनः उपयोग करने के लिए ब्राउज़र सत्र संदर्भ वस्तु

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoAutoSelectTab`

> स्वचालित टैब चयन रोकें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Webbrowser.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Import-GenXdevBookmarkletMenu.md)
- [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WebbrowserEvaluation.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-WebsiteInAllBrowsers.md)
