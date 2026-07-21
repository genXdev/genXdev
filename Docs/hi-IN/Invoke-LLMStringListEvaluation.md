# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getlist`, `getstring`

## Synopsis

> AI विश्लेषण का उपयोग करके इनपुट टेक्स्ट से प्रासंगिक स्ट्रिंग्स की सूची निकालता या उत्पन्न करता है।

## Description

यह फ़ंक्शन इनपुट टेक्स्ट का विश्लेषण करने और प्रासंगिक स्ट्रिंग्स की सूची निकालने या उत्पन्न करने के लिए AI मॉडल का उपयोग करता है। यह मुख्य बिंदुओं की पहचान करने, सूचियों से आइटम निकालने या संबंधित अवधारणाओं को उत्पन्न करने के लिए टेक्स्ट को प्रोसेस कर सकता है। इनपुट सीधे पैरामीटर, पाइपलाइन या सिस्टम क्लिपबोर्ड से प्रदान किया जा सकता है। फ़ंक्शन एक स्ट्रिंग ऐरे लौटाता है और वैकल्पिक रूप से परिणामों को क्लिपबोर्ड पर कॉपी करता है।

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | .SYNOPSIS
Get-Item कमांड-लेट किसी निर्दिष्ट स्थान पर आइटम (जैसे फ़ाइल या फ़ोल्डर) प्राप्त करता है।

.DESCRIPTION
यह कमांड-लेट किसी निर्दिष्ट पथ पर आइटम प्राप्त करता है। यह आपको एक निर्देशिका में फ़ाइलों और फ़ोल्डरों को देखने, या रजिस्ट्री से मान प्राप्त करने की अनुमति देता है। यह कमांड-लेट किसी भी PowerShell प्रदाता द्वारा समर्थित स्थान के साथ काम करता है।

.PARAMETER Path
प्राप्त करने के लिए आइटम का पथ निर्दिष्ट करता है। वाइल्डकार्ड वर्ण स्वीकार किए जाते हैं लेकिन केवल एक ही आइटम लौटाया जाता है। यदि पथ में वाइल्डकार्ड वर्ण हैं और कई आइटम मिलते हैं, तो यह कमांड-लेट पहला आइटम वापस करता है।

.PARAMETER LiteralPath
प्राप्त करने के लिए आइटम का पथ निर्दिष्ट करता है। Path के विपरीत, LiteralPath का मान बिल्कुल वैसा ही उपयोग किया जाता है जैसा टाइप किया गया है। कोई भी वर्ण वाइल्डकार्ड के रूप में व्याख्या नहीं किया जाता है। यदि पथ में एस्केप वर्ण हैं, तो उन्हें एकल उद्धरण चिह्नों में संलग्न करें ताकि PowerShell उन्हें एस्केप वर्णों के रूप में व्याख्या न करे।

.PARAMETER Filter
पथ को निर्दिष्ट करने के लिए एक फ़िल्टर निर्दिष्ट करता है। प्रदाता-विशिष्ट फ़िल्टर भाषा को निर्दिष्ट करने के लिए फ़िल्टर पैरामीटर का उपयोग करना अधिक कुशल है, क्योंकि प्रदाता PowerShell को परिणाम लागू करने के बजाय, वस्तु प्राप्त करते समय उन्हें लागू करता है।

.PARAMETER Include
इस कमांड-लेट द्वारा संचालन में शामिल आइटम निर्दिष्ट करता है। इस पैरामीटर का मान Path पैरामीटर को योग्य बनाता है। एक पथ या पथ पैटर्न (जैसे *.txt) दर्ज करें। वाइल्डकार्ड की अनुमति है। Include पैरामीटर तभी प्रभावी होता है जब कमांड में Path पैरामीटर का मान होता है जो किसी कंटेनर की सामग्री को निर्दिष्ट करता है, जैसे C:\Windows\*, जहाँ वाइल्डकार्ड वर्ण C:\Windows निर्देशिका की सामग्री को निर्दिष्ट करता है।

.PARAMETER Exclude
इस कमांड-लेट द्वारा संचालन से बाहर किए गए आइटम निर्दिष्ट करता है। इस पैरामीटर का मान Path पैरामीटर को योग्य बनाता है। एक पथ या पथ पैटर्न (जैसे *.txt) दर्ज करें। वाइल्डकार्ड की अनुमति है। Exclude पैरामीटर तभी प्रभावी होता है जब कमांड में Path पैरामीटर का मान होता है जो किसी कंटेनर की सामग्री को निर्दिष्ट करता है, जैसे C:\Windows\*, जहाँ वाइल्डकार्ड वर्ण C:\Windows निर्देशिका की सामग्री को निर्दिष्ट करता है।

.PARAMETER Force
यह पैरामीटर डिफ़ॉल्ट रूप से नहीं किए जा सकने वाले कार्यों को करने के लिए कमांड-लेट को बाध्य करता है, जैसे किसी फ़ाइल को प्राप्त करना जिसे अन्यथा उपयोगकर्ता पहुँच प्रतिबंधों के कारण नहीं देख सकता है। कार्यान्वयन प्रदाता से भिन्न होता है। अधिक जानकारी के लिए about_Providers देखें।

.PARAMETER Credential
ऐसा उपयोगकर्ता खाता निर्दिष्ट करता है जिसके पास इस कार्य को करने की अनुमति है। डिफ़ॉल्ट वर्तमान उपयोगकर्ता है। 'User01' या 'Domain01\User01' जैसा उपयोगकर्ता नाम दर्ज करें, या Get-Credential कमांड-लेट द्वारा उत्पन्न PSCredential ऑब्जेक्ट दर्ज करें। यदि आप एक उपयोगकर्ता नाम टाइप करते हैं, तो आपको एक पासवर्ड के लिए संकेत दिया जाएगा। यह पैरामीटर PowerShell में स्थापित किसी भी प्रदाता द्वारा समर्थित नहीं है।

.INPUTS
System.String
आप पाइपलाइन के माध्यम से इस कमांड-लेट में एक पथ (एक स्ट्रिंग) भेज सकते हैं।

.OUTPUTS
System.Management.Automation.PSObject
यह कमांड-लेट उन ऑब्जेक्ट्स को लौटाता है जिन्हें वह प्राप्त करता है। ऑब्जेक्ट प्रकार प्रदाता पथ पर निर्भर करता है।

.NOTES
यह कमांड-लेट किसी भी प्रदाता द्वारा उजागर डेटा के साथ काम करने के लिए डिज़ाइन किया गया है। अपने सत्र में उपलब्ध प्रदाताओं की सूची के लिए, Get-PSProvider चलाएँ। अधिक जानकारी के लिए, about_Providers देखें।

.LINK
Get-ChildItem
.LINK
Get-ItemProperty
.LINK
Set-Item
.LINK
about_Providers |
| `-Instructions` | String | — | — | 1 | `''` | एआई मॉडल के लिए स्ट्रिंग सूची उत्पन्न करने के निर्देश |
| `-Attachments` | String[] | — | — | 2 | `@()` | संलग्न करने के लिए फ़ाइल पथों की सरणी |
| `-Temperature` | Double | — | — | Named | `-1` | प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | इमेज डिटेल लेवल |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | फ़ंक्शन परिभाषाओं की सरणी |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | उपकरण के रूप में उपयोग करने के लिए PowerShell कमांड परिभाषाओं की सरणी |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | उन कमांडों का सरणी जिनमें पुष्टि की आवश्यकता नहीं है |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI संचालन के लिए सेकंड में टाइमआउट |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | क्लिपबोर्ड पर परिणाम कॉपी करें |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | पॉवरशेल कमांडलेट सहायता टेक्स्ट का अनुवाद करने के लिए, मुझे मूल टेक्स्ट प्रदान करें। कृपया वह टेक्स्ट साझा करें जिसे आप अनुवाद करना चाहते हैं। |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | मॉडल के विचारों को वार्तालाप इतिहास में न जोड़ें |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | स्थिति-पहचानकर्ता (सत्र आईडी) एक या अधिक विशिष्ट सत्रों की पहचान करता है। जै-से टर्मिनल सर्वर या दूरस्थ डेस्कटॉप सेवाओं द्वारा प्रदान किए गए सत्र। यह पैरामीटर सभी मौजूदा सत्रों की सूची को संदर्भित कर सकता है। अधिक विवरण के लिए, 'एक्स-विन-एनटी-360 /?' टाइप करें। |
| `-Speak` | SwitchParameter | — | — | Named | — | AI प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI विचार प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | सत्र को सत्र कैश में संग्रहीत न करें |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI मॉडल के लिए डिफ़ॉल्ट टूल सक्षम करें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <pre><code>New-AzureADMSInvitation</code></pre>
<pre><code></code></pre> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | विशिष्ट प्रकार के मार्कअप ब्लॉकों के लिए फ़िल्टर करें। |
| `-AudioTemperature` | Double | — | — | Named | — | ऑडियो प्रतिक्रिया की यादृच्छिकता के लिए तापमान। |
| `-TemperatureResponse` | Double | — | — | Named | — | पाठ प्रतिक्रिया यादृच्छिकता के लिए तापमान। |
| `-Language` | String | — | — | Named | — | हिंदी (भारत) |
| `-CpuThreads` | Int32 | — | — | Named | — | उपयोग करने के लिए CPU थ्रेड की संख्या। |
| `-SuppressRegex` | String | — | — | Named | — | कुछ आउटपुट को दबाने के लिए नियमित अभिव्यक्ति। |
| `-AudioContextSize` | Int32 | — | — | Named | — | प्रसंस्करण के लिए ऑडियो संदर्भ आकार। |
| `-SilenceThreshold` | Double | — | — | Named | — | ऑडियो पहचान के लिए मौन सीमा। |
| `-LengthPenalty` | Double | — | — | Named | — | अनुक्रम उत्पादन के लिए लंबाई दंड। |
| `-EntropyThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए एंट्रॉपी सीमा। |
| `-LogProbThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए लॉग प्रायिकता सीमा। |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ऑडियो डिटेक्शन के लिए कोई स्पीच थ्रेशोल्ड नहीं। |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | भाषण आउटपुट अक्षम करें। |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | विचारों के लिए ध्वनि आउटपुट अक्षम करें। |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (ध्वनि सक्रियण) अक्षम करें। |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | डेस्कटॉप ऑडियो कैप्चर का उपयोग करें। |
| `-NoContext` | SwitchParameter | — | — | Named | — | संदर्भ उपयोग अक्षम करें। |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | बीम खोज नमूनाकरण रणनीति का उपयोग करें। |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | मैं एक सहायक असिस्टेंट हूँ जो JSON आउटपुट देने के लिए डिज़ाइन किया गया हूँ। |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | टूल कॉल के लिए अधिकतम कॉलबैक लंबाई। |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Parameter Details

### `-Text <String>`

> .SYNOPSIS
Get-Item कमांड-लेट किसी निर्दिष्ट स्थान पर आइटम (जैसे फ़ाइल या फ़ोल्डर) प्राप्त करता है।

.DESCRIPTION
यह कमांड-लेट किसी निर्दिष्ट पथ पर आइटम प्राप्त करता है। यह आपको एक निर्देशिका में फ़ाइलों और फ़ोल्डरों को देखने, या रजिस्ट्री से मान प्राप्त करने की अनुमति देता है। यह कमांड-लेट किसी भी PowerShell प्रदाता द्वारा समर्थित स्थान के साथ काम करता है।

.PARAMETER Path
प्राप्त करने के लिए आइटम का पथ निर्दिष्ट करता है। वाइल्डकार्ड वर्ण स्वीकार किए जाते हैं लेकिन केवल एक ही आइटम लौटाया जाता है। यदि पथ में वाइल्डकार्ड वर्ण हैं और कई आइटम मिलते हैं, तो यह कमांड-लेट पहला आइटम वापस करता है।

.PARAMETER LiteralPath
प्राप्त करने के लिए आइटम का पथ निर्दिष्ट करता है। Path के विपरीत, LiteralPath का मान बिल्कुल वैसा ही उपयोग किया जाता है जैसा टाइप किया गया है। कोई भी वर्ण वाइल्डकार्ड के रूप में व्याख्या नहीं किया जाता है। यदि पथ में एस्केप वर्ण हैं, तो उन्हें एकल उद्धरण चिह्नों में संलग्न करें ताकि PowerShell उन्हें एस्केप वर्णों के रूप में व्याख्या न करे।

.PARAMETER Filter
पथ को निर्दिष्ट करने के लिए एक फ़िल्टर निर्दिष्ट करता है। प्रदाता-विशिष्ट फ़िल्टर भाषा को निर्दिष्ट करने के लिए फ़िल्टर पैरामीटर का उपयोग करना अधिक कुशल है, क्योंकि प्रदाता PowerShell को परिणाम लागू करने के बजाय, वस्तु प्राप्त करते समय उन्हें लागू करता है।

.PARAMETER Include
इस कमांड-लेट द्वारा संचालन में शामिल आइटम निर्दिष्ट करता है। इस पैरामीटर का मान Path पैरामीटर को योग्य बनाता है। एक पथ या पथ पैटर्न (जैसे *.txt) दर्ज करें। वाइल्डकार्ड की अनुमति है। Include पैरामीटर तभी प्रभावी होता है जब कमांड में Path पैरामीटर का मान होता है जो किसी कंटेनर की सामग्री को निर्दिष्ट करता है, जैसे C:\Windows\*, जहाँ वाइल्डकार्ड वर्ण C:\Windows निर्देशिका की सामग्री को निर्दिष्ट करता है।

.PARAMETER Exclude
इस कमांड-लेट द्वारा संचालन से बाहर किए गए आइटम निर्दिष्ट करता है। इस पैरामीटर का मान Path पैरामीटर को योग्य बनाता है। एक पथ या पथ पैटर्न (जैसे *.txt) दर्ज करें। वाइल्डकार्ड की अनुमति है। Exclude पैरामीटर तभी प्रभावी होता है जब कमांड में Path पैरामीटर का मान होता है जो किसी कंटेनर की सामग्री को निर्दिष्ट करता है, जैसे C:\Windows\*, जहाँ वाइल्डकार्ड वर्ण C:\Windows निर्देशिका की सामग्री को निर्दिष्ट करता है।

.PARAMETER Force
यह पैरामीटर डिफ़ॉल्ट रूप से नहीं किए जा सकने वाले कार्यों को करने के लिए कमांड-लेट को बाध्य करता है, जैसे किसी फ़ाइल को प्राप्त करना जिसे अन्यथा उपयोगकर्ता पहुँच प्रतिबंधों के कारण नहीं देख सकता है। कार्यान्वयन प्रदाता से भिन्न होता है। अधिक जानकारी के लिए about_Providers देखें।

.PARAMETER Credential
ऐसा उपयोगकर्ता खाता निर्दिष्ट करता है जिसके पास इस कार्य को करने की अनुमति है। डिफ़ॉल्ट वर्तमान उपयोगकर्ता है। 'User01' या 'Domain01\User01' जैसा उपयोगकर्ता नाम दर्ज करें, या Get-Credential कमांड-लेट द्वारा उत्पन्न PSCredential ऑब्जेक्ट दर्ज करें। यदि आप एक उपयोगकर्ता नाम टाइप करते हैं, तो आपको एक पासवर्ड के लिए संकेत दिया जाएगा। यह पैरामीटर PowerShell में स्थापित किसी भी प्रदाता द्वारा समर्थित नहीं है।

.INPUTS
System.String
आप पाइपलाइन के माध्यम से इस कमांड-लेट में एक पथ (एक स्ट्रिंग) भेज सकते हैं।

.OUTPUTS
System.Management.Automation.PSObject
यह कमांड-लेट उन ऑब्जेक्ट्स को लौटाता है जिन्हें वह प्राप्त करता है। ऑब्जेक्ट प्रकार प्रदाता पथ पर निर्भर करता है।

.NOTES
यह कमांड-लेट किसी भी प्रदाता द्वारा उजागर डेटा के साथ काम करने के लिए डिज़ाइन किया गया है। अपने सत्र में उपलब्ध प्रदाताओं की सूची के लिए, Get-PSProvider चलाएँ। अधिक जानकारी के लिए, about_Providers देखें।

.LINK
Get-ChildItem
.LINK
Get-ItemProperty
.LINK
Set-Item
.LINK
about_Providers

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

> क्लिपबोर्ड पर परिणाम कॉपी करें

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

> मॉडल के विचारों को वार्तालाप इतिहास में न जोड़ें

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

> AI मॉडल के लिए डिफ़ॉल्ट टूल सक्षम करें

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
### `-OutputMarkdownBlocksOnly`

> <pre><code>New-AzureADMSInvitation</code></pre>
<pre><code></code></pre>

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

> विशिष्ट प्रकार के मार्कअप ब्लॉकों के लिए फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> ऑडियो प्रतिक्रिया की यादृच्छिकता के लिए तापमान।

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

> पाठ प्रतिक्रिया यादृच्छिकता के लिए तापमान।

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

> हिंदी (भारत)

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

> उपयोग करने के लिए CPU थ्रेड की संख्या।

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

> ऑडियो पहचान के लिए मौन सीमा।

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

> अनुक्रम उत्पादन के लिए लंबाई दंड।

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

> आउटपुट फ़िल्टरिंग के लिए एंट्रॉपी सीमा।

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

> आउटपुट फ़िल्टरिंग के लिए लॉग प्रायिकता सीमा।

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

> ऑडियो डिटेक्शन के लिए कोई स्पीच थ्रेशोल्ड नहीं।

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

> भाषण आउटपुट अक्षम करें।

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

> विचारों के लिए ध्वनि आउटपुट अक्षम करें।

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

> VOX (ध्वनि सक्रियण) अक्षम करें।

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

> डेस्कटॉप ऑडियो कैप्चर का उपयोग करें।

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

> संदर्भ उपयोग अक्षम करें।

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

> मैं एक सहायक असिस्टेंट हूँ जो JSON आउटपुट देने के लिए डिज़ाइन किया गया हूँ।

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

- `String[]`

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
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-LLMQuery.md)
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
