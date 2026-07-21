# Open-MovieQuote

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `moviequote`

## Synopsis

> वेब ब्राउज़र में एक फिल्म के उद्धरण का वीडियो खोलता है।

## Description

प्लेफ्रेज़.मी का उपयोग करके मूवी कोट्स खोजता और खोलता है, मॉनिटर और ब्राउज़र सेटिंग्स निर्दिष्ट करने की अनुमति देता है। यह फ़ंक्शन वीडियो क्लिप के साथ मूवी कोट्स के एक विशाल डेटाबेस तक पहुँच प्रदान करता है, जो कई भाषाओं और उन्नत ब्राउज़र कॉन्फ़िगरेशन विकल्पों का समर्थन करता है।

मुख्य विशेषताएं:
- विशाल डेटाबेस से मूवी कोट्स खोजें
- स्वचालित भाषा पहचान के साथ बहु-भाषा समर्थन
- उन्नत ब्राउज़र स्थिति और विंडो प्रबंधन
- एकाधिक ब्राउज़रों के लिए समर्थन (एज, क्रोम, फ़ायरफ़ॉक्स)
- प्राइवेट ब्राउज़िंग मोड समर्थन
- ब्राउज़र इंटरैक्शन के लिए कीबोर्ड ऑटोमेशन
- सटीक स्थिति के साथ मल्टी-मॉनिटर समर्थन

## Syntax

```powershell
Open-MovieQuote -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | निष्पादित करने के लिए क्वेरी। |
| `-Language` | String | — | — | 2 | — | वापस किए गए खोज परिणामों की भाषा |
| `-Private` | SwitchParameter | — | — | Named | — | गुप्त/निजी ब्राउज़िंग मोड में खुलता है |
| `-Force` | SwitchParameter | — | — | Named | — | डीबगिंग पोर्ट को बलपूर्वक सक्षम करें, यदि आवश्यक हो तो मौजूदा ब्राउज़रों को रोकें |
| `-Edge` | SwitchParameter | — | — | Named | — | माइक्रोसॉफ्ट एज में खुलता है |
| `-Chrome` | SwitchParameter | — | — | Named | — | गूगल क्रोम में खुलता है |
| `-Chromium` | SwitchParameter | — | — | Named | — | Microsoft Edge या Google Chrome में खुलता है, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र कौन सा है |
| `-Firefox` | SwitchParameter | — | — | Named | — | फ़ायरफ़ॉक्स में खोलता है |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OS द्वारा स्थापित ब्राउज़र के बजाय Playwright-प्रबंधित ब्राउज़र का उपयोग करें |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित वेबकिट ब्राउज़र खोलता है। -PlayWright को दर्शाता है |
| `-Headless` | SwitchParameter | — | — | Named | — | ब्राउज़र को दृश्य विंडो के बिना चलाएं |
| `-All` | SwitchParameter | — | — | Named | — | सभी पंजीकृत आधुनिक ब्राउज़रों में खुलता है |
| `-Monitor` | Int32 | — | — | Named | `-1` | उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 हटा दें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट -1, कोई स्थिति निर्धारण नहीं |
| `-FullScreen` | SwitchParameter | — | — | Named | — | पूर्ण स्क्रीन मोड में खोलता है |
| `-Width` | Int32 | — | — | Named | `-1` | वेबब्राउज़र विंडो की प्रारंभिक चौड़ाई |
| `-Height` | Int32 | — | — | Named | `-1` | वेबब्राउज़र विंडो की प्रारंभिक ऊंचाई |
| `-X` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक X स्थिति |
| `-Y` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक Y स्थिति |
| `-Left` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के बाईं ओर रखें |
| `-Right` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के दाईं ओर रखें |
| `-Top` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के शीर्ष तरफ रखें |
| `-Bottom` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के निचले हिस्से पर रखें |
| `-Centered` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के केंद्र में रखें |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ब्राउज़र नियंत्रण छिपाएं |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ब्राउज़र एक्सटेंशन की लोडिंग रोकें |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | पॉप-अप ब्लॉकर अक्षम करें |
| `-AcceptLang` | String | — | — | Named | `$null` | ब्राउज़र स्वीकार-भाषा HTTP हेडर सेट करें |
| `-KeysToSend` | String[] | — | — | Named | — | ब्राउज़र विंडो में भेजने के लिए कुंजी स्ट्रोक, देखें cmdlet GenXdev\Send-Key के लिए दस्तावेज़ीकरण |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | कीज़ भेजते समय नियंत्रण वर्णों को एस्केप करें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजने के बाद PowerShell में कीबोर्ड फोकस लौटने से रोकें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | लाइन ब्रेक के लिए सामान्य एंटर के बजाय Shift+Enter भेजें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | विभिन्न कुंजी अनुक्रमों को भेजने के बीच का विलंब मिलीसेकंड में |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो पर फ़ोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अग्रभूमि पर सेट करें |
| `-Maximize` | SwitchParameter | — | — | Named | — | स्थिति तय करने के बाद विंडो को अधिकतम करें |
| `-SetRestored` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | पावरशेल विंडो फ़ोकस पुनर्स्थापित करें |
| `-NewWindow` | SwitchParameter | — | — | Named | — | मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, बल्कि एक नई विंडो बनाएं |
| `-PassThru` | SwitchParameter | — | — | Named | — | ब्राउज़र प्रक्रिया का एक [System.Diagnostics.Process] ऑब्जेक्ट लौटाता है |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो की सीमाएं हटाता है |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | वेब ब्राउज़र न खोलें, बस URL लौटाएँ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | वेबब्राउज़र खोलने के बाद, URL लौटाएं |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को या तो पावरशेल से अलग मॉनिटर पर पूर्ण स्क्रीन में रखें, या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड रखें। |

## Examples

### Open-MovieQuote -Queries "I'll be back"

```powershell
Open-MovieQuote -Queries "I'll be back"
```

प्रसिद्ध टर्मिनेटर कोट 'मैं वापस आऊंगा' के लिए खोज खोलता है।

### Open-MovieQuote -Queries "Here's looking at you kid" -Monitor 1

```powershell
Open-MovieQuote -Queries "Here's looking at you kid" -Monitor 1
```

मॉनिटर 1 पर कैसाब्लांका उद्धरण की खोज खोलता है।

### moviequote "May the Force be with you" -Language "English" -Private

```powershell
moviequote "May the Force be with you" -Language "English" -Private
```

निजी ब्राउज़िंग का उपयोग करके अंग्रेजी में स्टार वार्स उद्धरण की खोज खोलता है।

### "I'll be back", "Frankly, my dear" | Open-MovieQuote -Chrome -FullScreen

```powershell
"I'll be back", "Frankly, my dear" | Open-MovieQuote -Chrome -FullScreen
```

पाइपलाइन के माध्यम से Chrome फ़ुलस्क्रीन मोड में कई मूवी कोट खोलता है।

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
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Monitor <Int32>`

> उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 हटा दें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट -1, कोई स्थिति निर्धारण नहीं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
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
### `-PassThru`

> ब्राउज़र प्रक्रिया का एक [System.Diagnostics.Process] ऑब्जेक्ट लौटाता है

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

> ब्राउज़र विंडो की सीमाएं हटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
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
### `-SideBySide`

> ब्राउज़र विंडो को या तो पावरशेल से अलग मॉनिटर पर पूर्ण स्क्रीन में रखें, या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BuiltWithSiteInfo.md)
- [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GithubQuery.md)
- [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GoogleQuery.md)
- [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GoogleSiteInfo.md)
- [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GrokipediaQuery.md)
- [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-IMDBQuery.md)
- [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-InstantStreetViewQuery.md)
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
