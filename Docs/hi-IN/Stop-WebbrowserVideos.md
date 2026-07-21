# Stop-WebbrowserVideos

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbsst`, `ssst`, `wbvideostop`

## Synopsis

> सभी सक्रिय ब्राउज़र सत्रों में वीडियो प्लेबैक को रोकता है।

## Description

सभी सक्रिय ब्राउज़र सत्रों के माध्यम से पुनरावृत्त करता है और जावास्क्रिप्ट कमांड निष्पादित करके किसी भी चल रहे वीडियो को रोकता है। फ़ंक्शन मूल सत्र स्थिति बनाए रखता है और त्रुटियों को सुचारू रूप से संभालता है।

## Syntax

```powershell
Stop-WebbrowserVideos [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज में खुलता है |
| `-Chrome` | SwitchParameter | — | — | Named | — | गूगल क्रोम में खुलता है |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge या Google Chrome में खुलता है, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है |
| `-Firefox` | SwitchParameter | — | — | Named | — | फ़ायरफ़ॉक्स में खोलता है |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित WebKit ब्राउज़र का उपयोग करता है |

## Examples

### Stop-WebbrowserVideos

```powershell
Stop-WebbrowserVideos
```

### wbsst ##############################################################################

```powershell
wbsst
##############################################################################
```

## Parameter Details

### `-Edge`

> माइक्रोसॉफ्ट एज में खुलता है

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

> गूगल क्रोम में खुलता है

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

> Microsoft Edge या Google Chrome में खुलता है, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है

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

> फ़ायरफ़ॉक्स में खोलता है

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

> Playwright-प्रबंधित WebKit ब्राउज़र का उपयोग करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Resume-WebbrowserTabVideo.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unprotect-WebbrowserTab.md)
