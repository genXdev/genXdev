# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext`

## Synopsis

> एआई-संचालित पहचान का उपयोग करके तार्किक भ्रांतियों की पहचान करने के लिए पाठ का विश्लेषण करता है।

## Description

यह फ़ंक्शन विकिपीडिया की भ्रांति सूची पर प्रशिक्षित AI मॉडल का उपयोग करके प्रदान किए गए पाठ में तार्किक भ्रांतियों का पता लगाने के लिए विश्लेषण करता है। यह प्रत्येक मिली भ्रांति के बारे में विस्तृत जानकारी देता है, जिसमें विशिष्ट उद्धरण, भ्रांति का नाम, विवरण, स्पष्टीकरण और औपचारिक वर्गीकरण शामिल है। फ़ंक्शन सुसंगत आउटपुट सुनिश्चित करने के लिए संरचित प्रतिक्रिया प्रारूप का उपयोग करता है।

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | पावरशेल सीएमडीलेट हेल्पटेक्स्ट्स को हिंदी (भारत) में अनुवाद करें। यदि इनपुट में कोड, मार्कअप या संरचित डेटा है, तो सभी सिंटैक्स, संरचना और तकनीकी तत्वों को संरक्षित करें। केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण या प्राकृतिक भाषा सामग्री का अनुवाद करें। सटीक फ़ॉर्मेटिंग, इंडेंटेशन और लाइन ब्रेक बनाए रखें। पहचानकर्ताओं, फ़ंक्शन नामों, वेरिएबल्स या तकनीकी कीवर्ड का कभी अनुवाद न करें। |
| `-Instructions` | String | — | — | 1 | `''` | एआई मॉडल के लिए स्ट्रिंग सूची उत्पन्न करने के निर्देश |
| `-Attachments` | String[] | — | — | 2 | `@()` | संलग्न करने के लिए फ़ाइल पथों की सरणी |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | फ़ंक्शन परिभाषाओं की सरणी |
| `-ImageDetail` | String | — | — | Named | `'low'` | इमेज डिटेल लेवल |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | उन कमांडों का सरणी जिनमें पुष्टि की आवश्यकता नहीं है |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | उपकरण के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी |
| `-Temperature` | Double | — | — | Named | `-1` | प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI संचालन के लिए सेकंड में टाइमआउट |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | स्थिति-पहचानकर्ता (सत्र आईडी) एक या अधिक विशिष्ट सत्रों की पहचान करता है। जै-से टर्मिनल सर्वर या दूरस्थ डेस्कटॉप सेवाओं द्वारा प्रदान किए गए सत्र। यह पैरामीटर सभी मौजूदा सत्रों की सूची को संदर्भित कर सकता है। अधिक विवरण के लिए, 'एक्स-विन-एनटी-360 /?' टाइप करें। |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | पॉवरशेल कमांडलेट सहायता टेक्स्ट का अनुवाद करने के लिए, मुझे मूल टेक्स्ट प्रदान करें। कृपया वह टेक्स्ट साझा करें जिसे आप अनुवाद करना चाहते हैं। |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | सत्र को सत्र कैश में संग्रहीत न करें |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | प्रत्येक परिणाम के लिए IMDB खोज खोलता है |
| `-AudioTemperature` | Double | — | — | Named | — | ऑडियो उत्पादन के लिए तापमान को नियंत्रित करता है। |
| `-TemperatureResponse` | Double | — | — | Named | — | प्रतिक्रिया उत्पादन के लिए तापमान को नियंत्रित करता है। |
| `-CpuThreads` | Int32 | — | — | Named | — | प्रोसेसिंग के लिए उपयोग करने के लिए CPU थ्रेड्स की संख्या। |
| `-SuppressRegex` | String | — | — | Named | — | कुछ आउटपुट को दबाने के लिए नियमित अभिव्यक्ति। |
| `-AudioContextSize` | Int32 | — | — | Named | — | प्रसंस्करण के लिए ऑडियो संदर्भ आकार। |
| `-SilenceThreshold` | Double | — | — | Named | — | ऑडियो में मौन का पता लगाने के लिए सीमा। |
| `-LengthPenalty` | Double | — | — | Named | — | लंबे उत्तरों पर लागू दंड। |
| `-EntropyThreshold` | Double | — | — | Named | — | प्रतिक्रिया निर्माण में एंट्रॉपी के लिए सीमा। |
| `-LogProbThreshold` | Double | — | — | Named | — | आउटपुट के लिए लॉग प्रायिकता सीमा। |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ऑडियो में कोई वॉयस न होने का पता लगाने के लिए थ्रेशोल्ड। |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | प्रतिक्रिया बोलने से रोकता है। |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | मॉडल के विचारों को बोलने से रोकता है। |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (वॉइस एक्टिवेशन) को अक्षम करता है। |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | इनपुट के लिए डेस्कटॉप ऑडियो कैप्चर का उपयोग करें। |
| `-NoContext` | SwitchParameter | — | — | Named | — | अनुरोध के लिए संदर्भ अक्षम करता है। |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | बीम खोज नमूनाकरण रणनीति का उपयोग करें। |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | The Get-Process cmdlet gets the processes on a local or remote computer.

Without parameters, this cmdlet gets all processes on the local computer. You can also specify a particular process by process name or process ID (PID) or pass a process object through the pipeline to this cmdlet.

By default, this cmdlet returns a process object that has detailed information about the process and supports methods that let you start and stop the process. This cmdlet also supports additional features including listing the processes that have loaded modules and listing the services that are running within a process. |
| `-Speak` | SwitchParameter | — | — | Named | — | AI प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI विचार प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | टूल कॉल के लिए अधिकतम कॉलबैक लंबाई। |

## Examples

### Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " + "and he was a politician")

```powershell
Get-Fallacy -Text ("All politicians are corrupt because John was corrupt " +
"and he was a politician")
```

प्रदान किए गए पाठ का तार्किक भ्रांतियों के लिए विश्लेषण करता है और किसी भी पाई गई भ्रांतियों के बारे में संरचित जानकारी लौटाता है।

### "This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1

```powershell
"This product is the best because everyone uses it" | Get-Fallacy -Temperature 0.1
```

कम तापमान पर केंद्रित विश्लेषण के लिए पाठ का विश्लेषण करने हेतु पाइपलाइन इनपुट का उपयोग करता है।

### dispicetext "Everyone knows this is true"

```powershell
dispicetext "Everyone knows this is true"
```

तार्किक भ्रांतियों के लिए पाठ का विश्लेषण करने के लिए उपनाम का उपयोग करता है।

## Parameter Details

### `-InputObject <Object>`

> पावरशेल सीएमडीलेट हेल्पटेक्स्ट्स को हिंदी (भारत) में अनुवाद करें। यदि इनपुट में कोड, मार्कअप या संरचित डेटा है, तो सभी सिंटैक्स, संरचना और तकनीकी तत्वों को संरक्षित करें। केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण या प्राकृतिक भाषा सामग्री का अनुवाद करें। सटीक फ़ॉर्मेटिंग, इंडेंटेशन और लाइन ब्रेक बनाए रखें। पहचानकर्ताओं, फ़ंक्शन नामों, वेरिएबल्स या तकनीकी कीवर्ड का कभी अनुवाद न करें।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> एआई मॉडल के लिए स्ट्रिंग सूची उत्पन्न करने के निर्देश

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> संलग्न करने के लिए फ़ाइल पथों की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> फ़ंक्शन परिभाषाओं की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> इमेज डिटेल लेवल

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> उन कमांडों का सरणी जिनमें पुष्टि की आवश्यकता नहीं है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> उपकरण के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM क्वेरी का प्रकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Knowledge'` |
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
### `-TimeoutSeconds <Int32>`

> AI संचालन के लिए सेकंड में टाइमआउट

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
### `-ContinueLast`

> स्थिति-पहचानकर्ता (सत्र आईडी) एक या अधिक विशिष्ट सत्रों की पहचान करता है। जै-से टर्मिनल सर्वर या दूरस्थ डेस्कटॉप सेवाओं द्वारा प्रदान किए गए सत्र। यह पैरामीटर सभी मौजूदा सत्रों की सूची को संदर्भित कर सकता है। अधिक विवरण के लिए, 'एक्स-विन-एनटी-360 /?' टाइप करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> पॉवरशेल कमांडलेट सहायता टेक्स्ट का अनुवाद करने के लिए, मुझे मूल टेक्स्ट प्रदान करें। कृपया वह टेक्स्ट साझा करें जिसे आप अनुवाद करना चाहते हैं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> सत्र को सत्र कैश में संग्रहीत न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OpenInImdb`

> प्रत्येक परिणाम के लिए IMDB खोज खोलता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imdb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> ऑडियो उत्पादन के लिए तापमान को नियंत्रित करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> प्रतिक्रिया उत्पादन के लिए तापमान को नियंत्रित करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> प्रोसेसिंग के लिए उपयोग करने के लिए CPU थ्रेड्स की संख्या।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> कुछ आउटपुट को दबाने के लिए नियमित अभिव्यक्ति।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> प्रसंस्करण के लिए ऑडियो संदर्भ आकार।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> ऑडियो में मौन का पता लगाने के लिए सीमा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> लंबे उत्तरों पर लागू दंड।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> प्रतिक्रिया निर्माण में एंट्रॉपी के लिए सीमा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> आउटपुट के लिए लॉग प्रायिकता सीमा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> ऑडियो में कोई वॉयस न होने का पता लगाने के लिए थ्रेशोल्ड।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> प्रतिक्रिया बोलने से रोकता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> मॉडल के विचारों को बोलने से रोकता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> VOX (वॉइस एक्टिवेशन) को अक्षम करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> इनपुट के लिए डेस्कटॉप ऑडियो कैप्चर का उपयोग करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> अनुरोध के लिए संदर्भ अक्षम करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> बीम खोज नमूनाकरण रणनीति का उपयोग करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> The Get-Process cmdlet gets the processes on a local or remote computer.

Without parameters, this cmdlet gets all processes on the local computer. You can also specify a particular process by process name or process ID (PID) or pass a process object through the pipeline to this cmdlet.

By default, this cmdlet returns a process object that has detailed information about the process and supports methods that let you start and stop the process. This cmdlet also supports additional features including listing the processes that have loaded modules and listing the services that are running within a process.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> AI प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> AI विचार प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें

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

> एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें

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

> AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> टूल कॉल के लिए अधिकतम कॉलबैक लंबाई।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Object[]`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIMetaLanguage.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-AllImageMetaData.md)
