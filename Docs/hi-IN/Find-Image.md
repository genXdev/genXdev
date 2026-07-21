# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages`, `li`

## Synopsis

> निर्दिष्ट निर्देशिकाओं में फ़िल्टरिंग क्षमताओं और वैकल्पिक ब्राउज़र-आधारित गैलरी प्रदर्शन के साथ छवि फ़ाइलों और मेटाडेटा की खोज करता है।

## Description

निर्दिष्ट निर्देशिका और उसकी उपनिर्देशिकाओं में छवि फ़ाइलों (jpg, jpeg, png, gif, bmp, webp, tiff, tif) की खोज करता है। प्रत्येक छवि के लिए, मेटाडेटा के लिए संबंधित description.json, keywords.json, people.json, और objects.json फ़ाइलों की जाँच करता है। कीवर्ड मिलान, व्यक्ति पहचान और वस्तु पहचान के आधार पर छवियों को फ़िल्टर कर सकता है, फिर परिणामों को ऑब्जेक्ट के रूप में लौटा सकता है। परिणामों को ब्राउज़र-आधारित चिनाई लेआउट (masonry layout) में प्रदर्शित करने के लिए -ShowInBrowser का उपयोग करें।

पैरामीटर तर्क:
- प्रत्येक पैरामीटर प्रकार (कीवर्ड, लोग, ऑब्जेक्ट, आदि) के भीतर: OR तर्क का उपयोग करता है
  उदाहरण: -Keywords "cat","dog" या तो बिल्ली या कुत्ता होने वाली छवियाँ खोजता है
- विभिन्न पैरामीटर प्रकारों के बीच: AND तर्क का उपयोग करता है
  उदाहरण: -Keywords "cat" -People "John" बिल्ली और जॉन दोनों वाली छवियाँ खोजता है
- EXIF रेंज पैरामीटर: रेंज फ़िल्टर करने के लिए [न्यूनतम, अधिकतम] मान प्रदान करें
- स्ट्रिंग पैरामीटर: * और ? के साथ वाइल्डकार्ड मिलान का समर्थन करते हैं

यह फ़ंक्शन छवि निर्देशिकाओं में खोजता है और JSON प्रारूप में मेटाडेटा वाले वैकल्पिक डेटा स्ट्रीम (alternate data streams) की जाँच करता है। यह वाइल्डकार्ड पैटर्न का उपयोग करके कीवर्ड का मिलान कर सकता है, विशिष्ट लोगों के लिए फ़िल्टर कर सकता है, और पहचानी गई वस्तुओं की खोज कर सकता है। डिफ़ॉल्ट रूप से, यह छवि डेटा ऑब्जेक्ट लौटाता है। वेब ब्राउज़र में प्रदर्शित करने के लिए -ShowInBrowser का उपयोग करें।

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | सभी संभावित मेटाडेटा प्रकारों में से किसी से भी मेल खाएगा। |
| `-Name` | String[] | — | — | 1 | `@('.\')` | छवियों की खोज के लिए निर्देशिका पथों की सरणी |
| `-Language` | String | — | — | Named | — | विवरणों और कीवर्ड के लिए भाषा। |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | खोजने के लिए विवरण पाठ, वाइल्डकार्ड की अनुमति है। |
| `-Keywords` | String[] | — | — | Named | `@()` | खोजने के लिए कीवर्ड, वाइल्डकार्ड की अनुमति है। |
| `-People` | String[] | — | — | Named | `@()` | खोजने के लिए लोग, वाइल्डकार्ड की अनुमति है। |
| `-Objects` | String[] | — | — | Named | `@()` | खोजने के लिए ऑब्जेक्ट, वाइल्डकार्ड की अनुमति है। |
| `-Scenes` | String[] | — | — | Named | `@()` | दृश्य श्रेणियाँ जिन्हें खोजना है, वाइल्डकार्ड अनुमत हैं। |
| `-PictureType` | String[] | — | — | Named | `@()` | चित्र प्रकार जिसके अनुसार फ़िल्टर करना है (जैसे, 'daylight', 'evening', 'indoor', आदि)। वाइल्डकार्ड समर्थित हैं। |
| `-StyleType` | String[] | — | — | Named | `@()` | फ़िल्टर करने के लिए शैली प्रकार (उदा., 'कैज़ुअल', 'फ़ॉर्मल', आदि)। वाइल्डकार्ड समर्थन। |
| `-OverallMood` | String[] | — | — | Named | `@()` | समग्र मूड जिसके द्वारा फ़िल्टर करना है (उदा., 'शांत', 'प्रसन्न', 'दुखी' आदि). वाइल्डकार्ड का समर्थन करता है। |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | छवि EXIF मेटाडेटा में कैमरा निर्माता द्वारा फ़िल्टर करें। वाइल्डकार्ड समर्थन करता है। |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | छवि EXIF मेटाडेटा में कैमरा मॉडल द्वारा फ़िल्टर करें. वाइल्डकार्ड का समर्थन करता है. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | छवि EXIF मेटाडेटा में GPS अक्षांश सीमा के अनुसार फ़िल्टर करें। |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | छवि EXIF मेटाडेटा में जीपीएस देशांतर सीमा के अनुसार फ़िल्टर करें। |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | छवि EXIF मेटाडेटा में GPS ऊंचाई सीमा के अनुसार फ़िल्टर करें (मीटर में)। |
| `-GeoLocation` | Double[] | — | — | Named | — | खोजने के लिए भौगोलिक निर्देशांक [अक्षांश, देशांतर]। |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | छवियों की खोज के लिए जियोलोकेशन से अधिकतम दूरी मीटर में। |
| `-MetaExposureTime` | Double[] | — | — | Named | — | छवि EXIF मेटाडेटा में एक्सपोज़र समय सीमा द्वारा फ़िल्टर करें (सेकंड में)। |
| `-MetaFNumber` | Double[] | — | — | Named | — | छवि EXIF मेटाडेटा में F-संख्या (एपर्चर) रेंज द्वारा फ़िल्टर करें। |
| `-MetaISO` | Int32[] | — | — | Named | — | छवि EXIF मेटाडेटा में ISO संवेदनशीलता सीमा द्वारा फ़िल्टर करें। |
| `-MetaFocalLength` | Double[] | — | — | Named | — | छवि EXIF मेटाडेटा में फोकल लंबाई सीमा (मिमी में) द्वारा फ़िल्टर करें। |
| `-MetaWidth` | Int32[] | — | — | Named | — | EXIF मेटाडेटा से पिक्सल में छवि चौड़ाई सीमा के अनुसार फ़िल्टर करें। |
| `-MetaHeight` | Int32[] | — | — | Named | — | EXIF मेटाडेटा से पिक्सल में छवि ऊंचाई सीमा के अनुसार फ़िल्टर करें। |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | EXIF मेटाडेटा से ली गई तिथि के अनुसार फ़िल्टर करें। एक तिथि सीमा हो सकती है। |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | गैलरी के लिए शीर्षक |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | गैलरी का विवरण |
| `-AcceptLang` | String | — | — | Named | `$null` | ब्राउज़र स्वीकार-भाषा HTTP हेडर सेट करें |
| `-KeysToSend` | String[] | — | — | Named | — | ब्राउज़र विंडो पर भेजने के लिए कीस्ट्रोक्स, cmdlet GenXdev\Send-Key के दस्तावेज़ देखें |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय नियंत्रण वर्णों और संशोधकों को एस्केप करें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजने के बाद PowerShell में कीबोर्ड फोकस को लौटने से रोकना |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | कुंजियाँ भेजते समय विभिन्न इनपुट स्ट्रिंग्स के बीच मिलीसेकंड में विलंब |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो पर फ़ोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अग्रभूमि पर सेट करें |
| `-Maximize` | SwitchParameter | — | — | Named | — | स्थिति तय करने के बाद विंडो को अधिकतम करें |
| `-SetRestored` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें |
| `-Monitor` | Int32 | — | — | Named | `-2` | (उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 = छोड़ दें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट रूप से `Global:DefaultSecondaryMonitor` या यदि नहीं मिलता है तो 2) |
| `-Width` | Int32 | — | — | Named | `-1` | वेबब्राउज़र विंडो की प्रारंभिक चौड़ाई |
| `-Height` | Int32 | — | — | Named | `-1` | वेबब्राउज़र विंडो की प्रारंभिक ऊंचाई |
| `-X` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक X स्थिति |
| `-Y` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक Y स्थिति |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | छवियों को बेस64 के रूप में एम्बेड करें। |
| `-NoFallback` | SwitchParameter | — | — | Named | — | फ़ॉलबैक व्यवहार को अक्षम करने के लिए स्विच करें। |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | डेटाबेस आरंभीकरण और पुनर्निर्माण को छोड़ने के लिए स्विच करें। |
| `-AllDrives` | SwitchParameter | — | — | Named | — | सभी उपलब्ध ड्राइव में खोजें |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | उपनिर्देशिकाओं में पुनरावृत्ति न करें |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | निर्देशिका पार करते समय सिमलिंक और जंक्शन का अनुसरण करें। |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | निर्देशिका ट्रैवर्सल के लिए अधिकतम रिकर्शन गहराई। 0 का अर्थ असीमित। |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | सापेक्ष खोजों के दौरान वृक्ष में ऊपर की ओर खोज जारी रखने के लिए अधिकतम रिकर्सन गहराई, जब तक कोई आइटम नहीं मिलता। 0 का अर्थ है निष्क्रिय। |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए फ़ाइल का अधिकतम आकार बाइट्स में। 0 का अर्थ असीमित है। |
| `-MinFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए न्यूनतम फ़ाइल आकार बाइट्स में। 0 का अर्थ है कोई न्यूनतम नहीं। |
| `-ModifiedAfter` | DateTime | — | — | Named | — | इस तिथि/समय (UTC) के बाद केवल संशोधित फ़ाइलें शामिल करें। |
| `-ModifiedBefore` | DateTime | — | — | Named | — | केवल इस दिनांक/समय (UTC) से पहले संशोधित फ़ाइलें शामिल करें। |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | छोड़ने के लिए फ़ाइल विशेषताएँ (जैसे, सिस्टम, हिडन या कोई नहीं)। |
| `-HasNudity` | SwitchParameter | — | — | Named | — | अश्लीलता वाली छवियों को फ़िल्टर करें। |
| `-NoNudity` | SwitchParameter | — | — | Named | — | उन चित्रों को फ़िल्टर करें जिनमें नग्नता नहीं है। |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | ऐसी छवियाँ फ़िल्टर करें जिनमें स्पष्ट सामग्री हो। |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | उन छवियों को फ़िल्टर करें जिनमें स्पष्ट सामग्री नहीं है। |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | खोज परिणामों को ब्राउज़र-आधारित इमेज गैलरी में प्रदर्शित करें। |
| `-PassThru` | SwitchParameter | — | — | Named | — | इमेज डेटा को ऑब्जेक्ट के रूप में लौटाएं। जब -ShowInBrowser के साथ उपयोग किया जाता है, तो गैलरी प्रदर्शित करता है और ऑब्जेक्ट लौटाता है। |
| `-NoBorders` | SwitchParameter | — | — | Named | — | स्वच्छ दिखावट के लिए विंडो बॉर्डर और टाइटल बार हटाएं |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को PowerShell के साथ एक ही मॉनिटर पर साथ-साथ रखें |
| `-Interactive` | SwitchParameter | — | — | Named | — | ब्राउज़र से कनेक्ट होगा और संपादित करें और हटाएं जैसे अतिरिक्त बटन जोड़ेगा। केवल -ShowInBrowser के साथ उपयोग करने पर प्रभावी। |
| `-Private` | SwitchParameter | — | — | Named | — | गुप्त/निजी ब्राउज़िंग मोड में खुलता है |
| `-Force` | SwitchParameter | — | — | Named | — | यदि आवश्यक हो, मौजूदा ब्राउज़रों को रोकते हुए डिबगिंग पोर्ट को सक्षम करने के लिए बल प्रयोग करें |
| `-Edge` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज में खुलता है |
| `-Chrome` | SwitchParameter | — | — | Named | — | गूगल क्रोम में खुलता है |
| `-Chromium` | SwitchParameter | — | — | Named | — | डिफ़ॉल्ट ब्राउज़र के आधार पर, माइक्रोसॉफ्ट एज या गूगल क्रोम में खुलता है |
| `-Firefox` | SwitchParameter | — | — | Named | — | फ़ायरफ़ॉक्स में खोलता है |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OS-इंस्टॉल किए गए ब्राउज़र के बजाय Playwright-प्रबंधित ब्राउज़र का उपयोग करें। |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित वेबकिट ब्राउज़र खोलता है। इसका अर्थ है -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | ब्राउज़र को दृश्य विंडो के बिना चलाएं |
| `-All` | SwitchParameter | — | — | Named | — | सभी पंजीकृत आधुनिक ब्राउज़रों में खुलता है |
| `-FullScreen` | SwitchParameter | — | — | Named | — | पूर्ण स्क्रीन मोड में खोलता है |
| `-Left` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के बाईं ओर रखें |
| `-Right` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के दाईं ओर रखें |
| `-Top` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के शीर्ष तरफ रखें |
| `-Bottom` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के निचले हिस्से पर रखें |
| `-Centered` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के केंद्र में रखें |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ब्राउज़र नियंत्रण छिपाएं |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ब्राउज़र एक्सटेंशन की लोडिंग रोकें |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | पॉप-अप ब्लॉकर अक्षम करें |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | पावरशेल विंडो फ़ोकस पुनर्स्थापित करें |
| `-NewWindow` | SwitchParameter | — | — | Named | — | मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, इसके बजाय एक नई विंडो बनाएं |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | इसे ब्राउज़र में प्रदर्शित करने के बजाय केवल उत्पन्न HTML लौटाएं। |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | केवल गोल कोनों वाले आयत में चित्र दिखाएं, नीचे कोई पाठ नहीं। |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | भाषा, इमेज संग्रह आदि जैसी AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 'AI वरीयताओं जैसे भाषा, छवि संग्रह आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें' |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं जैसे भाषा, छवि संग्रह आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | पृष्ठ को प्रति सेकंड इतने पिक्सेल से ऑटो-स्क्रॉल करें (अक्षम करने के लिए शून्य) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | दृश्य सीमा में आयतों (वस्तुओं/फलकों) को एनिमेट करें, हर 300 मिलीसेकंड पर चक्र करते हुए |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | एकल स्तंभ लेआउट (केंद्रित, 1/3 स्क्रीन चौड़ाई) लागू करें |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | प्रत्येक छवि पथ से पहले जोड़ने के लिए उपसर्ग (जैसे दूरस्थ URL के लिए) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | लोगों, दृश्यों और वस्तुओं को विश्वास के आधार पर छानने के लिए न्यूनतम विश्वास अनुपात (0.0-1.0)। केवल उन लोगों, दृश्यों और वस्तुओं का डेटा लौटाता है जिनका विश्वास इस मान से अधिक या बराबर है। |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Parameter Details

### `-Any <String[]>`

> सभी संभावित मेटाडेटा प्रकारों में से किसी से भी मेल खाएगा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> छवियों की खोज के लिए निर्देशिका पथों की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory`, `ImageDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> विवरणों और कीवर्ड के लिए भाषा।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> खोजने के लिए विवरण पाठ, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> खोजने के लिए कीवर्ड, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> खोजने के लिए लोग, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> खोजने के लिए ऑब्जेक्ट, वाइल्डकार्ड की अनुमति है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> दृश्य श्रेणियाँ जिन्हें खोजना है, वाइल्डकार्ड अनुमत हैं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> चित्र प्रकार जिसके अनुसार फ़िल्टर करना है (जैसे, 'daylight', 'evening', 'indoor', आदि)। वाइल्डकार्ड समर्थित हैं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> फ़िल्टर करने के लिए शैली प्रकार (उदा., 'कैज़ुअल', 'फ़ॉर्मल', आदि)। वाइल्डकार्ड समर्थन।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> समग्र मूड जिसके द्वारा फ़िल्टर करना है (उदा., 'शांत', 'प्रसन्न', 'दुखी' आदि). वाइल्डकार्ड का समर्थन करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraMake <String[]>`

> छवि EXIF मेटाडेटा में कैमरा निर्माता द्वारा फ़िल्टर करें। वाइल्डकार्ड समर्थन करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraModel <String[]>`

> छवि EXIF मेटाडेटा में कैमरा मॉडल द्वारा फ़िल्टर करें. वाइल्डकार्ड का समर्थन करता है.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLatitude <Double[]>`

> छवि EXIF मेटाडेटा में GPS अक्षांश सीमा के अनुसार फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLongitude <Double[]>`

> छवि EXIF मेटाडेटा में जीपीएस देशांतर सीमा के अनुसार फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSAltitude <Double[]>`

> छवि EXIF मेटाडेटा में GPS ऊंचाई सीमा के अनुसार फ़िल्टर करें (मीटर में)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> खोजने के लिए भौगोलिक निर्देशांक [अक्षांश, देशांतर]।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> छवियों की खोज के लिए जियोलोकेशन से अधिकतम दूरी मीटर में।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaExposureTime <Double[]>`

> छवि EXIF मेटाडेटा में एक्सपोज़र समय सीमा द्वारा फ़िल्टर करें (सेकंड में)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFNumber <Double[]>`

> छवि EXIF मेटाडेटा में F-संख्या (एपर्चर) रेंज द्वारा फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaISO <Int32[]>`

> छवि EXIF मेटाडेटा में ISO संवेदनशीलता सीमा द्वारा फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFocalLength <Double[]>`

> छवि EXIF मेटाडेटा में फोकल लंबाई सीमा (मिमी में) द्वारा फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaWidth <Int32[]>`

> EXIF मेटाडेटा से पिक्सल में छवि चौड़ाई सीमा के अनुसार फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaHeight <Int32[]>`

> EXIF मेटाडेटा से पिक्सल में छवि ऊंचाई सीमा के अनुसार फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaDateTaken <DateTime[]>`

> EXIF मेटाडेटा से ली गई तिथि के अनुसार फ़िल्टर करें। एक तिथि सीमा हो सकती है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> गैलरी के लिए शीर्षक

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> गैलरी का विवरण

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `('Hover over images to see face recognition ' +
            'and object detection data')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> ब्राउज़र स्वीकार-भाषा HTTP हेडर सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> ब्राउज़र विंडो पर भेजने के लिए कीस्ट्रोक्स, cmdlet GenXdev\Send-Key के दस्तावेज़ देखें

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

> कुंजियाँ भेजते समय नियंत्रण वर्णों और संशोधकों को एस्केप करें

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

> कुंजियाँ भेजने के बाद PowerShell में कीबोर्ड फोकस को लौटने से रोकना

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

> कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें

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

> कुंजियाँ भेजते समय विभिन्न इनपुट स्ट्रिंग्स के बीच मिलीसेकंड में विलंब

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
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

> स्थिति तय करने के बाद विंडो को अधिकतम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें

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

> (उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 = छोड़ दें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट रूप से `Global:DefaultSecondaryMonitor` या यदि नहीं मिलता है तो 2)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> वेबब्राउज़र विंडो की प्रारंभिक चौड़ाई

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

> वेबब्राउज़र विंडो की प्रारंभिक ऊंचाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> वेबब्राउज़र विंडो की प्रारंभिक X स्थिति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> वेबब्राउज़र विंडो की प्रारंभिक Y स्थिति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
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
### `-EmbedImages`

> छवियों को बेस64 के रूप में एम्बेड करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFallback`

> फ़ॉलबैक व्यवहार को अक्षम करने के लिए स्विच करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NeverRebuild`

> डेटाबेस आरंभीकरण और पुनर्निर्माण को छोड़ने के लिए स्विच करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

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
### `-HasNudity`

> अश्लीलता वाली छवियों को फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> उन चित्रों को फ़िल्टर करें जिनमें नग्नता नहीं है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> ऐसी छवियाँ फ़िल्टर करें जिनमें स्पष्ट सामग्री हो।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> उन छवियों को फ़िल्टर करें जिनमें स्पष्ट सामग्री नहीं है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowInBrowser`

> खोज परिणामों को ब्राउज़र-आधारित इमेज गैलरी में प्रदर्शित करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `show`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> इमेज डेटा को ऑब्जेक्ट के रूप में लौटाएं। जब -ShowInBrowser के साथ उपयोग किया जाता है, तो गैलरी प्रदर्शित करता है और ऑब्जेक्ट लौटाता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> स्वच्छ दिखावट के लिए विंडो बॉर्डर और टाइटल बार हटाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> ब्राउज़र विंडो को PowerShell के साथ एक ही मॉनिटर पर साथ-साथ रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Interactive`

> ब्राउज़र से कनेक्ट होगा और संपादित करें और हटाएं जैसे अतिरिक्त बटन जोड़ेगा। केवल -ShowInBrowser के साथ उपयोग करने पर प्रभावी।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `i`, `editimages` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> गुप्त/निजी ब्राउज़िंग मोड में खुलता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> यदि आवश्यक हो, मौजूदा ब्राउज़रों को रोकते हुए डिबगिंग पोर्ट को सक्षम करने के लिए बल प्रयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> माइक्रोसॉफ्ट एज में खुलता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> गूगल क्रोम में खुलता है

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

> डिफ़ॉल्ट ब्राउज़र के आधार पर, माइक्रोसॉफ्ट एज या गूगल क्रोम में खुलता है

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

> फ़ायरफ़ॉक्स में खोलता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> OS-इंस्टॉल किए गए ब्राउज़र के बजाय Playwright-प्रबंधित ब्राउज़र का उपयोग करें।

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

> Playwright-प्रबंधित वेबकिट ब्राउज़र खोलता है। इसका अर्थ है -PlayWright

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
### `-FullScreen`

> पूर्ण स्क्रीन मोड में खोलता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> ब्राउज़र विंडो को स्क्रीन के बाईं ओर रखें

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

> ब्राउज़र विंडो को स्क्रीन के दाईं ओर रखें

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

> ब्राउज़र विंडो को स्क्रीन के शीर्ष तरफ रखें

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

> ब्राउज़र विंडो को स्क्रीन के निचले हिस्से पर रखें

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

> ब्राउज़र विंडो को स्क्रीन के केंद्र में रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> ब्राउज़र नियंत्रण छिपाएं

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

> ब्राउज़र एक्सटेंशन की लोडिंग रोकें

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

> पॉप-अप ब्लॉकर अक्षम करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> पावरशेल विंडो फ़ोकस पुनर्स्थापित करें

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

> मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, इसके बजाय एक नई विंडो बनाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyReturnHtml`

> इसे ब्राउज़र में प्रदर्शित करने के बजाय केवल उत्पन्न HTML लौटाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> केवल गोल कोनों वाले आयत में चित्र दिखाएं, नीचे कोई पाठ नहीं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> भाषा, इमेज संग्रह आदि जैसी AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें

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

> 'AI वरीयताओं जैसे भाषा, छवि संग्रह आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें'

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

> AI प्राथमिकताओं जैसे भाषा, छवि संग्रह आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> पृष्ठ को प्रति सेकंड इतने पिक्सेल से ऑटो-स्क्रॉल करें (अक्षम करने के लिए शून्य)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> दृश्य सीमा में आयतों (वस्तुओं/फलकों) को एनिमेट करें, हर 300 मिलीसेकंड पर चक्र करते हुए

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> एकल स्तंभ लेआउट (केंद्रित, 1/3 स्क्रीन चौड़ाई) लागू करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> प्रत्येक छवि पथ से पहले जोड़ने के लिए उपसर्ग (जैसे दूरस्थ URL के लिए)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinConfidenceRatio <Double>`

> लोगों, दृश्यों और वस्तुओं को विश्वास के आधार पर छानने के लिए न्यूनतम विश्वास अनुपात (0.0-1.0)। केवल उन लोगों, दृश्यों और वस्तुओं का डेटा लौटाता है जिनका विश्वास इस मान से अधिक या बराबर है।

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

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ConvertTo-DiplomaticSpeak.md)
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
