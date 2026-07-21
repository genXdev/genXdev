# Set-GenXdevCommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> कस्टम कमांड न मिलने की हैंडलिंग को वैकल्पिक AI सहायता के साथ सेट करता है।

## Description

PowerShell को अज्ञात कमांड को संभालने के लिए कॉन्फ़िगर करता है, या तो निर्देशिकाओं पर नेविगेट करके या उपयोगकर्ता के इरादे की व्याख्या करने के लिए AI का उपयोग करके। हैंडलर पहले किसी भी मौजूदा कमांड नॉट फाउंड हैंडलर को आज़माता है, फिर जाँचता है कि कमांड नेविगेशन के लिए कोई मान्य पथ है या नहीं। AI रिज़ॉल्यूशन केवल तब सक्षम होता है जब -UseAIResolve स्विच स्पष्ट रूप से निर्दिष्ट किया गया हो।

## Syntax

```powershell
Set-GenXdevCommandNotFoundAction [[-LLMQueryType] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-NoPrompt] [-UseAIResolve] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'Coding'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | 1 | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | 2 | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | 3 | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | 4 | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-UseAIResolve` | SwitchParameter | — | — | Named | — | अज्ञात कमांडों का AI-संचालित समाधान सक्षम करें। |
| `-NoPrompt` | SwitchParameter | — | — | Named | — | इंटेंट प्रॉम्प्ट को छोड़ें और AI क्वेरी के रूप में सीधे कमांड नाम का उपयोग करें (-UseAIResolve की आवश्यकता है)। |

## Examples

### Set-GenXdevCommandNotFoundAction -UseAIResolve

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve
```

अज्ञात कमांड के लिए इंटरैक्टिव प्रॉम्प्टिंग के साथ AI समाधान सक्षम करता है।

### Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt
```

AI समाधान सक्षम करता है जहाँ अज्ञात कमांड सीधे AI को भेजा जाता है बिना उपयोगकर्ता से पूछे कि उनका क्या मतलब है।

## Parameter Details

### `-LLMQueryType <String>`

> LLM क्वेरी का प्रकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI संचालन के लिए API एंडपॉइंट URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> प्रमाणित AI संचालनों के लिए API कुंजी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseAIResolve`

> अज्ञात कमांडों का AI-संचालित समाधान सक्षम करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoPrompt`

> इंटेंट प्रॉम्प्ट को छोड़ें और AI क्वेरी के रूप में सीधे कमांड नाम का उपयोग करें (-UseAIResolve की आवश्यकता है)।

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AILLMSettings.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-DeepLinkImageFile.md)
