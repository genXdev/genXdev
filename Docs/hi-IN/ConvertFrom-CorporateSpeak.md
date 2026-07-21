# ConvertFrom-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `uncorporatize`

## Synopsis

> विनम्र, पेशेवर कॉर्पोरेट भाषा को एआई का उपयोग करके सीधी, स्पष्ट भाषा में बदलता है।

## Description

यह फ़ंक्शन राजनयिक और कॉर्पोरेट संचार को अधिक सीधी और स्पष्ट भाषा में बदलने के लिए इनपुट टेक्स्ट को संसाधित करता है। यह पैरामीटर, पाइपलाइन या सिस्टम क्लिपबोर्ड से सीधे इनपुट स्वीकार कर सकता है। यह फ़ंक्शन मूल उद्देश्य को संरक्षित करते हुए टेक्स्ट का विश्लेषण और पुनर्लेखन करने के लिए AI मॉडल का उपयोग करता है।

## Syntax

```powershell
ConvertFrom-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | कॉर्पोरेट बोली से कनवर्ट करने के लिए पाठ |
| `-Attachments` | String[] | — | — | 2 | `@()` | संलग्न करने के लिए फ़ाइल पथों की सरणी |
| `-Temperature` | Double | — | — | Named | `-1` | प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | इमेज डिटेल लेवल |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | फ़ंक्शन परिभाषाओं की सरणी |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | उपकरण के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | उन कमांडों का सरणी जिनमें पुष्टि की आवश्यकता नहीं है |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI संचालन के लिए सेकंड में टाइमआउट |
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
| `-AudioTemperature` | Double | — | — | Named | — | ऑडियो प्रतिक्रिया यादृच्छिकता के लिए तापमान (LLMQuery को भेजा गया) |
| `-TemperatureResponse` | Double | — | — | Named | — | प्रतिक्रिया उत्पादन के लिए तापमान (LLMQuery को पास किया गया) |
| `-Language` | String | — | — | Named | — | प्रसंस्करण के लिए भाषा कोड या नाम (LLMQuery को भेजा गया) |
| `-CpuThreads` | Int32 | — | — | Named | — | उपयोग करने के लिए CPU थ्रेड्स की संख्या (LLMQuery को पारित किया गया) |
| `-SuppressRegex` | String | — | — | Named | — | आउटपुट को दबाने के लिए नियमित अभिव्यक्ति (LLMQuery को पारित) |
| `-AudioContextSize` | Int32 | — | — | Named | — | प्रसंस्करण के लिए ऑडियो संदर्भ आकार (LLMQuery को भेजा गया) |
| `-SilenceThreshold` | Double | — | — | Named | — | ऑडियो का पता लगाने के लिए मौन सीमा (LLMQuery को भेजा गया) |
| `-LengthPenalty` | Double | — | — | Named | — | अनुक्रम जनरेशन के लिए लंबाई दंड (LLMQuery को पारित) |
| `-EntropyThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए एंट्रॉपी थ्रेशोल्ड (LLMQuery को पास किया गया) |
| `-LogProbThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए लॉग प्रायिकता सीमा (LLMQuery को पारित) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ऑडियो पहचान के लिए कोई भाषण दहलीज नहीं (LLMQuery को पारित) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | ध्वनि आउटपुट अक्षम करें (LLMQuery को भेजा गया) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | विचारों के लिए वाक् आउटपुट अक्षम करें (LLMQuery को भेजा गया) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (ध्वनि सक्रियण) अक्षम करें (LLMQuery को पास किया गया) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | डेस्कटॉप ऑडियो कैप्चर का उपयोग करें (LLMQuery को भेजा गया) |
| `-NoContext` | SwitchParameter | — | — | Named | — | संदर्भ उपयोग अक्षम करें (LLMQuery को पारित किया गया) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | बीम खोज नमूना रणनीति सक्षम करें (LLMQuery को पारित) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | नीचे दिए गए PowerShell cmdlet सहायता पाठ का हिंदी अनुवाद है। कृपया ध्यान दें कि cmdlet नाम, पैरामीटर, और तकनीकी कीवर्ड अपरिवर्तित रहेंगे, केवल मानव-पठनीय पाठ का अनुवाद किया जाएगा।

**Get-Help**

```
NAME
    Get-Help

SYNOPSIS
    Windows PowerShell cmdlet के बारे में सहायता प्रदर्शित करता है।

SYNTAX
    Get-Help [[-Name] <string>] [-Path <string>] [-Category <string[]>] [-Full] [-Component <string[]>] [-Functionality <string[]>] [-Role <string[]>] [-Online] [-Detailed] [-Examples] [-RelatedLinks] [<CommonParameters>]

DESCRIPTION
    Get-Help cmdlet Windows PowerShell cmdlet, फ़ंक्शन, प्रदाता, और अवधारणाओं के बारे में सहायता प्रदर्शित करता है। यह cmdlet के लिए पैरामीटर, इनपुट, आउटपुट, और नोट्स प्रदर्शित कर सकता है। यह ऑनलाइन सहायता भी प्रदर्शित कर सकता है और सहायता फ़ाइलें अपडेट कर सकता है।

PARAMETERS
    -Name <string>
        सहायता प्राप्त करने के लिए cmdlet या अवधारणा का नाम निर्दिष्ट करता है।

    -Path <string>
        सहायता फ़ाइल का पथ निर्दिष्ट करता है।

    -Category <string[]>
        प्रदर्शित करने के लिए सहायता की श्रेणी निर्दिष्ट करता है। मान्य मान: Alias, Cmdlet, Provider, General, FAQ, Glossary, HelpFile, ScriptCommand, Function, Filter, ExternalScript, All, DefaultHelp, DscResource, Class, Configuration, और Workflow।

    -Full
        संपूर्ण सहायता विवरण प्रदर्शित करता है, जिसमें पैरामीटर विवरण और उदाहरण शामिल हैं।

    -Component <string[]>
        सहायता प्राप्त करने के लिए घटक निर्दिष्ट करता है।

    -Functionality <string[]>
        सहायता प्राप्त करने के लिए कार्यक्षमता निर्दिष्ट करता है।

    -Role <string[]>
        सहायता प्राप्त करने के लिए भूमिका निर्दिष्ट करता है।

    -Online
        डिफ़ॉल्ट इंटरनेट ब्राउज़र में cmdlet के लिए ऑनलाइन सहायता प्रदर्शित करता है।

    -Detailed
        विस्तृत सहायता प्रदर्शित करता है, जिसमें पैरामीटर विवरण शामिल हैं, लेकिन उदाहरण नहीं।

    -Examples
        cmdlet के लिए उदाहरण प्रदर्शित करता है।

    -RelatedLinks
        cmdlet के लिए संबंधित लिंक प्रदर्शित करता है।

    <CommonParameters>
        यह cmdlet सामान्य पैरामीटर का समर्थन करता है: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, और OutVariable। अधिक जानकारी के लिए, about_CommonParameters देखें।

INPUTS
    System.String
        आप सहायता के लिए एक स्ट्रिंग को Get-Help में पाइप कर सकते हैं।

OUTPUTS
    Microsoft.PowerShell.Commands.HelpInfoObject
        Get-Help एक HelpInfoObject ऑब्जेक्ट लौटाता है।

NOTES
    Windows PowerShell 3.0 में, Get-Help cmdlet ने ऑनलाइन सहायता को स्वचालित रूप से डाउनलोड करने और अपडेट करने की क्षमता जोड़ी।

    Get-Help cmdlet कंप्यूटर पर स्थापित सहायता फ़ाइलों से सहायता प्रदर्शित करता है। सहायता फ़ाइलें डाउनलोड करने और अपडेट करने के लिए, Update-Help cmdlet का उपयोग करें।

    पैरामीटर का उपयोग करके, आप किसी विशिष्ट cmdlet या अवधारणा के बारे में सहायता प्रदर्शित कर सकते हैं।

    Get-Help cmdlet प्रदाता-विशिष्ट सहायता भी प्रदर्शित कर सकता है।

EXAMPLES
    -------------------------- उदाहरण 1: किसी cmdlet के लिए सहायता प्रदर्शित करना --------------------------

    Get-Help Get-ChildItem

    यह आदेश Get-ChildItem cmdlet के लिए सहायता प्रदर्शित करता है।

    -------------------------- उदाहरण 2: संपूर्ण सहायता प्रदर्शित करना --------------------------

    Get-Help Get-ChildItem -Full

    यह आदेश Get-ChildItem cmdlet के लिए संपूर्ण सहायता प्रदर्शित करता है, जिसमें पैरामीटर विवरण और उदाहरण शामिल हैं।

    -------------------------- उदाहरण 3: ऑनलाइन सहायता प्रदर्शित करना --------------------------

    Get-Help Get-ChildItem -Online

    यह आदेश डिफ़ॉल्ट इंटरनेट ब्राउज़र में Get-ChildItem cmdlet के लिए ऑनलाइन सहायता प्रदर्शित करता है।

RELATED LINKS
    about_Help
    about_Command_Precedence
    about_Functions
    about_Providers
    Update-Help
    Save-Help
``` |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
   एक तिथि नियंत्रक वस्तु प्राप्त करता है जो तिथियों की एक श्रृंखला का प्रतिनिधित्व करता है।

.DESCRIPTION
  New-TimeSpan cmdlet एक TimeSpan वस्तु बनाता है जो समय अंतराल का प्रतिनिधित्व करता है।
  आप एक TimeSpan वस्तु को एक तिथि से घटाकर दूसरी तिथि प्राप्त कर सकते हैं, या किसी ऑब्जेक्ट के किसी गुण में जोड़ने या घटाने के लिए एक धनात्मक या ऋणात्मक TimeSpan बना सकते हैं।

  पैरामीटर निर्दिष्ट किए बिना, New-TimeSpan कमांड एक TimeSpan वस्तु लौटाता है जो 0 समय अंतराल का प्रतिनिधित्व करता है।

.PARAMETER Start
  समय अंतराल की शुरुआत निर्दिष्ट करता है।
  एक स्ट्रिंग दर्ज करें जो तिथि और समय का प्रतिनिधित्व करती है, जैसे "3/15/09" या DateTime वस्तु, जैसे Get-Date कमांड से।
  यदि पैरामीटर अनुपलब्ध है, तो वर्तमान तिथि और समय का उपयोग किया जाता है।

.PARAMETER End
  समय अंतराल का अंत निर्दिष्ट करता है।
  एक स्ट्रिंग दर्ज करें जो तिथि और समय का प्रतिनिधित्व करती है, जैसे "3/15/09" या DateTime वस्तु, जैसे Get-Date कमांड से।
  यदि पैरामीटर अनुपलब्ध है, तो वर्तमान तिथि और समय का उपयोग किया जाता है।

.INPUTS
  System.DateTime
    आप New-TimeSpan में एक DateTime वस्तु (जैसे Get-Date द्वारा लौटाई गई) को पाइप कर सकते हैं।

.OUTPUTS
  System.TimeSpan

.EXAMPLE
  PS> New-TimeSpan
  दिन : 0
  घंटे : 0
  मिनट : 0
  सेकंड : 0
  मिलीसेकंड : 0
  टिक : 0
  कुलदिन : 0
  कुलघंटे : 0
  कुलमिनट : 0
  कुलसेकंड : 0
  कुलमिलीसेकंड : 0

  यह आदेश एक TimeSpan वस्तु लौटाता है जो शून्य अवधि का प्रतिनिधित्व करता है।

.EXAMPLE
  PS> New-TimeSpan -Start (Get-Date -Year 2020 -Month 1 -Day 1) -End (Get-Date -Year 2021 -Month 1 -Day 1)
  दिन : 366
  घंटे : 0
  मिनट : 0
  सेकंड : 0
  मिलीसेकंड : 0
  टिक : 31622400000000000
  कुलदिन : 366
  कुलघंटे : 8784
  कुलमिनट : 527040
  कुलसेकंड : 31622400
  कुलमिलीसेकंड : 31622400000

  यह आदेश एक TimeSpan वस्तु लौटाता है जो 2020 और 2021 के बीच का अंतर है।

.EXAMPLE
  PS> New-TimeSpan -Start "2020-01-01" -End "2020-12-31"
  दिन : 365
  घंटे : 0
  मिनट : 0
  सेकंड : 0
  मिलीसेकंड : 0
  टिक : 31536000000000000

  यह आदेश उसी वर्ष के भीतर समय अंतराल दिखाता है।

.RELATED LINKS
  Get-Date
  Set-Date
  Timespan object |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | मार्कअप ब्लॉक प्रकारों के लिए फ़िल्टर (LLMQuery को भेजा गया) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | अधिकतम उपकरण कॉलबैक लंबाई (LLMQuery को पास की गई) |

## Examples

### ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard

```powershell
ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard
```

### "We should circle back" | uncorporatize ###############################################################################

```powershell
"We should circle back" | uncorporatize
###############################################################################
```

## Parameter Details

### `-Text <String>`

> कॉर्पोरेट बोली से कनवर्ट करने के लिए पाठ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
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

> ऑडियो प्रतिक्रिया यादृच्छिकता के लिए तापमान (LLMQuery को भेजा गया)

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

> प्रतिक्रिया उत्पादन के लिए तापमान (LLMQuery को पास किया गया)

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

> प्रसंस्करण के लिए भाषा कोड या नाम (LLMQuery को भेजा गया)

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

> उपयोग करने के लिए CPU थ्रेड्स की संख्या (LLMQuery को पारित किया गया)

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

> आउटपुट को दबाने के लिए नियमित अभिव्यक्ति (LLMQuery को पारित)

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

> प्रसंस्करण के लिए ऑडियो संदर्भ आकार (LLMQuery को भेजा गया)

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

> ऑडियो का पता लगाने के लिए मौन सीमा (LLMQuery को भेजा गया)

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

> अनुक्रम जनरेशन के लिए लंबाई दंड (LLMQuery को पारित)

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

> आउटपुट फ़िल्टरिंग के लिए एंट्रॉपी थ्रेशोल्ड (LLMQuery को पास किया गया)

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

> आउटपुट फ़िल्टरिंग के लिए लॉग प्रायिकता सीमा (LLMQuery को पारित)

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

> ऑडियो पहचान के लिए कोई भाषण दहलीज नहीं (LLMQuery को पारित)

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

> ध्वनि आउटपुट अक्षम करें (LLMQuery को भेजा गया)

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

> विचारों के लिए वाक् आउटपुट अक्षम करें (LLMQuery को भेजा गया)

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

> VOX (ध्वनि सक्रियण) अक्षम करें (LLMQuery को पास किया गया)

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

> डेस्कटॉप ऑडियो कैप्चर का उपयोग करें (LLMQuery को भेजा गया)

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

> संदर्भ उपयोग अक्षम करें (LLMQuery को पारित किया गया)

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

> बीम खोज नमूना रणनीति सक्षम करें (LLMQuery को पारित)

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

> नीचे दिए गए PowerShell cmdlet सहायता पाठ का हिंदी अनुवाद है। कृपया ध्यान दें कि cmdlet नाम, पैरामीटर, और तकनीकी कीवर्ड अपरिवर्तित रहेंगे, केवल मानव-पठनीय पाठ का अनुवाद किया जाएगा।

**Get-Help**

```
NAME
    Get-Help

SYNOPSIS
    Windows PowerShell cmdlet के बारे में सहायता प्रदर्शित करता है।

SYNTAX
    Get-Help [[-Name] <string>] [-Path <string>] [-Category <string[]>] [-Full] [-Component <string[]>] [-Functionality <string[]>] [-Role <string[]>] [-Online] [-Detailed] [-Examples] [-RelatedLinks] [<CommonParameters>]

DESCRIPTION
    Get-Help cmdlet Windows PowerShell cmdlet, फ़ंक्शन, प्रदाता, और अवधारणाओं के बारे में सहायता प्रदर्शित करता है। यह cmdlet के लिए पैरामीटर, इनपुट, आउटपुट, और नोट्स प्रदर्शित कर सकता है। यह ऑनलाइन सहायता भी प्रदर्शित कर सकता है और सहायता फ़ाइलें अपडेट कर सकता है।

PARAMETERS
    -Name <string>
        सहायता प्राप्त करने के लिए cmdlet या अवधारणा का नाम निर्दिष्ट करता है।

    -Path <string>
        सहायता फ़ाइल का पथ निर्दिष्ट करता है।

    -Category <string[]>
        प्रदर्शित करने के लिए सहायता की श्रेणी निर्दिष्ट करता है। मान्य मान: Alias, Cmdlet, Provider, General, FAQ, Glossary, HelpFile, ScriptCommand, Function, Filter, ExternalScript, All, DefaultHelp, DscResource, Class, Configuration, और Workflow।

    -Full
        संपूर्ण सहायता विवरण प्रदर्शित करता है, जिसमें पैरामीटर विवरण और उदाहरण शामिल हैं।

    -Component <string[]>
        सहायता प्राप्त करने के लिए घटक निर्दिष्ट करता है।

    -Functionality <string[]>
        सहायता प्राप्त करने के लिए कार्यक्षमता निर्दिष्ट करता है।

    -Role <string[]>
        सहायता प्राप्त करने के लिए भूमिका निर्दिष्ट करता है।

    -Online
        डिफ़ॉल्ट इंटरनेट ब्राउज़र में cmdlet के लिए ऑनलाइन सहायता प्रदर्शित करता है।

    -Detailed
        विस्तृत सहायता प्रदर्शित करता है, जिसमें पैरामीटर विवरण शामिल हैं, लेकिन उदाहरण नहीं।

    -Examples
        cmdlet के लिए उदाहरण प्रदर्शित करता है।

    -RelatedLinks
        cmdlet के लिए संबंधित लिंक प्रदर्शित करता है।

    <CommonParameters>
        यह cmdlet सामान्य पैरामीटर का समर्थन करता है: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, और OutVariable। अधिक जानकारी के लिए, about_CommonParameters देखें।

INPUTS
    System.String
        आप सहायता के लिए एक स्ट्रिंग को Get-Help में पाइप कर सकते हैं।

OUTPUTS
    Microsoft.PowerShell.Commands.HelpInfoObject
        Get-Help एक HelpInfoObject ऑब्जेक्ट लौटाता है।

NOTES
    Windows PowerShell 3.0 में, Get-Help cmdlet ने ऑनलाइन सहायता को स्वचालित रूप से डाउनलोड करने और अपडेट करने की क्षमता जोड़ी।

    Get-Help cmdlet कंप्यूटर पर स्थापित सहायता फ़ाइलों से सहायता प्रदर्शित करता है। सहायता फ़ाइलें डाउनलोड करने और अपडेट करने के लिए, Update-Help cmdlet का उपयोग करें।

    पैरामीटर का उपयोग करके, आप किसी विशिष्ट cmdlet या अवधारणा के बारे में सहायता प्रदर्शित कर सकते हैं।

    Get-Help cmdlet प्रदाता-विशिष्ट सहायता भी प्रदर्शित कर सकता है।

EXAMPLES
    -------------------------- उदाहरण 1: किसी cmdlet के लिए सहायता प्रदर्शित करना --------------------------

    Get-Help Get-ChildItem

    यह आदेश Get-ChildItem cmdlet के लिए सहायता प्रदर्शित करता है।

    -------------------------- उदाहरण 2: संपूर्ण सहायता प्रदर्शित करना --------------------------

    Get-Help Get-ChildItem -Full

    यह आदेश Get-ChildItem cmdlet के लिए संपूर्ण सहायता प्रदर्शित करता है, जिसमें पैरामीटर विवरण और उदाहरण शामिल हैं।

    -------------------------- उदाहरण 3: ऑनलाइन सहायता प्रदर्शित करना --------------------------

    Get-Help Get-ChildItem -Online

    यह आदेश डिफ़ॉल्ट इंटरनेट ब्राउज़र में Get-ChildItem cmdlet के लिए ऑनलाइन सहायता प्रदर्शित करता है।

RELATED LINKS
    about_Help
    about_Command_Precedence
    about_Functions
    about_Providers
    Update-Help
    Save-Help
```

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

> .SYNOPSIS
   एक तिथि नियंत्रक वस्तु प्राप्त करता है जो तिथियों की एक श्रृंखला का प्रतिनिधित्व करता है।

.DESCRIPTION
  New-TimeSpan cmdlet एक TimeSpan वस्तु बनाता है जो समय अंतराल का प्रतिनिधित्व करता है।
  आप एक TimeSpan वस्तु को एक तिथि से घटाकर दूसरी तिथि प्राप्त कर सकते हैं, या किसी ऑब्जेक्ट के किसी गुण में जोड़ने या घटाने के लिए एक धनात्मक या ऋणात्मक TimeSpan बना सकते हैं।

  पैरामीटर निर्दिष्ट किए बिना, New-TimeSpan कमांड एक TimeSpan वस्तु लौटाता है जो 0 समय अंतराल का प्रतिनिधित्व करता है।

.PARAMETER Start
  समय अंतराल की शुरुआत निर्दिष्ट करता है।
  एक स्ट्रिंग दर्ज करें जो तिथि और समय का प्रतिनिधित्व करती है, जैसे "3/15/09" या DateTime वस्तु, जैसे Get-Date कमांड से।
  यदि पैरामीटर अनुपलब्ध है, तो वर्तमान तिथि और समय का उपयोग किया जाता है।

.PARAMETER End
  समय अंतराल का अंत निर्दिष्ट करता है।
  एक स्ट्रिंग दर्ज करें जो तिथि और समय का प्रतिनिधित्व करती है, जैसे "3/15/09" या DateTime वस्तु, जैसे Get-Date कमांड से।
  यदि पैरामीटर अनुपलब्ध है, तो वर्तमान तिथि और समय का उपयोग किया जाता है।

.INPUTS
  System.DateTime
    आप New-TimeSpan में एक DateTime वस्तु (जैसे Get-Date द्वारा लौटाई गई) को पाइप कर सकते हैं।

.OUTPUTS
  System.TimeSpan

.EXAMPLE
  PS> New-TimeSpan
  दिन : 0
  घंटे : 0
  मिनट : 0
  सेकंड : 0
  मिलीसेकंड : 0
  टिक : 0
  कुलदिन : 0
  कुलघंटे : 0
  कुलमिनट : 0
  कुलसेकंड : 0
  कुलमिलीसेकंड : 0

  यह आदेश एक TimeSpan वस्तु लौटाता है जो शून्य अवधि का प्रतिनिधित्व करता है।

.EXAMPLE
  PS> New-TimeSpan -Start (Get-Date -Year 2020 -Month 1 -Day 1) -End (Get-Date -Year 2021 -Month 1 -Day 1)
  दिन : 366
  घंटे : 0
  मिनट : 0
  सेकंड : 0
  मिलीसेकंड : 0
  टिक : 31622400000000000
  कुलदिन : 366
  कुलघंटे : 8784
  कुलमिनट : 527040
  कुलसेकंड : 31622400
  कुलमिलीसेकंड : 31622400000

  यह आदेश एक TimeSpan वस्तु लौटाता है जो 2020 और 2021 के बीच का अंतर है।

.EXAMPLE
  PS> New-TimeSpan -Start "2020-01-01" -End "2020-12-31"
  दिन : 365
  घंटे : 0
  मिनट : 0
  सेकंड : 0
  मिलीसेकंड : 0
  टिक : 31536000000000000

  यह आदेश उसी वर्ष के भीतर समय अंतराल दिखाता है।

.RELATED LINKS
  Get-Date
  Set-Date
  Timespan object

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

> मार्कअप ब्लॉक प्रकारों के लिए फ़िल्टर (LLMQuery को भेजा गया)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> अधिकतम उपकरण कॉलबैक लंबाई (LLMQuery को पास की गई)

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-EmoticonsToText.md)
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
