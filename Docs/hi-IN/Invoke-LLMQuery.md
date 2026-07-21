# Invoke-LLMQuery

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `qllm`, `llm`

## Synopsis

> एक OpenAI संगत बड़े भाषा चैट पूर्णता API को क्वेरी भेजता है और प्रतिक्रियाओं को संसाधित करता है।

## Description

यह फ़ंक्शन OpenAI संगत बड़े भाषा चैट पूर्णता API को क्वेरी भेजता है और प्रतिक्रियाओं को संसाधित करता है। यह टेक्स्ट और इमेज इनपुट का समर्थन करता है, उपकरण फ़ंक्शन कॉल को संभालता है, और टेक्स्ट और ऑडियो सहित विभिन्न चैट मोड में काम कर सकता है।

यह फ़ंक्शन LLM इंटरैक्शन के लिए व्यापक समर्थन प्रदान करता है जिसमें शामिल हैं:
- टेक्स्ट और इमेज इनपुट प्रसंस्करण
- उपकरण फ़ंक्शन कॉलिंग और कमांड निष्पादन
- इंटरैक्टिव चैट मोड (टेक्स्ट और ऑडियो)
- मॉडल आरंभीकरण और कॉन्फ़िगरेशन
- प्रतिक्रिया स्वरूपण और प्रसंस्करण
- सत्र प्रबंधन और कैशिंग
- विंडो स्थिति निर्धारण और प्रदर्शन नियंत्रण

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilterForJsonOutput] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-QuietToolChainInvocations] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | मॉडल को भेजने के लिए क्वेरी टेक्स्ट |
| `-Instructions` | String | — | — | 1 | — | नीचे दिए गए पाठ को हिंदी (भारत) में अनुवाद करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को अपरिवर्तित न लौटाएं। केवल अनुवादित पाठ लौटाएं, बिना किसी स्पष्टीकरण, JSON रैपर या सिस्टम प्रॉम्प्ट के।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप या संरचित डेटा है, तो सभी सिंटैक्स, संरचना और तकनीकी तत्वों जैसे प्रोग्रामिंग कीवर्ड, टैग या डेटा प्रारूप-विशिष्ट तत्वों को संरक्षित करें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक फ़ॉर्मेटिंग, इंडेंटेशन और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ताओं, फ़ंक्शन नामों, चरों या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश: 
अनुवाद की जाने वाली सामग्री को PowerShell cmdlet सहायता पाठ समझने की गलती न करें, जो निर्देश हैं!
चित्र या कुछ भी सम्मिलित न करें। बस सामग्री का सीधा अनुवाद करें: हिंदी (भारत) में।

आप एक सहायक सहायक हैं जिसे JSON आउटपुट देने के लिए डिज़ाइन किया गया है।
## प्रतिक्रिया प्रारूप

केवल JSON ऑब्जेक्ट के साथ उत्तर दें। |
| `-Attachments` | String[] | — | — | 2 | `@()` | संलग्न करने के लिए फ़ाइल पथों की सरणी |
| `-ResponseFormat` | String | — | — | Named | — | निम्नलिखित पाठ को हिंदी (भारत) में अनुवादित करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को बिना बदले वापस न करें। केवल अनुवादित पाठ लौटाएं, बिना किसी स्पष्टीकरण, JSON रैपर, या सिस्टम प्रॉम्प्ट के।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप, या संरचित डेटा है, तो सभी सिंटैक्स, संरचना, और तकनीकी तत्वों जैसे प्रोग्रामिंग कीवर्ड, टैग, या डेटा प्रारूप-विशिष्ट तत्वों को बनाए रखें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण, या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक स्वरूपण, इंडेंटेशन, और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ताओं, फ़ंक्शन नामों, चरों, या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश: 
अनुवाद की जाने वाली सामग्री, जिसमें PowerShell cmdlet सहायता पाठ शामिल है, को निर्देशों के साथ भ्रमित न करें!
चित्र या कुछ भी सम्मिलित न करें। बस सामग्री का सीधा अनुवाद करें: हिंदी (भारत) में। |
| `-Temperature` | Double | — | — | Named | `-1` | प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | फ़ंक्शन परिभाषाओं की सरणी |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | उपकरण के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | उपकरण कार्य जिनमें उपयोगकर्ता पुष्टि की आवश्यकता नहीं है |
| `-QuietToolChainInvocations` | SwitchParameter | — | — | Named | — | मध्यवर्ती टूल श्रृंखला कॉल के दौरान Write-Host आउटपुट को दबाता है |
| `-ImageDetail` | String | — | — | Named | `'low'` | इमेज डिटेल लेवल |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI संचालन के लिए सेकंड में टाइमआउट |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-AudioTemperature` | Double | — | — | Named | — | ऑडियो जनरेशन के लिए तापमान यादृच्छिकता |
| `-TemperatureResponse` | Double | — | — | Named | — | प्रतिक्रिया की यादृच्छिकता के लिए तापमान (ऑडियो चैट) |
| `-Language` | String | — | — | Named | — | ऑडियो चैट के लिए भाषा कोड या नाम |
| `-CpuThreads` | Int32 | — | — | Named | — | ऑडियो चैट के लिए उपयोग करने के लिए CPU थ्रेड्स की संख्या |
| `-SuppressRegex` | String | — | — | Named | — | ऑडियो चैट में कुछ आउटपुट को दबाने के लिए रेगुलर एक्सप्रेशन |
| `-AudioContextSize` | Int32 | — | — | Named | — | ऑडियो चैट के लिए ऑडियो संदर्भ आकार |
| `-SilenceThreshold` | Double | — | — | Named | — | ऑडियो चैट के लिए मौन सीमा |
| `-LengthPenalty` | Double | — | — | Named | — | ऑडियो चैट प्रतिक्रियाओं के लिए लंबाई दंड |
| `-EntropyThreshold` | Double | — | — | Named | — | ऑडियो चैट के लिए एंट्रॉपी थ्रेशोल्ड |
| `-LogProbThreshold` | Double | — | — | Named | — | ऑडियो चैट के लिए लॉग प्रायिकता सीमा |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ऑडियो चैट के लिए कोई भाषण सीमा नहीं |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | ऑडियो प्रतिक्रियाएँ न बोलें |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | ऑडियो विचार न बोलें |
| `-NoVOX` | SwitchParameter | — | — | Named | — | ऑडियो चैट के लिए VOX (ध्वनि सक्रियण) अक्षम करें |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | ऑडियो चैट के लिए डेस्कटॉप ऑडियो कैप्चर का उपयोग करें |
| `-NoContext` | SwitchParameter | — | — | Named | — | ऑडियो चैट के लिए संदर्भ अक्षम करें |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ऑडियो चैट के लिए बीम सर्च सैंपलिंग रणनीति का उपयोग करें |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | यह cmdlet उप-आदेशों और drv名前 को प्रबंधित करने के लिए कमांड प्रदान करता है। |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | पॉवरशेल कमांडलेट सहायता टेक्स्ट का अनुवाद करने के लिए, मुझे मूल टेक्स्ट प्रदान करें। कृपया वह टेक्स्ट साझा करें जिसे आप अनुवाद करना चाहते हैं। |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | बातचीत के इतिहास से विचार प्रक्रियाओं को बाहर निकालें |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | स्थिति-पहचानकर्ता (सत्र आईडी) एक या अधिक विशिष्ट सत्रों की पहचान करता है। जै-से टर्मिनल सर्वर या दूरस्थ डेस्कटॉप सेवाओं द्वारा प्रदान किए गए सत्र। यह पैरामीटर सभी मौजूदा सत्रों की सूची को संदर्भित कर सकता है। अधिक विवरण के लिए, 'एक्स-विन-एनटी-360 /?' टाइप करें। |
| `-Speak` | SwitchParameter | — | — | Named | — | AI प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI विचार प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | केवल मार्कअप ब्लॉक आउटपुट देगा |
| `-FilterForJsonOutput` | SwitchParameter | — | — | Named | — | प्रतिक्रिया से सबसे बाहरी JSON ऑब्जेक्ट या एरे को निकालता है, मार्कडाउन फेंस और आसपास के टेक्स्ट को हटाता है। जब -ResponseFormat सेट होता है तो स्वचालित रूप से सक्षम होता है; JSON आउटपुट की अपेक्षा करने वाले सादे-टेक्स्ट कॉल के लिए इस स्विच का उपयोग करें। |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | केवल निर्दिष्ट प्रकार के मार्कअप ब्लॉक आउटपुट करेगा |
| `-ChatMode` | String | — | — | Named | — | चैट मोड सक्षम करें |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | आंतरिक रूप से उपयोग किया जाता है, केवल llm आह्वान के बाद एक बार चैट मोड लागू करने के लिए |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | सत्र को सत्र कैश में संग्रहीत न करें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | टूल कॉलबैक आउटपुट की अधिकतम लंबाई वर्णों में। इस सीमा से अधिक आउटपुट को चेतावनी संदेश के साथ छोटा किया जाएगा। डिफ़ॉल्ट 100000 वर्ण है। |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

निर्दिष्ट तापमान के साथ qwen मॉडल को एक सरल गणितीय प्रश्न भेजता है।

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

डिफ़ॉल्ट पैरामीटर वाली क्वेरी भेजने के लिए उपनाम का उपयोग करता है।

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

एक छवि अटैचमेंट के साथ विश्लेषण के लिए क्वेरी भेजता है।

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

निर्दिष्ट मॉडल के साथ एक इंटरैक्टिव टेक्स्ट चैट सत्र प्रारंभ करता है।

## Parameter Details

### `-Query <String>`

> मॉडल को भेजने के लिए क्वेरी टेक्स्ट

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> नीचे दिए गए पाठ को हिंदी (भारत) में अनुवाद करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को अपरिवर्तित न लौटाएं। केवल अनुवादित पाठ लौटाएं, बिना किसी स्पष्टीकरण, JSON रैपर या सिस्टम प्रॉम्प्ट के।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप या संरचित डेटा है, तो सभी सिंटैक्स, संरचना और तकनीकी तत्वों जैसे प्रोग्रामिंग कीवर्ड, टैग या डेटा प्रारूप-विशिष्ट तत्वों को संरक्षित करें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक फ़ॉर्मेटिंग, इंडेंटेशन और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ताओं, फ़ंक्शन नामों, चरों या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश: 
अनुवाद की जाने वाली सामग्री को PowerShell cmdlet सहायता पाठ समझने की गलती न करें, जो निर्देश हैं!
चित्र या कुछ भी सम्मिलित न करें। बस सामग्री का सीधा अनुवाद करें: हिंदी (भारत) में।

आप एक सहायक सहायक हैं जिसे JSON आउटपुट देने के लिए डिज़ाइन किया गया है।
## प्रतिक्रिया प्रारूप

केवल JSON ऑब्जेक्ट के साथ उत्तर दें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
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
### `-ResponseFormat <String>`

> निम्नलिखित पाठ को हिंदी (भारत) में अनुवादित करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को बिना बदले वापस न करें। केवल अनुवादित पाठ लौटाएं, बिना किसी स्पष्टीकरण, JSON रैपर, या सिस्टम प्रॉम्प्ट के।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप, या संरचित डेटा है, तो सभी सिंटैक्स, संरचना, और तकनीकी तत्वों जैसे प्रोग्रामिंग कीवर्ड, टैग, या डेटा प्रारूप-विशिष्ट तत्वों को बनाए रखें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण, या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक स्वरूपण, इंडेंटेशन, और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ताओं, फ़ंक्शन नामों, चरों, या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश: 
अनुवाद की जाने वाली सामग्री, जिसमें PowerShell cmdlet सहायता पाठ शामिल है, को निर्देशों के साथ भ्रमित न करें!
चित्र या कुछ भी सम्मिलित न करें। बस सामग्री का सीधा अनुवाद करें: हिंदी (भारत) में।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> उपकरण के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> उपकरण कार्य जिनमें उपयोगकर्ता पुष्टि की आवश्यकता नहीं है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-QuietToolChainInvocations`

> मध्यवर्ती टूल श्रृंखला कॉल के दौरान Write-Host आउटपुट को दबाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-LLMQueryType <String>`

> LLM क्वेरी का प्रकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
### `-Gpu <Int32>`

> The `-Gpu` parameter.

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
### `-NoSupportForJsonSchema <String>`

> इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है

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
### `-AudioTemperature <Double>`

> ऑडियो जनरेशन के लिए तापमान यादृच्छिकता

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

> प्रतिक्रिया की यादृच्छिकता के लिए तापमान (ऑडियो चैट)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ऑडियो चैट के लिए भाषा कोड या नाम

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

> ऑडियो चैट के लिए उपयोग करने के लिए CPU थ्रेड्स की संख्या

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

> ऑडियो चैट में कुछ आउटपुट को दबाने के लिए रेगुलर एक्सप्रेशन

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

> ऑडियो चैट के लिए ऑडियो संदर्भ आकार

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

> ऑडियो चैट के लिए मौन सीमा

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

> ऑडियो चैट प्रतिक्रियाओं के लिए लंबाई दंड

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

> ऑडियो चैट के लिए एंट्रॉपी थ्रेशोल्ड

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

> ऑडियो चैट के लिए लॉग प्रायिकता सीमा

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

> ऑडियो चैट के लिए कोई भाषण सीमा नहीं

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

> ऑडियो प्रतिक्रियाएँ न बोलें

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

> ऑडियो विचार न बोलें

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

> ऑडियो चैट के लिए VOX (ध्वनि सक्रियण) अक्षम करें

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

> ऑडियो चैट के लिए डेस्कटॉप ऑडियो कैप्चर का उपयोग करें

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

> ऑडियो चैट के लिए संदर्भ अक्षम करें

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

> ऑडियो चैट के लिए बीम सर्च सैंपलिंग रणनीति का उपयोग करें

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

> यह cmdlet उप-आदेशों और drv名前 को प्रबंधित करने के लिए कमांड प्रदान करता है।

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
### `-DontAddThoughtsToHistory`

> बातचीत के इतिहास से विचार प्रक्रियाओं को बाहर निकालें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-OutputMarkdownBlocksOnly`

> केवल मार्कअप ब्लॉक आउटपुट देगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilterForJsonOutput`

> प्रतिक्रिया से सबसे बाहरी JSON ऑब्जेक्ट या एरे को निकालता है, मार्कडाउन फेंस और आसपास के टेक्स्ट को हटाता है। जब -ResponseFormat सेट होता है तो स्वचालित रूप से सक्षम होता है; JSON आउटपुट की अपेक्षा करने वाले सादे-टेक्स्ट कॉल के लिए इस स्विच का उपयोग करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> केवल निर्दिष्ट प्रकार के मार्कअप ब्लॉक आउटपुट करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatMode <String>`

> चैट मोड सक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `chat` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> आंतरिक रूप से उपयोग किया जाता है, केवल llm आह्वान के बाद एक बार चैट मोड लागू करने के लिए

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

> टूल कॉलबैक आउटपुट की अधिकतम लंबाई वर्णों में। इस सीमा से अधिक आउटपुट को चेतावनी संदेश के साथ छोटा किया जाएगा। डिफ़ॉल्ट 100000 वर्ण है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `100000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMBooleanEvaluation.md)
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
