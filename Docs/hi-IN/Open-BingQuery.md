# Open-BingQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `bq`

## Synopsis

> एक वेब ब्राउज़र में Bing खोज क्वेरी खोलता है।

## Description

एक या अधिक Bing खोज क्वेरी को वेब ब्राउज़र में खोलता है, कॉन्फ़िगरेबल ब्राउज़र सेटिंग्स और कमांड लाइन स्विच का उपयोग करके। यह फ़ंक्शन विस्तृत ब्राउज़र अनुकूलन विकल्पों जैसे विंडो पोजीशनिंग, मॉनिटर चयन, प्राइवेट ब्राउज़िंग और कीस्ट्रोक ऑटोमेशन के साथ Bing खोज करने के लिए एक व्यापक इंटरफ़ेस प्रदान करता है।

फ़ंक्शन स्वचालित रूप से क्वेरी को URL-एनकोड करता है और Bing की खोज API के लिए प्रारूपित करता है। यह प्राइवेट ब्राउज़िंग, एप्लिकेशन मोड, सटीक विंडो प्रबंधन और कीस्ट्रोक ऑटोमेशन जैसी सुविधाओं के साथ Edge, Chrome और Firefox सहित सभी प्रमुख ब्राउज़रों का समर्थन करता है।

## Syntax

```powershell
Open-BingQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | निष्पादित करने के लिए क्वेरी। |
| `-Language` | String | — | — | 1 | — | वापस किए गए खोज परिणामों की भाषा |
| `-Monitor` | Int32 | — | — | Named | `-1` | उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को त्यागें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट रूप से $Global:DefaultSecondaryMonitor या न मिलने पर 2 |
| `-Width` | Int32 | — | — | Named | `-1` | वेबब्राउज़र विंडो की प्रारंभिक चौड़ाई |
| `-Height` | Int32 | — | — | Named | `-1` | वेबब्राउज़र विंडो की प्रारंभिक ऊंचाई |
| `-X` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक X स्थिति |
| `-Y` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक Y स्थिति |
| `-AcceptLang` | String | — | — | Named | — | ब्राउज़र स्वीकार-भाषा HTTP हेडर सेट करें |
| `-Force` | SwitchParameter | — | — | Named | — | डीबगिंग पोर्ट को बलपूर्वक सक्षम करें, यदि आवश्यक हो तो मौजूदा ब्राउज़रों को रोकें |
| `-Edge` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज में खुलता है |
| `-Chrome` | SwitchParameter | — | — | Named | — | गूगल क्रोम में खुलता है |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge या Google Chrome में खुलता है, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है |
| `-Firefox` | SwitchParameter | — | — | Named | — | फ़ायरफ़ॉक्स में खोलता है |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OS द्वारा स्थापित ब्राउज़र के बजाय Playwright-प्रबंधित ब्राउज़र का उपयोग करें |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित वेबकिट ब्राउज़र खोलता है। -PlayWright को दर्शाता है |
| `-Headless` | SwitchParameter | — | — | Named | — | ब्राउज़र को दृश्य विंडो के बिना चलाएं |
| `-All` | SwitchParameter | — | — | Named | — | सभी पंजीकृत आधुनिक ब्राउज़रों में खुलता है |
| `-Left` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के बाईं ओर रखें |
| `-Right` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के दाईं ओर रखें |
| `-Top` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के शीर्ष तरफ रखें |
| `-Bottom` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के निचले हिस्से पर रखें |
| `-Centered` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के केंद्र में रखें |
| `-FullScreen` | SwitchParameter | — | — | Named | — | पूर्ण स्क्रीन मोड में खोलता है |
| `-Private` | SwitchParameter | — | — | Named | — | गुप्त/निजी ब्राउज़िंग मोड में खुलता है |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ब्राउज़र नियंत्रण छिपाएं |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ब्राउज़र एक्सटेंशन की लोडिंग रोकें |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | पॉप-अप ब्लॉकर अक्षम करें |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो पर फ़ोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अग्रभूमि पर सेट करें |
| `-Maximize` | SwitchParameter | — | — | Named | — | स्थिति तय करने के बाद विंडो को अधिकतम करें |
| `-SetRestored` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें |
| `-PassThru` | SwitchParameter | — | — | Named | — | ब्राउज़र प्रक्रिया का एक PowerShell ऑब्जेक्ट लौटाता है |
| `-NoBorders` | SwitchParameter | — | — | Named | — | विंडो की सीमाएं हटाता है |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | पावरशेल विंडो फ़ोकस पुनर्स्थापित करें |
| `-SideBySide` | SwitchParameter | — | — | Named | — | यह या तो विंडो को पावरशेल से भिन्न मॉनिटर पर फुलस्क्रीन सेट करेगा, या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड करेगा। |
| `-KeysToSend` | String[] | — | — | Named | — | ब्राउज़र विंडो में भेजने के लिए कुंजी स्ट्रोक, देखें cmdlet GenXdev\Send-Key के लिए दस्तावेज़ीकरण |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | कीज़ भेजते समय नियंत्रण वर्णों को एस्केप करें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजने के बाद PowerShell में कीबोर्ड फोकस लौटने से रोकें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | लाइन ब्रेक के लिए सामान्य एंटर के बजाय Shift+Enter भेजें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | विभिन्न कुंजी अनुक्रमों को भेजने के बीच का विलंब मिलीसेकंड में |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-NewWindow` | SwitchParameter | — | — | Named | — | मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, बल्कि एक नई विंडो बनाएं |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | वेब ब्राउज़र न खोलें, बस URL लौटाएँ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | वेबब्राउज़र खोलने के बाद, URL लौटाएं |

## Examples

### Open-BingQuery -Queries "PowerShell scripting" -Monitor 0

```powershell
Open-BingQuery -Queries "PowerShell scripting" -Monitor 0
```

डिफ़ॉल्ट मॉनिटर पर "PowerShell scripting" के लिए Bing खोज खोलता है।

### bq "PowerShell scripting" -m 0

```powershell
bq "PowerShell scripting" -m 0
```

उपनाम और छोटे पैरामीटर नामों का उपयोग करके बिंग खोज खोलता है।

### Open-BingQuery -Queries "machine learning" -Language "English" -Private

```powershell
Open-BingQuery -Queries "machine learning" -Language "English" -Private
```

'machine learning' के लिए अंग्रेज़ी भाषा के परिणामों के साथ एक निजी ब्राउज़िंग सत्र खोलता है।

### "PowerShell", "automation", "scripting" | Open-BingQuery -All -Left

```powershell
"PowerShell", "automation", "scripting" | Open-BingQuery -All -Left
```

पाइपलाइन के माध्यम से एकाधिक शर्तों की खोज करता है और सभी स्थापित ब्राउज़रों में परिणाम खोलता है, विंडो को स्क्रीन के बाईं ओर रखता है।

## Parameter Details

### `-Queries <String[]>`

> निष्पादित करने के लिए क्वेरी।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> वापस किए गए खोज परिणामों की भाषा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को त्यागें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट रूप से $Global:DefaultSecondaryMonitor या न मिलने पर 2

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
### `-AcceptLang <String>`

> ब्राउज़र स्वीकार-भाषा HTTP हेडर सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> डीबगिंग पोर्ट को बलपूर्वक सक्षम करें, यदि आवश्यक हो तो मौजूदा ब्राउज़रों को रोकें

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

> Microsoft Edge या Google Chrome में खुलता है, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है

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
### `-PassThru`

> ब्राउज़र प्रक्रिया का एक PowerShell ऑब्जेक्ट लौटाता है

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
### `-KeysToSend <String[]>`

> ब्राउज़र विंडो में भेजने के लिए कुंजी स्ट्रोक, देखें cmdlet GenXdev\Send-Key के लिए दस्तावेज़ीकरण

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

> कीज़ भेजते समय नियंत्रण वर्णों को एस्केप करें

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

> कुंजियाँ भेजने के बाद PowerShell में कीबोर्ड फोकस लौटने से रोकें

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

> लाइन ब्रेक के लिए सामान्य एंटर के बजाय Shift+Enter भेजें

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

> विभिन्न कुंजी अनुक्रमों को भेजने के बीच का विलंब मिलीसेकंड में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
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
### `-NewWindow`

> मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, बल्कि एक नई विंडो बनाएं

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

> वेब ब्राउज़र न खोलें, बस URL लौटाएँ

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

> वेबब्राउज़र खोलने के बाद, URL लौटाएं

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

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-PDFsFromGoogleQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-InstantStreetViewQuery.md)
- [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-MovieQuote.md)
- [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-SearchEngine.md)
- [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-SimularWebSiteInfo.md)
- [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-StackOverflowQuery.md)
- [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WaybackMachineSiteInfo.md)
- [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WebsiteAndPerformQuery.md)
- [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WhoisHostSiteInfo.md)
- [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WikipediaNLQuery.md)
- [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WikipediaQuery.md)
- [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-WolframAlphaQuery.md)
- [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-YoutubeQuery.md)
