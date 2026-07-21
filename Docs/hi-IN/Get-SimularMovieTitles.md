# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> समान गुणों के आधार पर समान मूवी शीर्षक खोजता है।

## Description

प्रदान की गई फिल्मों का विश्लेषण करके सामान्य गुण ढूंढता है और 10 समान फिल्म शीर्षकों की सूची लौटाता है। इनपुट फिल्मों में पैटर्न और विषयों की पहचान करने के लिए AI का उपयोग करता है ताकि प्रासंगिक सिफारिशें सुझा सके।

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | समानताओं के विश्लेषण के लिए फिल्म शीर्षकों की सरणी |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | LLM क्वेरी का प्रकार |
| `-Model` | String | — | — | Named | — | AI संचालन के लिए उपयोग किए जाने वाले मॉडल पहचानकर्ता या पैटर्न |
| `-ApiEndpoint` | String | — | — | Named | — | AI संचालन के लिए API एंडपॉइंट URL |
| `-ApiKey` | String | — | — | Named | — | प्रमाणित AI संचालनों के लिए API कुंजी |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | इंगित करता है कि LLM के पास JSON स्कीमा के लिए कोई समर्थन नहीं है |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI संचालन के लिए सेकंड में टाइमआउट |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-Temperature` | Double | — | — | Named | `-1` | प्रतिक्रिया यादृच्छिकता के लिए तापमान (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | प्रत्येक परिणाम के लिए IMDB खोज खोलता है |
| `-Language` | String | — | — | Named | — | IMDB खोज या ब्राउज़र सत्र के लिए भाषा |
| `-Monitor` | Int32 | — | — | Named | `-1` | ब्राउज़र विंडो प्लेसमेंट के लिए मॉनीटर इंडेक्स या नाम |
| `-Width` | Int32 | — | — | Named | `-1` | ब्राउज़र विंडो की चौड़ाई पिक्सल में |
| `-Height` | Int32 | — | — | Named | `-1` | ब्राउज़र विंडो की ऊंचाई पिक्सेल में |
| `-AcceptLang` | String | — | — | Named | — | ब्राउज़र सत्र के लिए Accept-Language HTTP हेडर |
| `-Private` | SwitchParameter | — | — | Named | — | ब्राउज़र को निजी/गुप्त मोड में खोलें |
| `-Chrome` | SwitchParameter | — | — | Named | — | ब्राउज़र सत्र के लिए Google Chrome का उपयोग करें |
| `-Chromium` | SwitchParameter | — | — | Named | — | ब्राउज़र सत्र के लिए Chromium का उपयोग करें |
| `-Firefox` | SwitchParameter | — | — | Named | — | ब्राउज़र सत्र के लिए मोज़िला फ़ायरफ़ॉक्स का उपयोग करें |
| `-Left` | Int32 | — | — | Named | — | पिक्सल में ब्राउज़र विंडो की बाईं स्थिति |
| `-Right` | Int32 | — | — | Named | — | ब्राउज़र विंडो की सही स्थिति पिक्सल में |
| `-Bottom` | Int32 | — | — | Named | — | ब्राउज़र विंडो की निचली स्थिति पिक्सेल में |
| `-Centered` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के केंद्र में खोलें |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ब्राउज़र को पूर्ण स्क्रीन मोड में खोलें |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | एप्लिकेशन मोड में ब्राउज़र खोलें (न्यूनतम UI) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | सत्र के लिए ब्राउज़र एक्सटेंशन अक्षम करें |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ब्राउज़र सत्र में पॉपअप ब्लॉकर अक्षम करें |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो पर फ़ोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अग्रभूमि पर सेट करें |
| `-Maximize` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अधिकतम करें |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | ब्राउज़र बंद करने के बाद पिछली विंडो पर फ़ोकस पुनर्स्थापित करें |
| `-NewWindow` | SwitchParameter | — | — | Named | — | प्रत्येक IMDB परिणाम को एक नई ब्राउज़र विंडो में खोलें |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | IMDB खोज खोलने के बाद URL लौटाएं |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | कृपया URL लौटाएं, ब्राउज़र न खोलें |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र पर Escape कुंजी भेजें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कीज़ भेजने के बाद ब्राउज़र में कीबोर्ड फ़ोकस बनाए रखें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ब्राउज़र को कुंजी भेजते समय शिफ्ट+एंटर का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ब्राउज़र को कुंजियाँ भेजने के बीच मिलीसेकंड में विलंब |
| `-NoBorders` | SwitchParameter | — | — | Named | — | बिना बॉर्डर के ब्राउज़र विंडो खोलें |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OS द्वारा स्थापित ब्राउज़र के बजाय Playwright-प्रबंधित ब्राउज़र का उपयोग करें |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित वेबकिट ब्राउज़र खोलता है। -PlayWright को दर्शाता है |
| `-Headless` | SwitchParameter | — | — | Named | — | ब्राउज़र को दृश्य विंडो के बिना चलाएं |
| `-All` | SwitchParameter | — | — | Named | — | सभी पंजीकृत आधुनिक ब्राउज़रों में खुलता है |
| `-SideBySide` | SwitchParameter | — | — | Named | — | प्रत्येक परिणाम के लिए ब्राउज़र विंडो को एक साथ खोलें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-Instructions` | String | — | — | Named | — | एआई मॉडल के लिए स्ट्रिंग सूची उत्पन्न करने के निर्देश |
| `-Attachments` | String[] | — | — | Named | — | संलग्न करने के लिए फ़ाइल पथों की सरणी |
| `-ImageDetail` | String | — | — | Named | — | छवि प्रसंस्करण के लिए छवि विस्तार स्तर। |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | प्रसंस्करण के दौरान AI मॉडल द्वारा कॉल किए जा सकने वाले फ़ंक्शन परिभाषाओं की सरणी। |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | AI द्वारा उपयोग किए जाने वाले उपकरणों के रूप में PowerShell कमांड परिभाषाओं की सरणी। |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | कमांड नामों की सरणी जिन्हें निष्पादन से पहले पुष्टि की आवश्यकता नहीं होती है। |
| `-AudioTemperature` | Double | — | — | Named | — | ऑडियो जनरेशन के लिए तापमान। |
| `-TemperatureResponse` | Double | — | — | Named | — | प्रतिक्रिया उत्पादन के लिए तापमान। |
| `-CpuThreads` | Int32 | — | — | Named | — | उपयोग करने के लिए CPU थ्रेड की संख्या। |
| `-SuppressRegex` | String | — | — | Named | — | कुछ आउटपुट को दबाने के लिए नियमित अभिव्यक्ति। |
| `-AudioContextSize` | Int32 | — | — | Named | — | प्रसंस्करण के लिए ऑडियो संदर्भ आकार। |
| `-SilenceThreshold` | Double | — | — | Named | — | ऑडियो प्रसंस्करण के लिए मौन सीमा। |
| `-LengthPenalty` | Double | — | — | Named | — | अनुक्रम उत्पादन के लिए लंबाई दंड। |
| `-EntropyThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए एंट्रॉपी सीमा। |
| `-LogProbThreshold` | Double | — | — | Named | — | आउटपुट फ़िल्टरिंग के लिए लॉग प्रायिकता सीमा। |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ऑडियो डिटेक्शन के लिए कोई स्पीच थ्रेशोल्ड नहीं। |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | भाषण आउटपुट अक्षम करें। |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | विचार वाक् आउटपुट अक्षम करें। |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX (ध्वनि सक्रियण) अक्षम करें। |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | डेस्कटॉप ऑडियो कैप्चर का उपयोग करें। |
| `-NoContext` | SwitchParameter | — | — | Named | — | संदर्भ उपयोग अक्षम करें। |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | बीम खोज नमूनाकरण रणनीति का उपयोग करें। |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | मैं एक सहायक असिस्टेंट हूँ जो JSON आउटपुट देने के लिए डिज़ाइन किया गया हूँ। |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | निर्दिष्ट होने पर, प्रसंस्करण के बाद परिणामी स्ट्रिंग सूची को सिस्टम क्लिपबोर्ड पर वापस कॉपी करता है। |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | पॉवरशेल कमांडलेट सहायता टेक्स्ट का अनुवाद करने के लिए, मुझे मूल टेक्स्ट प्रदान करें। कृपया वह टेक्स्ट साझा करें जिसे आप अनुवाद करना चाहते हैं। |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | मॉडल के विचारों को वार्तालाप इतिहास में न जोड़ें |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | स्थिति-पहचानकर्ता (सत्र आईडी) एक या अधिक विशिष्ट सत्रों की पहचान करता है। जै-से टर्मिनल सर्वर या दूरस्थ डेस्कटॉप सेवाओं द्वारा प्रदान किए गए सत्र। यह पैरामीटर सभी मौजूदा सत्रों की सूची को संदर्भित कर सकता है। अधिक विवरण के लिए, 'एक्स-विन-एनटी-360 /?' टाइप करें। |
| `-Speak` | SwitchParameter | — | — | Named | — | AI प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI विचार प्रतिक्रियाओं के लिए टेक्स्ट-टू-स्पीच सक्षम करें |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | सत्र को सत्र कैश में संग्रहीत न करें |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | AI मॉडल के लिए डिफ़ॉल्ट टूल सक्षम करें। |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | <pre><code>New-AzureADMSInvitation</code></pre>
<pre><code></code></pre> |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | विशिष्ट प्रकार के मार्कअप ब्लॉकों के लिए फ़िल्टर करें। |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | टूल कॉल के लिए अधिकतम कॉलबैक लंबाई। |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Parameter Details

### `-Movies <String[]>`

> समानताओं के विश्लेषण के लिए फिल्म शीर्षकों की सरणी

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM क्वेरी का प्रकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
### `-Language <String>`

> IMDB खोज या ब्राउज़र सत्र के लिए भाषा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> ब्राउज़र विंडो प्लेसमेंट के लिए मॉनीटर इंडेक्स या नाम

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> ब्राउज़र विंडो की चौड़ाई पिक्सल में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> ब्राउज़र विंडो की ऊंचाई पिक्सेल में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> ब्राउज़र सत्र के लिए Accept-Language HTTP हेडर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> ब्राउज़र को निजी/गुप्त मोड में खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> ब्राउज़र सत्र के लिए Google Chrome का उपयोग करें

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

> ब्राउज़र सत्र के लिए Chromium का उपयोग करें

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

> ब्राउज़र सत्र के लिए मोज़िला फ़ायरफ़ॉक्स का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> पिक्सल में ब्राउज़र विंडो की बाईं स्थिति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> ब्राउज़र विंडो की सही स्थिति पिक्सल में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> ब्राउज़र विंडो की निचली स्थिति पिक्सेल में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> ब्राउज़र विंडो को स्क्रीन के केंद्र में खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> ब्राउज़र को पूर्ण स्क्रीन मोड में खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> एप्लिकेशन मोड में ब्राउज़र खोलें (न्यूनतम UI)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> सत्र के लिए ब्राउज़र एक्सटेंशन अक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> ब्राउज़र सत्र में पॉपअप ब्लॉकर अक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> खोलने के बाद ब्राउज़र विंडो पर फ़ोकस करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> खोलने के बाद ब्राउज़र विंडो को अग्रभूमि पर सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> खोलने के बाद ब्राउज़र विंडो को अधिकतम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> ब्राउज़र बंद करने के बाद पिछली विंडो पर फ़ोकस पुनर्स्थापित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> प्रत्येक IMDB परिणाम को एक नई ब्राउज़र विंडो में खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> IMDB खोज खोलने के बाद URL लौटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> कृपया URL लौटाएं, ब्राउज़र न खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> खोलने के बाद ब्राउज़र पर Escape कुंजी भेजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> कीज़ भेजने के बाद ब्राउज़र में कीबोर्ड फ़ोकस बनाए रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> ब्राउज़र को कुंजी भेजते समय शिफ्ट+एंटर का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> ब्राउज़र को कुंजियाँ भेजने के बीच मिलीसेकंड में विलंब

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> बिना बॉर्डर के ब्राउज़र विंडो खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> OS द्वारा स्थापित ब्राउज़र के बजाय Playwright-प्रबंधित ब्राउज़र का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Playwright-प्रबंधित वेबकिट ब्राउज़र खोलता है। -PlayWright को दर्शाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> ब्राउज़र को दृश्य विंडो के बिना चलाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> सभी पंजीकृत आधुनिक ब्राउज़रों में खुलता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> प्रत्येक परिणाम के लिए ब्राउज़र विंडो को एक साथ खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
### `-Instructions <String>`

> एआई मॉडल के लिए स्ट्रिंग सूची उत्पन्न करने के निर्देश

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> छवि प्रसंस्करण के लिए छवि विस्तार स्तर।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> प्रसंस्करण के दौरान AI मॉडल द्वारा कॉल किए जा सकने वाले फ़ंक्शन परिभाषाओं की सरणी।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> AI द्वारा उपयोग किए जाने वाले उपकरणों के रूप में PowerShell कमांड परिभाषाओं की सरणी।

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

> कमांड नामों की सरणी जिन्हें निष्पादन से पहले पुष्टि की आवश्यकता नहीं होती है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> ऑडियो जनरेशन के लिए तापमान।

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

> प्रतिक्रिया उत्पादन के लिए तापमान।

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

> ऑडियो प्रसंस्करण के लिए मौन सीमा।

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

> विचार वाक् आउटपुट अक्षम करें।

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
### `-SetClipboard`

> निर्दिष्ट होने पर, प्रसंस्करण के बाद परिणामी स्ट्रिंग सूची को सिस्टम क्लिपबोर्ड पर वापस कॉपी करता है।

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

> AI मॉडल के लिए डिफ़ॉल्ट टूल सक्षम करें।

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
