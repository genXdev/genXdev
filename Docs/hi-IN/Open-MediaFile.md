# Open-MediaFile

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmedia`, `media`, `findmedia`

## Synopsis

> VLC मीडिया प्लेयर का उपयोग करके उन्नत फ़िल्टरिंग और कॉन्फ़िगरेशन विकल्पों के साथ मीडिया फ़ाइलें खोलता और चलाता है।

## Description

यह फ़ंक्शन खोज पैटर्न के आधार पर मीडिया फ़ाइलों की खोज करता है, एक प्लेलिस्ट बनाता है, और व्यापक कॉन्फ़िगरेशन विकल्पों के साथ VLC मीडिया प्लेयर लॉन्च करता है। यह वीडियो, ऑडियो फ़ाइलों और चित्रों का समर्थन करता है, यदि आवश्यक हो तो स्वचालित VLC इंस्टॉलेशन के साथ। फ़ंक्शन प्लेबैक व्यवहार, विंडो पोजीशनिंग, ऑडियो/वीडियो सेटिंग्स और सबटाइटल हैंडलिंग पर व्यापक नियंत्रण प्रदान करता है।

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | सभी उपलब्ध ड्राइव में खोजें |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | उपनिर्देशिकाओं में पुनरावृत्ति न करें |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | निर्देशिका पार करते समय सिमलिंक और जंक्शन का अनुसरण करें। |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | सापेक्ष खोजों के दौरान वृक्ष में ऊपर की ओर खोज जारी रखने के लिए अधिकतम रिकर्सन गहराई, जब तक कोई आइटम नहीं मिलता। 0 का अर्थ है निष्क्रिय। |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए फ़ाइल का अधिकतम आकार बाइट्स में। 0 का अर्थ असीमित है। |
| `-MinFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए न्यूनतम फ़ाइल आकार बाइट्स में। 0 का अर्थ है कोई न्यूनतम नहीं। |
| `-ModifiedAfter` | DateTime | — | — | Named | — | इस तिथि/समय (UTC) के बाद केवल संशोधित फ़ाइलें शामिल करें। |
| `-ModifiedBefore` | DateTime | — | — | Named | — | केवल इस दिनांक/समय (UTC) से पहले संशोधित फ़ाइलें शामिल करें। |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | छोड़ने के लिए फ़ाइल विशेषताएँ (जैसे, सिस्टम, हिडन या कोई नहीं)। |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | पाइपलाइन इनपुट से खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट "*" है। 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | मीडिया फ़ाइलों को सहेजने के लिए प्लेलिस्ट पथ। यदि निर्दिष्ट नहीं किया गया है, तो प्लेलिस्ट एक अस्थायी निर्देशिका में सहेजी जाएगी। |
| `-Width` | Int32 | — | — | 1 | `-1` | विंडो की प्रारंभिक चौड़ाई |
| `-Height` | Int32 | — | — | 2 | `-1` | विंडो की प्रारंभिक ऊंचाई |
| `-X` | Int32 | — | — | 3 | `-999999` | विंडो की प्रारंभिक X स्थिति |
| `-Y` | Int32 | — | — | 4 | `-999999` | विंडो की प्रारंभिक Y स्थिति |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | VLC प्लेयर विंडो पर भेजने के लिए कीस्ट्रोक्स, GenXdev\Send-Key cmdlet के लिए दस्तावेज़ देखें |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | निर्देशिका कार्यों के लिए अधिकतम समांतरता |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | वैकल्पिक: सेकंड में कैंसलेशन टाइमआउट |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | VLC को कुंजियाँ भेजते समय नियंत्रण वर्णों और संशोधकों को एस्केप करें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | VLC में कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | VLC को कुंजियाँ भेजते समय विभिन्न इनपुट स्ट्रिंग्स के बीच मिलीसेकंड में विलंब |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजी भेजने के बाद VLC विंडो पर कीबोर्ड फोकस बनाए रखें |
| `-Monitor` | Int32 | — | — | Named | `-2` | उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को हटा दें |
| `-AspectRatio` | String | — | — | Named | — | स्रोत पहलू अनुपात |
| `-Crop` | String | — | — | Named | — | वीडियो क्रॉपिंग |
| `-SubtitleFile` | String | — | — | Named | — | उपशीर्षक फ़ाइल का उपयोग करें |
| `-SubtitleScale` | Int32 | — | — | Named | — | उपशीर्षक पाठ स्केलिंग कारक |
| `-SubtitleLanguage` | String | — | — | Named | — | उपशीर्षक भाषा |
| `-AudioLanguage` | String | — | — | Named | — | ऑडियो भाषा |
| `-PreferredAudioLanguage` | String | — | — | Named | — | पसंदीदा ऑडियो भाषा |
| `-HttpProxy` | String | — | — | Named | — | HTTP प्रॉक्सी |
| `-HttpProxyPassword` | String | — | — | Named | — | HTTP प्रॉक्सी पासवर्ड |
| `-VerbosityLevel` | Int32 | — | — | Named | — | वर्बोसिटी स्तर |
| `-SubdirectoryBehavior` | String | — | — | Named | — | उपनिर्देशिका व्यवहार |
| `-IgnoredExtensions` | String | — | — | Named | — | अनदेखा किए गए एक्सटेंशन |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | VLC निष्पादन योग्य का पथ |
| `-ReplayGainMode` | String | — | — | Named | — | रीप्ले गेन मोड |
| `-ReplayGainPreamp` | Single | — | — | Named | — | रीप्ले गेन प्रीएम्प |
| `-ForceDolbySurround` | String | — | — | Named | — | डॉल्बी सराउंड का बलपूर्वक पता लगाना |
| `-AudioFilters` | String[] | — | — | Named | — | ऑडियो फ़िल्टर |
| `-Visualization` | String | — | — | Named | — | ऑडियो विज़ुअलाइज़ेशन |
| `-Deinterlace` | String | — | — | Named | — | डी-इंटरलेस |
| `-DeinterlaceMode` | String | — | — | Named | — | डीइंटरलेस मोड |
| `-VideoFilters` | String[] | — | — | Named | — | वीडियो फ़िल्टर मॉड्यूल |
| `-VideoFilterModules` | String[] | — | — | Named | — | वीडियो फिल्टर मॉड्यूल |
| `-Modules` | String[] | — | — | Named | — | मॉड्यूल |
| `-AudioFilterModules` | String[] | — | — | Named | — | ऑडियो फ़िल्टर मॉड्यूल |
| `-AudioVisualization` | String | — | — | Named | — | ऑडियो विज़ुअलाइज़ेशन मोड |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | पसंदीदा सबटाइटल भाषा |
| `-IgnoredFileExtensions` | String | — | — | Named | — | अनदेखी की गई फ़ाइल एक्सटेंशन |
| `-Arguments` | String | — | — | Named | — | अतिरिक्त तर्क |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | प्लेलिस्ट में केवल वीडियो फ़ाइलें शामिल करें |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | प्लेलिस्ट में केवल ऑडियो फ़ाइलें शामिल करें |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | प्लेलिस्ट में केवल चित्र शामिल करें |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | इसके अतिरिक्त प्लेलिस्ट में वीडियो शामिल करें |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | इसके अलावा प्लेलिस्ट में ऑडियो फ़ाइलें भी शामिल करें |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | प्लेलिस्ट में चित्र भी शामिल करें |
| `-NoBorders` | SwitchParameter | — | — | Named | — | विंडो की सीमाएं हटाता है |
| `-Left` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के बाईं ओर रखें |
| `-Right` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के दाईं ओर रखें |
| `-Top` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के ऊपरी किनारे पर रखें |
| `-Bottom` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के निचले हिस्से पर रखें |
| `-Centered` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के केंद्र में रखें |
| `-FullScreen` | SwitchParameter | — | — | Named | — | विंडो को F11 भेजता है |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | हमेशा शीर्ष पर |
| `-Random` | SwitchParameter | — | — | Named | — | फ़ाइलों को बेतरतीब ढंग से हमेशा चलाएं |
| `-Loop` | SwitchParameter | — | — | Named | — | सभी को दोहराएं |
| `-Repeat` | SwitchParameter | — | — | Named | — | वर्तमान आइटम दोहराएं |
| `-StartPaused` | SwitchParameter | — | — | Named | — | प्रारंभ रोका गया |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | खेलें और बाहर निकलें |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | ऑडियो अक्षम करें |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | उपशीर्षक अक्षम करें |
| `-AutoScale` | SwitchParameter | — | — | Named | — | वीडियो ऑटो स्केलिंग |
| `-HighPriority` | SwitchParameter | — | — | Named | — | प्रक्रिया की प्राथमिकता बढ़ाएँ |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | टाइम स्ट्रेचिंग ऑडियो सक्षम करें |
| `-NewWindow` | SwitchParameter | — | — | Named | — | नया VLC मीडिया प्लेयर इंस्टेंस खोलें |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | वीडियो वॉलपेपर मोड सक्षम करें |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | ऑडियो टाइम स्ट्रेचिंग सक्षम करें |
| `-Close` | SwitchParameter | — | — | Named | — | VLC मीडिया प्लेयर विंडो बंद करें |
| `-SideBySide` | SwitchParameter | — | — | Named | — | यह या तो विंडो को पावरशेल से भिन्न मॉनिटर पर फुलस्क्रीन सेट करेगा, या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड करेगा। |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद VLC विंडो पर फोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | VLC विंडो को खोलने के बाद अग्रभूमि में सेट करें |
| `-Maximize` | SwitchParameter | — | — | Named | — | विंडो को अधिकतम करें |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | VLC खोलने के बाद PowerShell विंडो का फोकस पुनर्स्थापित करता है। |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | फ़ाइलों और निर्देशिकाओं के लिए केस-संवेदनशीलता प्राप्त या सेट करता है |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | निर्देशिका ट्रैवर्सल के लिए अधिकतम रिकर्शन गहराई। 0 का अर्थ असीमित। |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | इन वाइल्डकार्ड पैटर्न से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें (जैसे, *.tmp, *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | खोज द्वारा पाए गए फ़ाइलों को लौटाता है |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | VLC खोले बिना खोज द्वारा मिली फ़ाइलों को लौटाता है |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | प्रत्येक प्रक्रिया के लिए विंडो सहायक लौटाता है |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

डिफ़ॉल्ट VLC सेटिंग्स का उपयोग करके वर्तमान निर्देशिका में सभी मीडिया फ़ाइलें खोलता है।

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

केवल 'vlcmedia' उपनाम का उपयोग करके चित्र फ़ोल्डर से चित्र फ़ाइलों को फ़ुलस्क्रीन मोड में खोलता है।

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

एलियास 'मीडिया' का उपयोग करके वीडियो फ़ाइलों को लूपिंग सक्षम करके खोलता है।

## Parameter Details

### `-Name <String[]>`

> खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-AllDrives`

> सभी उपलब्ध ड्राइव में खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> उपनिर्देशिकाओं में पुनरावृत्ति न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> निर्देशिका पार करते समय सिमलिंक और जंक्शन का अनुसरण करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> सापेक्ष खोजों के दौरान वृक्ष में ऊपर की ओर खोज जारी रखने के लिए अधिकतम रिकर्सन गहराई, जब तक कोई आइटम नहीं मिलता। 0 का अर्थ है निष्क्रिय।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> परिणामों में शामिल करने के लिए फ़ाइल का अधिकतम आकार बाइट्स में। 0 का अर्थ असीमित है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> परिणामों में शामिल करने के लिए न्यूनतम फ़ाइल आकार बाइट्स में। 0 का अर्थ है कोई न्यूनतम नहीं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> इस तिथि/समय (UTC) के बाद केवल संशोधित फ़ाइलें शामिल करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> केवल इस दिनांक/समय (UTC) से पहले संशोधित फ़ाइलें शामिल करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> छोड़ने के लिए फ़ाइल विशेषताएँ (जैसे, सिस्टम, हिडन या कोई नहीं)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object>`

> पाइपलाइन इनपुट से खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट "*" है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PlaylistPath <String>`

> मीडिया फ़ाइलों को सहेजने के लिए प्लेलिस्ट पथ। यदि निर्दिष्ट नहीं किया गया है, तो प्लेलिस्ट एक अस्थायी निर्देशिका में सहेजी जाएगी।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.Path]::GetTempFileName() + '.m3u'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> विंडो की प्रारंभिक चौड़ाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> विंडो की प्रारंभिक ऊंचाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> विंडो की प्रारंभिक X स्थिति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> विंडो की प्रारंभिक Y स्थिति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> VLC प्लेयर विंडो पर भेजने के लिए कीस्ट्रोक्स, GenXdev\Send-Key cmdlet के लिए दस्तावेज़ देखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> निर्देशिका कार्यों के लिए अधिकतम समांतरता

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> वैकल्पिक: सेकंड में कैंसलेशन टाइमआउट

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> VLC को कुंजियाँ भेजते समय नियंत्रण वर्णों और संशोधकों को एस्केप करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> VLC में कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें

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

> VLC को कुंजियाँ भेजते समय विभिन्न इनपुट स्ट्रिंग्स के बीच मिलीसेकंड में विलंब

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> कुंजी भेजने के बाद VLC विंडो पर कीबोर्ड फोकस बनाए रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को हटा दें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> स्रोत पहलू अनुपात

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> वीडियो क्रॉपिंग

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> उपशीर्षक फ़ाइल का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> उपशीर्षक पाठ स्केलिंग कारक

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> उपशीर्षक भाषा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> ऑडियो भाषा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> पसंदीदा ऑडियो भाषा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> HTTP प्रॉक्सी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> HTTP प्रॉक्सी पासवर्ड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> वर्बोसिटी स्तर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> उपनिर्देशिका व्यवहार

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> अनदेखा किए गए एक्सटेंशन

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> VLC निष्पादन योग्य का पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> रीप्ले गेन मोड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> रीप्ले गेन प्रीएम्प

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> डॉल्बी सराउंड का बलपूर्वक पता लगाना

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> ऑडियो फ़िल्टर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> ऑडियो विज़ुअलाइज़ेशन

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> डी-इंटरलेस

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> डीइंटरलेस मोड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> वीडियो फ़िल्टर मॉड्यूल

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> वीडियो फिल्टर मॉड्यूल

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> मॉड्यूल

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> ऑडियो फ़िल्टर मॉड्यूल

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> ऑडियो विज़ुअलाइज़ेशन मोड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> पसंदीदा सबटाइटल भाषा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> अनदेखी की गई फ़ाइल एक्सटेंशन

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> अतिरिक्त तर्क

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyVideos`

> प्लेलिस्ट में केवल वीडियो फ़ाइलें शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAudio`

> प्लेलिस्ट में केवल ऑडियो फ़ाइलें शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPictures`

> प्लेलिस्ट में केवल चित्र शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeVideos`

> इसके अतिरिक्त प्लेलिस्ट में वीडियो शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAudio`

> इसके अलावा प्लेलिस्ट में ऑडियो फ़ाइलें भी शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludePictures`

> प्लेलिस्ट में चित्र भी शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> विंडो की सीमाएं हटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> विंडो को स्क्रीन के बाईं ओर रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> विंडो को स्क्रीन के दाईं ओर रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> विंडो को स्क्रीन के ऊपरी किनारे पर रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> विंडो को स्क्रीन के निचले हिस्से पर रखें

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

> विंडो को स्क्रीन के केंद्र में रखें

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

> विंडो को F11 भेजता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> हमेशा शीर्ष पर

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> फ़ाइलों को बेतरतीब ढंग से हमेशा चलाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> सभी को दोहराएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> वर्तमान आइटम दोहराएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> प्रारंभ रोका गया

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> खेलें और बाहर निकलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> ऑडियो अक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> उपशीर्षक अक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> वीडियो ऑटो स्केलिंग

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> प्रक्रिया की प्राथमिकता बढ़ाएँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> टाइम स्ट्रेचिंग ऑडियो सक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> नया VLC मीडिया प्लेयर इंस्टेंस खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> वीडियो वॉलपेपर मोड सक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> ऑडियो टाइम स्ट्रेचिंग सक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> VLC मीडिया प्लेयर विंडो बंद करें

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

> यह या तो विंडो को पावरशेल से भिन्न मॉनिटर पर फुलस्क्रीन सेट करेगा, या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड करेगा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> खोलने के बाद VLC विंडो पर फोकस करें

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

> VLC विंडो को खोलने के बाद अग्रभूमि में सेट करें

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

> विंडो को अधिकतम करें

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

> VLC खोलने के बाद PowerShell विंडो का फोकस पुनर्स्थापित करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
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
### `-CaseNameMatching <IO.MatchCasing>`

> फ़ाइलों और निर्देशिकाओं के लिए केस-संवेदनशीलता प्राप्त या सेट करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> निर्देशिका ट्रैवर्सल के लिए अधिकतम रिकर्शन गहराई। 0 का अर्थ असीमित।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> इन वाइल्डकार्ड पैटर्न से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें (जैसे, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\\.git\\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> खोज द्वारा पाए गए फ़ाइलों को लौटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruNoOpen`

> VLC खोले बिना खोज द्वारा मिली फ़ाइलों को लौटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruWindow`

> प्रत्येक प्रक्रिया के लिए विंडो सहायक लौटाता है

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MediaFileCreationDate.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Switch-VlcMediaPlayerRepeat.md)
