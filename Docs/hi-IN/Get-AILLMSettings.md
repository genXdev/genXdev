# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI में AI संचालनों के लिए LLM सेटिंग्स प्राप्त करता है।

## Description

यह फ़ंक्शन GenXdev.AI मॉड्यूल द्वारा विभिन्न AI संचालनों के लिए उपयोग की जाने वाली LLM (लार्ज लैंग्वेज मॉडल) सेटिंग्स को पुनर्प्राप्त करता है। सेटिंग्स सत्र चर, स्थायी प्राथमिकताएँ, या डिफ़ॉल्ट सेटिंग्स JSON फ़ाइल से, इसी प्राथमिकता क्रम में, पुनर्प्राप्त की जाती हैं। फ़ंक्शन उपलब्ध सिस्टम मेमोरी संसाधनों के आधार पर स्वचालित कॉन्फ़िगरेशन चयन का समर्थन करता है।

मेमोरी चयन रणनीति प्रदान किए गए Gpu और Cpu मापदंडों के आधार पर स्वचालित रूप से निर्धारित की जाती है:
- यदि Gpu और Cpu दोनों मापदंड निर्दिष्ट हैं: संयुक्त CPU + GPU मेमोरी का उपयोग करें
- यदि केवल Gpu मापदंड निर्दिष्ट है: GPU मेमोरी को प्राथमिकता दें (सिस्टम RAM बैकअप के साथ)
- यदि केवल Cpu मापदंड निर्दिष्ट है: केवल सिस्टम RAM का उपयोग करें
- यदि कोई मापदंड निर्दिष्ट नहीं है: संयुक्त CPU + GPU मेमोरी का उपयोग करें (डिफ़ॉल्ट)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | सेटिंग्स प्राप्त करने के लिए LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | क्या एंडपॉइंट json_schema प्रतिक्रिया प्रारूप का समर्थन नहीं करता है |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | क्या यह एंडपॉइंट इमेज अपलोड फ़ंक्शन का समर्थन नहीं करता है |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | क्या एंडपॉइंट टूल कॉलिंग कार्यक्षमता का समर्थन नहीं करता है |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | भाषा, छवि संग्रह आदि जैसे AI वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | पुनर्प्राप्त करने से पहले सत्र सेटिंग (ग्लोबल वेरिएबल) साफ़ करें |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सत्र सेटिंग्स को छोड़ें और केवल प्राथमिकताओं या डिफ़ॉल्ट से प्राप्त करें |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

SimpleIntelligence क्वेरी प्रकार (डिफ़ॉल्ट) के लिए LLM सेटिंग्स प्राप्त करता है।

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

कोडिंग क्वेरी प्रकार के लिए LLM सेटिंग्स प्राप्त करता है।

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

प्राथमिकताओं या डिफ़ॉल्ट से LLM सेटिंग्स प्राप्त करता है, सत्र सेटिंग्स को अनदेखा करता है।

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> सेटिंग्स प्राप्त करने के लिए LLM क्वेरी का प्रकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema`

> क्या एंडपॉइंट json_schema प्रतिक्रिया प्रारूप का समर्थन नहीं करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> क्या यह एंडपॉइंट इमेज अपलोड फ़ंक्शन का समर्थन नहीं करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> क्या एंडपॉइंट टूल कॉलिंग कार्यक्षमता का समर्थन नहीं करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> भाषा, छवि संग्रह आदि जैसे AI वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> पुनर्प्राप्त करने से पहले सत्र सेटिंग (ग्लोबल वेरिएबल) साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> सत्र सेटिंग्स को छोड़ें और केवल प्राथमिकताओं या डिफ़ॉल्ट से प्राप्त करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

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
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-DeepLinkImageFile.md)
