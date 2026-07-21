# Open-VlcMediaPlayer

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlc`

## Synopsis

> व्यापक कॉन्फ़िगरेशन विकल्पों के साथ VLC मीडिया प्लेयर लॉन्च और नियंत्रित करता है।

## Description

यह फ़ंक्शन VLC मीडिया प्लेयर को लॉन्च और नियंत्रित करने के लिए एक व्यापक इंटरफ़ेस प्रदान करता है जिसमें विंडो पोजीशनिंग, मॉनिटर चयन, प्लेबैक सेटिंग्स, ऑडियो और वीडियो फ़िल्टर, सबटाइटल हैंडलिंग, बहुभाषी समर्थन, नेटवर्क प्रॉक्सी सेटिंग्स और उन्नत प्रदर्शन विकल्प शामिल हैं। यदि VLC मौजूद नहीं है तो फ़ंक्शन स्वचालित रूप से इसे इंस्टॉल कर सकता है और मीडिया प्लेबुक परिदृश्यों के लिए व्यापक अनुकूलन प्रदान करता है। यह GenXdev विंडो प्रबंधन प्रणाली के साथ सहजता से एकीकृत होता है और Send-Key कार्यक्षमता के माध्यम से कीबोर्ड इनपुट ऑटोमेशन का समर्थन करता है।

## Syntax

```powershell
Open-VlcMediaPlayer [[-Path] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-FocusWindow] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-KeysToSend <String[]>] [-Left] [-Loop] [-Maximize] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-PassThru] [-PlayAndExit] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | — | — | 0 | — | VLC में खोलने के लिए मीडिया फ़ाइल(फ़ाइलें) या URL |
| `-Width` | Int32 | — | — | 1 | `-1` | विंडो की प्रारंभिक चौड़ाई |
| `-Height` | Int32 | — | — | 2 | `-1` | विंडो की प्रारंभिक ऊंचाई |
| `-X` | Int32 | — | — | 3 | `-999999` | विंडो की प्रारंभिक X स्थिति |
| `-Y` | Int32 | — | — | 4 | `-999999` | विंडो की प्रारंभिक Y स्थिति |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | `@()` | VLC प्लेयर विंडो पर भेजने के लिए कीस्ट्रोक्स, GenXdev\Send-Key cmdlet के लिए दस्तावेज़ देखें |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | VLC को कुंजियाँ भेजते समय नियंत्रण वर्णों और संशोधकों को एस्केप करें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | VLC में कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `50` | VLC को कुंजियाँ भेजते समय विभिन्न इनपुट स्ट्रिंग्स के बीच मिलीसेकंड में विलंब |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजी भेजने के बाद VLC विंडो पर कीबोर्ड फोकस बनाए रखें |
| `-Monitor` | Int32 | — | — | Named | `-1` | उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को हटा दें |
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
| `-NoBorders` | SwitchParameter | — | — | Named | — | विंडो की सीमाएं हटाता है |
| `-Left` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के बाईं ओर रखें |
| `-Right` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के दाईं ओर रखें |
| `-Top` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के ऊपरी किनारे पर रखें |
| `-Bottom` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के निचले हिस्से पर रखें |
| `-Centered` | SwitchParameter | — | — | Named | — | विंडो को स्क्रीन के केंद्र में रखें |
| `-FullScreen` | SwitchParameter | — | — | Named | — | विंडो को F11 भेजता है |
| `-PassThru` | SwitchParameter | — | — | Named | — | प्रत्येक प्रक्रिया के लिए विंडो सहायक लौटाता है |
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
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | VLC खोलने के बाद PowerShell विंडो का फ़ोकस पुनर्स्थापित करें |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |

## Examples

### Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0 Opens a video file in fullscreen mode on the primary monitor for immersive viewing experience.

```powershell
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.
```

### vlc "video.mp4" -fs -m 0 Short form using aliases to open video fullscreen on monitor 0 with minimal typing required.

```powershell
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.
```

### Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English" Opens a movie with external subtitles and specific audio language for enhanced viewing with captions.

```powershell
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
```

## Parameter Details

### `-Path <String[]>`

> VLC में खोलने के लिए मीडिया फ़ाइल(फ़ाइलें) या URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
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
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
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
| **Default value** | `50` |
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
| **Default value** | `-1` |
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
### `-PassThru`

> प्रत्येक प्रक्रिया के लिए विंडो सहायक लौटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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

> VLC खोलने के बाद PowerShell विंडो का फ़ोकस पुनर्स्थापित करें

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
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-MediaFile.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Switch-VlcMediaPlayerRepeat.md)
