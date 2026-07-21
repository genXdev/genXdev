# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile`, `transcribe`

## Synopsis

> एक ऑडियो फ़ाइल, वीडियो फ़ाइल, या रिकॉर्डिंग डिवाइस को टेक्स्ट में ट्रांसक्राइब करता है

## Description

व्हिस्पर एआई मॉडल का उपयोग करके एक ऑडियो फ़ाइल, वीडियो फ़ाइल, या रिकॉर्डिंग डिवाइस को टेक्स्ट में ट्रांसक्राइब करता है। यह फ़ंक्शन विभिन्न ऑडियो और वीडियो फ़ॉर्मेट को संभाल सकता है, उन्हें ट्रांसक्रिप्शन के लिए उपयुक्त फ़ॉर्मेट में बदल सकता है, और वैकल्पिक रूप से आउटपुट को किसी भिन्न भाषा में अनुवाद कर सकता है। SRT उपशीर्षक फ़ॉर्मेट आउटपुट और ट्रांसक्रिप्शन गुणवत्ता को ठीक करने के लिए विभिन्न ऑडियो प्रसंस्करण पैरामीटर का समर्थन करता है।

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | प्रतिलेखित करने के लिए ऑडियो या वीडियो फ़ाइल का फ़ाइल पथ। यदि प्रदान नहीं किया गया है, तो माइक्रोफ़ोन से रिकॉर्ड करता है। |
| `-AudioDevice` | String | — | — | Named | — | ऑडियो डिवाइस का नाम या GUID (वाइल्डकार्ड का समर्थन करता है, पहले मिलान को चुनता है) |
| `-LanguageIn` | String | — | — | 1 | — | ऑडियो में अपेक्षित भाषा। |
| `-LanguageOut` | String | — | — | 2 | `$null` | अनुवाद करने की भाषा सेट करता है। |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | टोकन टाइमस्टैम्प के लिए योग सीमा, डिफ़ॉल्ट 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | प्रति खंड अधिकतम टोकन संख्या |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | रिकॉर्डिंग को स्वचालित रूप से रोकने से पहले अधिकतम मौन अवधि |
| `-SilenceThreshold` | Int32 | — | — | Named | — | मौन का पता लगाने की सीमा (0..32767, डिफ़ॉल्ट 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | उपयोग करने के लिए CPU थ्रेड्स की संख्या, डिफ़ॉल्ट 0 (स्वचालित) है |
| `-Temperature` | Single | — | — | Named | `0.5` | वाक् पहचान के लिए तापमान |
| `-TemperatureInc` | Single | — | — | Named | — | तापमान वृद्धि |
| `-Prompt` | String | — | — | Named | — | मॉडल के लिए उपयोग करने का प्रॉम्प्ट |
| `-SuppressRegex` | String | — | — | Named | `$null` | आउटपुट से टोकन को दबाने के लिए रेगेक्स |
| `-AudioContextSize` | Int32 | — | — | Named | — | ऑडियो संदर्भ का आकार |
| `-MaxDuration` | Object | — | — | Named | — | ऑडियो की अधिकतम अवधि |
| `-Offset` | Object | — | — | Named | — | ऑडियो के लिए ऑफ़सेट |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | पिछले टेक्स्ट टोकन की अधिकतम संख्या |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | अधिकतम खंड लंबाई |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | इस क्षण से समय-चिह्न प्रारंभ करें |
| `-LengthPenalty` | Single | — | — | Named | — | लंबाई दंड |
| `-EntropyThreshold` | Single | — | — | Named | — | एंट्रॉपी सीमा |
| `-LogProbThreshold` | Single | — | — | Named | — | लॉग प्रायिकता थ्रेशोल्ड |
| `-NoSpeechThreshold` | Single | — | — | Named | — | कोई भाषण सीमा नहीं |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | आउटपुट में टोकन टाइमस्टैम्प शामिल किए जाएं या नहीं |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | क्या शब्द सीमाओं पर विभाजित करना है |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | चुप्पी को अनदेखा करना है या नहीं (टाइमस्टैम्प खराब हो जाएंगे) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | प्रगति दिखाना है या नहीं |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | क्या खाली पंक्तियों को दबाना नहीं है |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | क्या केवल एक ही खंड का उपयोग करना है |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | क्या विशेष टोकन प्रिंट करने हैं |
| `-NoContext` | SwitchParameter | — | — | Named | — | संदर्भ का उपयोग न करें |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | बीम सर्च सैंपलिंग रणनीति का उपयोग करें |
| `-ModelType` | String | — | — | Named | — | उपयोग करने के लिए व्हिस्पर मॉडल प्रकार, डिफ़ॉल्ट LargeV3Turbo है |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
यह एक नमूना उपशीर्षक है

2
00:00:05,000 --> 00:00:08,500
यह एसआरटी प्रारूप में है |
| `-PassThru` | SwitchParameter | — | — | Named | — | स्ट्रिंग के बजाय ऑब्जेक्ट लौटाता है |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | डेस्कटॉप ऑडियो कैप्चर का उपयोग करना है या माइक्रोफ़ोन इनपुट का |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | डेस्कटॉप और रिकॉर्डिंग डिवाइस दोनों का उपयोग करें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | भाषा, छवि संग्रह आदि जैसे AI वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | भाषा, छवि संग्रह आदि जैसी AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं जैसे भाषा, इमेज कलेक्शन आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |
| `-VOX` | SwitchParameter | — | — | Named | — | रिकॉर्डिंग स्वचालित रूप से रोकने के लिए मौन पहचान का उपयोग करें |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Parameter Details

### `-Input <Object>`

> प्रतिलेखित करने के लिए ऑडियो या वीडियो फ़ाइल का फ़ाइल पथ। यदि प्रदान नहीं किया गया है, तो माइक्रोफ़ोन से रिकॉर्ड करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `WaveFile`, `FilePath`, `MediaFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> ऑडियो डिवाइस का नाम या GUID (वाइल्डकार्ड का समर्थन करता है, पहले मिलान को चुनता है)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> ऑडियो में अपेक्षित भाषा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> अनुवाद करने की भाषा सेट करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> टोकन टाइमस्टैम्प के लिए योग सीमा, डिफ़ॉल्ट 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> प्रति खंड अधिकतम टोकन संख्या

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> रिकॉर्डिंग को स्वचालित रूप से रोकने से पहले अधिकतम मौन अवधि

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> मौन का पता लगाने की सीमा (0..32767, डिफ़ॉल्ट 30)

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

> उपयोग करने के लिए CPU थ्रेड्स की संख्या, डिफ़ॉल्ट 0 (स्वचालित) है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> वाक् पहचान के लिए तापमान

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

> तापमान वृद्धि

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> मॉडल के लिए उपयोग करने का प्रॉम्प्ट

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

> आउटपुट से टोकन को दबाने के लिए रेगेक्स

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> ऑडियो संदर्भ का आकार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Object>`

> ऑडियो की अधिकतम अवधि

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Object>`

> ऑडियो के लिए ऑफ़सेट

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Int32>`

> पिछले टेक्स्ट टोकन की अधिकतम संख्या

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Int32>`

> अधिकतम खंड लंबाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Object>`

> इस क्षण से समय-चिह्न प्रारंभ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> लंबाई दंड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> एंट्रॉपी सीमा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> लॉग प्रायिकता थ्रेशोल्ड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> कोई भाषण सीमा नहीं

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
### `-WithTokenTimestamps`

> आउटपुट में टोकन टाइमस्टैम्प शामिल किए जाएं या नहीं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> क्या शब्द सीमाओं पर विभाजित करना है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> चुप्पी को अनदेखा करना है या नहीं (टाइमस्टैम्प खराब हो जाएंगे)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> प्रगति दिखाना है या नहीं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> क्या खाली पंक्तियों को दबाना नहीं है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> क्या केवल एक ही खंड का उपयोग करना है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> क्या विशेष टोकन प्रिंट करने हैं

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

> संदर्भ का उपयोग न करें

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

> बीम सर्च सैंपलिंग रणनीति का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> उपयोग करने के लिए व्हिस्पर मॉडल प्रकार, डिफ़ॉल्ट LargeV3Turbo है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SRT`

> 1
00:00:01,000 --> 00:00:04,000
यह एक नमूना उपशीर्षक है

2
00:00:05,000 --> 00:00:08,500
यह एसआरटी प्रारूप में है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> स्ट्रिंग के बजाय ऑब्जेक्ट लौटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> डेस्कटॉप ऑडियो कैप्चर का उपयोग करना है या माइक्रोफ़ोन इनपुट का

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> डेस्कटॉप और रिकॉर्डिंग डिवाइस दोनों का उपयोग करें

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

> भाषा, छवि संग्रह आदि जैसी AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें

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

> एआई प्राथमिकताओं जैसे भाषा, इमेज कलेक्शन आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VOX`

> रिकॉर्डिंग स्वचालित रूप से रोकने के लिए मौन पहचान का उपयोग करें

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
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-AllImageMetaData.md)
