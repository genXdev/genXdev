# Open-YabAIBattle

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `yabbattle`

## Synopsis

> YabAI युद्ध खेल को एक वेब ब्राउज़र में खोलता है।

## Description

यह फ़ंक्शन YabAI बैटल गेम को वेब ब्राउज़र में लॉन्च करता है जिसमें विंडो प्लेसमेंट, ब्राउज़र चयन और डिस्प्ले मोड के लिए व्यापक अनुकूलन विकल्प होते हैं। यह GenXdev\Open-Webbrowser फ़ंक्शन के चारों ओर एक रैपर प्रदान करता है जिसमें गेम-विशिष्ट URL निर्माण और पैरामीटर हैंडलिंग शामिल है।

यह फ़ंक्शन दो गेम मोड का समर्थन करता है:
- बैटल मोड: एक नई AI बनाम AI लड़ाई शुरू करें
- स्पेक्टेट मोड: मौजूदा AI लड़ाइयाँ देखें

ब्राउज़र स्थिति विकल्पों में बाएँ, दाएँ, ऊपर, नीचे, केंद्रित और फ़ुलस्क्रीन मोड शामिल हैं जिनमें मल्टी-मॉनिटर समर्थन है। फ़ंक्शन स्वचालित रूप से एप्लिकेशन मोड सेटिंग्स और ब्राउज़र एक्सटेंशन प्रबंधन को इष्टतम गेमिंग अनुभव के लिए संभालता है।

## Syntax

```powershell
Open-YabAIBattle [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | गेम इंटरफ़ेस की भाषा |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | नया खेल शुरू न करें, बस AI को खेलते हुए देखें |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को त्यागें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट रूप से $Global:DefaultSecondaryMonitor या न मिलने पर 2 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | पूर्ण स्क्रीन मोड में खोलता है |
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
| `-AcceptLang` | String | — | — | Named | — | ब्राउज़र स्वीकार-भाषा HTTP हेडर सेट करें |
| `-KeysToSend` | String[] | — | — | Named | — | ब्राउज़र विंडो में भेजने के लिए कुंजी स्ट्रोक, देखें cmdlet GenXdev\Send-Key के लिए दस्तावेज़ीकरण |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | कुंजी भेजते समय नियंत्रण वर्णों को एस्केप करें। |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कीज़ भेजने के बाद PowerShell को कीबोर्ड फोकस वापस लेने से रोकें। |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय नियमित एंटर के बजाय लाइन ब्रेक के लिए Shift+Enter भेजें। |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | प्रत्येक कुंजी भेजने के बीच मिलीसेकंड में विलंब। |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो पर फ़ोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अग्रभूमि पर सेट करें |
| `-Maximize` | SwitchParameter | — | — | Named | — | स्थिति तय करने के बाद विंडो को अधिकतम करें |
| `-SetRestored` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | ब्राउज़र खोलने के बाद पिछली विंडो पर फ़ोकस पुनर्स्थापित करें। |
| `-NewWindow` | SwitchParameter | — | — | Named | — | मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, बल्कि एक नई विंडो बनाएं |
| `-PassThru` | SwitchParameter | — | — | Named | — | ब्राउज़र प्रक्रिया का एक [System.Diagnostics.Process] ऑब्जेक्ट लौटाता है |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | वेब ब्राउज़र न खोलें, बस URL लौटाएँ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | वेबब्राउज़र खोलने के बाद, URL लौटाएं |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | फ़ुलस्क्रीन मोड में न खोलें |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | ब्राउज़र नियंत्रण दिखाएं |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो की सीमाओं को हटाता है। |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को या तो पावरशेल से अलग मॉनिटर पर पूर्ण स्क्रीन में रखें, या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड रखें। |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें। |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें। |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |

## Examples

### Open-YabAIBattle -Edge -Private -NoFullScreen

```powershell
Open-YabAIBattle -Edge -Private -NoFullScreen
```

YabAI बैटल गेम को Microsoft Edge में प्राइवेट ब्राउज़िंग मोड में फुलस्क्रीन के बिना खोलता है।

### yabbattle -e -incognito -nfs

```powershell
yabbattle -e -incognito -nfs
```

Edge के लिए उपनामों, गुप्त मोड और बिना फुलस्क्रीन के गेम खोलता है।

### Open-YabAIBattle -SpectateOnly -Chrome

```powershell
Open-YabAIBattle -SpectateOnly -Chrome
```

Google Chrome का उपयोग करके AI लड़ाइयाँ देखने के लिए गेम को स्पेक्टेट मोड में खोलता है।

### Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

```powershell
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left
```

खेल को स्पेनिश भाषा इंटरफ़ेस के साथ मॉनिटर 1 के बाईं ओर खोलता है।

## Parameter Details

### `-Language <String>`

> गेम इंटरफ़ेस की भाषा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpectateOnly`

> नया खेल शुरू न करें, बस AI को खेलते हुए देखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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

> उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को त्यागें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट रूप से $Global:DefaultSecondaryMonitor या न मिलने पर 2

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> पूर्ण स्क्रीन मोड में खोलता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
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
| **Default value** | *(none)* |
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

> कुंजी भेजते समय नियंत्रण वर्णों को एस्केप करें।

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

> कीज़ भेजने के बाद PowerShell को कीबोर्ड फोकस वापस लेने से रोकें।

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

> कुंजियाँ भेजते समय नियमित एंटर के बजाय लाइन ब्रेक के लिए Shift+Enter भेजें।

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

> प्रत्येक कुंजी भेजने के बीच मिलीसेकंड में विलंब।

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

> ब्राउज़र खोलने के बाद पिछली विंडो पर फ़ोकस पुनर्स्थापित करें।

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
### `-NoFullScreen`

> फ़ुलस्क्रीन मोड में न खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nfs`, `nf` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoApplicationMode`

> ब्राउज़र नियंत्रण दिखाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `na`, `napp`, `noappmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> ब्राउज़र विंडो की सीमाओं को हटाता है।

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
### `-SessionOnly`

> एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें।

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

> AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें।

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

- [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GameOfLife.md)
- [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-GenXdevAppCatalog.md)
- [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-Timeline.md)
- [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-ViralSimulation.md)
- [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-Yab.md)
