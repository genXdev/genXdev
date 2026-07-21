# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate`

## Synopsis

> AI का उपयोग करके टेक्स्ट को दूसरी भाषा में अनुवाद करता है।

## Description

यह फ़ंक्शन AI मॉडल का उपयोग करके इनपुट टेक्स्ट को निर्दिष्ट लक्ष्य भाषा में अनुवाद करता है। यह पैरामीटर के माध्यम से, पाइपलाइन से, या सिस्टम क्लिपबोर्ड से सीधे इनपुट स्वीकार कर सकता है। यह फ़ंक्शन अनुवाद करते समय स्वरूपण और शैली को संरक्षित करता है।

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | स्विच-बैक अपरेटर। विंडोज पावरशेल में ऑल्टरनेटिव टेक्स्ट प्रवाह नियंत्रित करता है। |
| `-Instructions` | String | — | — | 1 | — | आप एक JSON आउटपुट देने के लिए डिज़ाइन किया गया एक उपयोगी सहायक हैं।
## प्रतिक्रिया प्रारूप

केवल JSON ऑब्जेक्ट के साथ उत्तर दें। |
| `-Attachments` | String[] | — | — | 2 | `@()` | संलग्न करने के लिए फ़ाइल पथों की सरणी |
| `-Temperature` | Double | — | — | Named | `-1` | प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | इमेज डिटेल लेवल |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | फ़ंक्शन परिभाषाओं की सरणी |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | उपकरण के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | उन कमांडों का सरणी जिनमें पुष्टि की आवश्यकता नहीं है |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | बढ़ाए गए टेक्स्ट को क्लिपबोर्ड पर कॉपी करें |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | पॉवरशेल कमांडलेट सहायता टेक्स्ट का अनुवाद करने के लिए, मुझे मूल टेक्स्ट प्रदान करें। कृपया वह टेक्स्ट साझा करें जिसे आप अनुवाद करना चाहते हैं। |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | स्थिति-पहचानकर्ता (सत्र आईडी) एक या अधिक विशिष्ट सत्रों की पहचान करता है। जै-से टर्मिनल सर्वर या दूरस्थ डेस्कटॉप सेवाओं द्वारा प्रदान किए गए सत्र। यह पैरामीटर सभी मौजूदा सत्रों की सूची को संदर्भित कर सकता है। अधिक विवरण के लिए, 'एक्स-विन-एनटी-360 /?' टाइप करें। |
| `-Speak` | SwitchParameter | — | — | Named | — | AI प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI विचार प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | सत्र को सत्र कैश में संग्रहीत न करें |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | प्रसंस्करण के दौरान डिफ़ॉल्ट AI उपकरणों के उपयोग की अनुमति दें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-AudioTemperature` | Double | — | — | Named | — | ऑडियो प्रतिक्रिया यादृच्छिकता के लिए तापमान (LLM को पारित) |
| `-TemperatureResponse` | Double | — | — | Named | — | प्रतिक्रिया उत्पादन के लिए तापमान (LLM को पारित किया गया) |
| `-Language` | String | — | — | Named | — | अनुवाद के लिए BCP 47 भाषा टैग (जैसे, nl-NL, de-DE, en-US) |
| `-CpuThreads` | Int32 | — | — | Named | — | उपयोग करने के लिए CPU थ्रेड्स की संख्या (LLM को पास की गई) |
| `-SuppressRegex` | String | — | — | Named | — | आउटपुट को दबाने के लिए रेगुलर एक्सप्रेशन (LLM को भेजा गया) |
| `-AudioContextSize` | Int32 | — | — | Named | — | प्रसंस्करण के लिए ऑडियो संदर्भ आकार (LLM को भेजा जाता है) |
| `-SilenceThreshold` | Double | — | — | Named | — | ऑडियो पहचान के लिए मौन सीमा (LLM को भेजी गई) |
| `-LengthPenalty` | Double | — | — | Named | — | अनुक्रम निर्माण के लिए लंबाई दंड (LLM को भेजा गया) |
| `-EntropyThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए एंट्रॉपी सीमा (LLM को भेजी गई) |
| `-LogProbThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए लॉग प्रायिकता थ्रेसहोल्ड (LLM को प्रेषित) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ऑडियो पहचान के लिए कोई भाषण सीमा नहीं (LLM को भेजा गया) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | भाषण आउटपुट अक्षम करें (LLM को भेजा गया) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | विचारों के लिए वाक् आउटपुट अक्षम करें (LLM को भेजा गया) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (ध्वनि सक्रियण) अक्षम करें (LLM को भेजा गया) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | डेस्कटॉप ऑडियो कैप्चर का उपयोग करें (LLM को पास किया गया) |
| `-NoContext` | SwitchParameter | — | — | Named | — | प्रसंग उपयोग अक्षम करें (LLM को भेजा गया) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | बीम सर्च सैंपलिंग रणनीति सक्षम करें (LLM को पास किया गया) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .SYNOPSIS
किसी निर्दिष्ट विकल्प के अनुरूप कमांडलेट या फ़ंक्शन के बारे में जानकारी प्रदर्शित करता है।

.DESCRIPTION
`Get-Help` कमांडलेट विंडोज पावरशेल में कमांडलेट्स, फ़ंक्शन, प्रदाताओं और अन्य विषयों के लिए विस्तृत सहायता प्रदर्शित करता है। यह सहायता फ़ाइलों, कमांडलेट कोड में टिप्पणी-आधारित सहायता, या ऑनलाइन सहायता से जानकारी प्राप्त कर सकता है।

.PARAMETER Name
उस कमांडलेट, फ़ंक्शन, प्रदाता, या विषय का नाम निर्दिष्ट करता है जिसके लिए सहायता प्राप्त करनी है। वाइल्डकार्ड वर्ण स्वीकार किए जाते हैं।

.PARAMETER Detailed
सहायता में पैरामीटर विवरण और उदाहरण शामिल करता है।

.PARAMETER Full
सहायता का पूरा पाठ प्रदर्शित करता है, जिसमें तकनीकी जानकारी और पैरामीटर विवरण शामिल हैं।

.PARAMETER Online
डिफ़ॉल्ट वेब ब्राउज़र में विषय के लिए ऑनलाइन सहायता खोलता है।

.PARAMETER Examples
केवल सहायता के उदाहरण अनुभाग प्रदर्शित करता है।

.PARAMETER Parameter
किसी विशिष्ट पैरामीटर के लिए विस्तृत जानकारी प्रदर्शित करता है। वाइल्डकार्ड स्वीकार किए जाते हैं।

.PARAMETER Category
सहायता विषयों को श्रेणी के अनुसार फ़िल्टर करता है: कमांडलेट, प्रदाता, अवधारणा, या FAQ।

.PARAMETER Component
सहायता विषयों को घटक के अनुसार फ़िल्टर करता है।

.PARAMETER Functionality
सहायता विषयों को कार्यक्षमता के अनुसार फ़िल्टर करता है।

.PARAMETER Role
सहायता विषयों को भूमिका के अनुसार फ़िल्टर करता है।

.INPUTS
System.String
आप `Name` पैरामीटर में एक स्ट्रिंग पाइप कर सकते हैं।

.OUTPUTS
Microsoft.PowerShell.Commands.HelpInfo या System.String
`Get-Help` कमांडलेट एक `HelpInfo` ऑब्जेक्ट लौटाता है या जब `-Online` का उपयोग किया जाता है तो कुछ भी नहीं लौटाता है।

.NOTES
यदि कोई सहायता फ़ाइल उपलब्ध नहीं है, तो `Get-Help` जनरेट की गई सहायता प्रदर्शित करता है जिसमें कमांडलेट के सिंटैक्स और पैरामीटर होते हैं लेकिन विस्तृत विवरण नहीं होते हैं।

.EXAMPLE
Get-Help Get-Process

यह उदाहरण `Get-Process` कमांडलेट के लिए बुनियादी सहायता प्रदर्शित करता है।

.EXAMPLE
Get-Help Get-Process -Detailed

यह उदाहरण `Get-Process` कमांडलेट के लिए विस्तृत सहायता प्रदर्शित करता है, जिसमें पैरामीटर विवरण और उदाहरण शामिल हैं।

.EXAMPLE
Get-Help Get-Process -Online

यह उदाहरण डिफ़ॉल्ट वेब ब्राउज़र में `Get-Process` कमांडलेट के लिए ऑनलाइन सहायता खोलता है।

.EXAMPLE
Get-Help Get-Process -Parameter Id

यह उदाहरण `Get-Process` कमांडलेट के `Id` पैरामीटर के लिए सहायता प्रदर्शित करता है। |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .PARAMETER Id
निगरानी की जाने वाली वस्तु की पहचानकर्ता निर्दिष्ट करता है। |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | मार्कअप ब्लॉक प्रकारों के लिए फ़िल्टर (LLM को पास किया गया) |
| `-NoCache` | SwitchParameter | — | — | Named | — | अनुवाद कैश को छोड़ें; हमेशा LLM API को कॉल करें |
| `-ClearCache` | SwitchParameter | — | — | Named | — | सभी भाषाओं के लिए संपूर्ण अनुवाद कैश साफ़ करें |

## Examples

### Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"

```powershell
Get-TextTranslation -Text "Hello world" -Language "French" -Model "qwen"
```

### "Bonjour" | translate -Language "English"

```powershell
"Bonjour" | translate -Language "English"
```

## Parameter Details

### `-Text <String>`

> स्विच-बैक अपरेटर। विंडोज पावरशेल में ऑल्टरनेटिव टेक्स्ट प्रवाह नियंत्रित करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> आप एक JSON आउटपुट देने के लिए डिज़ाइन किया गया एक उपयोगी सहायक हैं।
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
| **Default value** | `@()` |
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
### `-LLMType <String>`

> LLM क्वेरी का प्रकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'TextTranslation'` |
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
### `-SetClipboard`

> बढ़ाए गए टेक्स्ट को क्लिपबोर्ड पर कॉपी करें

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
### `-AllowDefaultTools`

> प्रसंस्करण के दौरान डिफ़ॉल्ट AI उपकरणों के उपयोग की अनुमति दें

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
### `-AudioTemperature <Double>`

> ऑडियो प्रतिक्रिया यादृच्छिकता के लिए तापमान (LLM को पारित)

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

> प्रतिक्रिया उत्पादन के लिए तापमान (LLM को पारित किया गया)

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

> अनुवाद के लिए BCP 47 भाषा टैग (जैसे, nl-NL, de-DE, en-US)

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

> उपयोग करने के लिए CPU थ्रेड्स की संख्या (LLM को पास की गई)

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

> आउटपुट को दबाने के लिए रेगुलर एक्सप्रेशन (LLM को भेजा गया)

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

> प्रसंस्करण के लिए ऑडियो संदर्भ आकार (LLM को भेजा जाता है)

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

> ऑडियो पहचान के लिए मौन सीमा (LLM को भेजी गई)

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

> अनुक्रम निर्माण के लिए लंबाई दंड (LLM को भेजा गया)

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

> आउटपुट फ़िल्टरिंग के लिए एंट्रॉपी सीमा (LLM को भेजी गई)

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

> आउटपुट फ़िल्टरिंग के लिए लॉग प्रायिकता थ्रेसहोल्ड (LLM को प्रेषित)

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

> ऑडियो पहचान के लिए कोई भाषण सीमा नहीं (LLM को भेजा गया)

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

> भाषण आउटपुट अक्षम करें (LLM को भेजा गया)

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

> विचारों के लिए वाक् आउटपुट अक्षम करें (LLM को भेजा गया)

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

> VOX (ध्वनि सक्रियण) अक्षम करें (LLM को भेजा गया)

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

> डेस्कटॉप ऑडियो कैप्चर का उपयोग करें (LLM को पास किया गया)

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

> प्रसंग उपयोग अक्षम करें (LLM को भेजा गया)

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

> बीम सर्च सैंपलिंग रणनीति सक्षम करें (LLM को पास किया गया)

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

> .SYNOPSIS
किसी निर्दिष्ट विकल्प के अनुरूप कमांडलेट या फ़ंक्शन के बारे में जानकारी प्रदर्शित करता है।

.DESCRIPTION
`Get-Help` कमांडलेट विंडोज पावरशेल में कमांडलेट्स, फ़ंक्शन, प्रदाताओं और अन्य विषयों के लिए विस्तृत सहायता प्रदर्शित करता है। यह सहायता फ़ाइलों, कमांडलेट कोड में टिप्पणी-आधारित सहायता, या ऑनलाइन सहायता से जानकारी प्राप्त कर सकता है।

.PARAMETER Name
उस कमांडलेट, फ़ंक्शन, प्रदाता, या विषय का नाम निर्दिष्ट करता है जिसके लिए सहायता प्राप्त करनी है। वाइल्डकार्ड वर्ण स्वीकार किए जाते हैं।

.PARAMETER Detailed
सहायता में पैरामीटर विवरण और उदाहरण शामिल करता है।

.PARAMETER Full
सहायता का पूरा पाठ प्रदर्शित करता है, जिसमें तकनीकी जानकारी और पैरामीटर विवरण शामिल हैं।

.PARAMETER Online
डिफ़ॉल्ट वेब ब्राउज़र में विषय के लिए ऑनलाइन सहायता खोलता है।

.PARAMETER Examples
केवल सहायता के उदाहरण अनुभाग प्रदर्शित करता है।

.PARAMETER Parameter
किसी विशिष्ट पैरामीटर के लिए विस्तृत जानकारी प्रदर्शित करता है। वाइल्डकार्ड स्वीकार किए जाते हैं।

.PARAMETER Category
सहायता विषयों को श्रेणी के अनुसार फ़िल्टर करता है: कमांडलेट, प्रदाता, अवधारणा, या FAQ।

.PARAMETER Component
सहायता विषयों को घटक के अनुसार फ़िल्टर करता है।

.PARAMETER Functionality
सहायता विषयों को कार्यक्षमता के अनुसार फ़िल्टर करता है।

.PARAMETER Role
सहायता विषयों को भूमिका के अनुसार फ़िल्टर करता है।

.INPUTS
System.String
आप `Name` पैरामीटर में एक स्ट्रिंग पाइप कर सकते हैं।

.OUTPUTS
Microsoft.PowerShell.Commands.HelpInfo या System.String
`Get-Help` कमांडलेट एक `HelpInfo` ऑब्जेक्ट लौटाता है या जब `-Online` का उपयोग किया जाता है तो कुछ भी नहीं लौटाता है।

.NOTES
यदि कोई सहायता फ़ाइल उपलब्ध नहीं है, तो `Get-Help` जनरेट की गई सहायता प्रदर्शित करता है जिसमें कमांडलेट के सिंटैक्स और पैरामीटर होते हैं लेकिन विस्तृत विवरण नहीं होते हैं।

.EXAMPLE
Get-Help Get-Process

यह उदाहरण `Get-Process` कमांडलेट के लिए बुनियादी सहायता प्रदर्शित करता है।

.EXAMPLE
Get-Help Get-Process -Detailed

यह उदाहरण `Get-Process` कमांडलेट के लिए विस्तृत सहायता प्रदर्शित करता है, जिसमें पैरामीटर विवरण और उदाहरण शामिल हैं।

.EXAMPLE
Get-Help Get-Process -Online

यह उदाहरण डिफ़ॉल्ट वेब ब्राउज़र में `Get-Process` कमांडलेट के लिए ऑनलाइन सहायता खोलता है।

.EXAMPLE
Get-Help Get-Process -Parameter Id

यह उदाहरण `Get-Process` कमांडलेट के `Id` पैरामीटर के लिए सहायता प्रदर्शित करता है।

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

> .PARAMETER Id
निगरानी की जाने वाली वस्तु की पहचानकर्ता निर्दिष्ट करता है।

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

> मार्कअप ब्लॉक प्रकारों के लिए फ़िल्टर (LLM को पास किया गया)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoCache`

> अनुवाद कैश को छोड़ें; हमेशा LLM API को कॉल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearCache`

> सभी भाषाओं के लिए संपूर्ण अनुवाद कैश साफ़ करें

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

- `String`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SpeechToText.md)
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
