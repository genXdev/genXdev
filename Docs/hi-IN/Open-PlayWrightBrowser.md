# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb`

## Synopsis

> प्लेराइट-प्रबंधित ब्राउज़र को एक स्थायी उपयोगकर्ता प्रोफ़ाइल के साथ प्रारंभ करता है।

## Description

<details>
<summary><b>Expand description</b></summary>

Playwright द्वारा संचालित एक ब्राउज़र इंस्टेंस लॉन्च करता है। BrowserType पैरामीटर यह निर्धारित करता है कि कौन सा ब्राउज़र इंजन और लॉन्च मोड उपयोग करना है:

- ChromeNormal / EdgeNormal: Playwright के चैनल API के माध्यम से आपके OS-स्थापित Chrome या Edge को लॉन्च करता है, जिससे "ऑटोमेशन द्वारा नियंत्रित" इन्फोबार और एंटी-बॉट डिटेक्शन समस्याओं से बचा जाता है।
- ChromiumNormal: स्वचालित रूप से Chrome या Edge (जो भी स्थापित है और सिस्टम डिफॉल्ट के रूप में सेट है) का पता लगाता है और चैनल API का उपयोग करता है। यदि कोई स्थापित नहीं है तो बंडल किए गए Playwright Chromium पर वापस आ जाता है।
- ChromiumPlaywright: हमेशा Playwright के बंडल किए गए Chromium बाइनरी का उपयोग करता है (OS-स्थापित ब्राउज़र का कभी नहीं)।
- FirefoxPlaywright: Playwright के बंडल किए गए Firefox बाइनरी का उपयोग करता है। Playwright .NET बाइंडिंग्स में Firefox के लिए चैनल API उपलब्ध नहीं है।
- WebKitPlaywright: Playwright के बंडल किए गए WebKit बाइनरी का उपयोग करता है।

Chromium-आधारित ब्राउज़रों के लिए एंटी-डिटेक्शन उपाय लागू:
- ब्लिंक ऑटोमेशन फ्लैग को अक्षम करता है (इन्फोबार हटाता है)
- व्यूपोर्ट को null सेट करता है और नेटिव विंडो साइज़िंग के लिए अधिकतम शुरू होता है
- सफेद पृष्ठभूमि से बचने के लिए 'no-preference' रंग योजना का उपयोग करता है
- मानक ब्राउज़र आर्ग (no-first-run, no-default-browser-check) सेट करता है

प्रति BrowserType स्थायी प्रोफ़ाइल GenXdev AppData के अंतर्गत संग्रहीत की जाती हैं। लॉन्च किया गया ब्राउज़र और उसका संदर्भ/पेज $Global:GenXdevPlaywright में संग्रहीत किया जाता है, जिसका उपयोग अन्य cmdlets द्वारा किया जाता है।

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'ChromiumNormal'` | लॉन्च करने के लिए ब्राउज़र: Chrome, Edge, Chromium (स्वचालित रूप से Chrome या Edge का पता लगाता है), Firefox, या WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | ब्राउज़र को दृश्य विंडो के बिना चलाएं |
| `-Proxy` | String | — | — | Named | — | प्रॉक्सी सर्वर URL (जैसे http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | ब्राउज़र का Accept-Language HTTP हेडर सेट करें |
| `-Width` | Int32 | — | — | Named | `-1` | पिक्सेल में प्रारंभिक व्यूपोर्ट चौड़ाई |
| `-Height` | Int32 | — | — | Named | `-1` | पिक्सेल में प्रारंभिक व्यूपोर्ट ऊंचाई |
| `-Force` | SwitchParameter | — | — | Named | — | मौजूदा ब्राउज़र बंद करें और नई शुरुआत करें |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | इंस्टॉलेशन सहमति संवाद को फिर से प्रॉम्प्ट करने के लिए बाध्य करें |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | तृतीय-पक्ष सॉफ़्टवेयर इंस्टॉलेशन (प्लेराइट ब्राउज़र) के लिए स्वचालित रूप से सहमति दें |
| `-Monitor` | Int32 | — | — | Named | `-1` | उपयोग करने के लिए मॉनिटर, 0 = डिफ़ॉल्ट, -1 को त्यागें, -2 = कॉन्फ़िगर किया गया द्वितीयक मॉनिटर, डिफ़ॉल्ट रूप से $Global:DefaultSecondaryMonitor या न मिलने पर 2 |
| `-X` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक X स्थिति |
| `-Y` | Int32 | — | — | Named | `-999999` | वेबब्राउज़र विंडो की प्रारंभिक Y स्थिति |
| `-Left` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के बाईं ओर रखें |
| `-Right` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के दाईं ओर रखें |
| `-Top` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के शीर्ष तरफ रखें |
| `-Bottom` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के निचले हिस्से पर रखें |
| `-Centered` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के केंद्र में रखें |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | पूरी स्क्रीन भरने के लिए विंडो को अधिकतम करता है |
| `-NoBorders` | SwitchParameter | — | — | Named | — | विंडो की सीमाएं हटाता है |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | पावरशेल विंडो फ़ोकस पुनर्स्थापित करें |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को पावरशेल से भिन्न मॉनिटर पर पूर्ण स्क्रीन या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड रखें |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो पर फ़ोकस करें |
| `-SetForeground` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अग्रभूमि पर सेट करें |
| `-Minimize` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को छोटा करता है |
| `-Maximize` | SwitchParameter | — | — | Named | — | स्थिति तय करने के बाद विंडो को अधिकतम करें |
| `-SetRestored` | SwitchParameter | — | — | Named | — | स्थिति निर्धारण के बाद विंडो को सामान्य स्थिति में पुनर्स्थापित करें |
| `-KeysToSend` | String[] | — | — | Named | — | विंडो पर भेजने के लिए कुंजी स्ट्रोक्स, कमांडलेट GenXdev\Send-Key के दस्तावेज़ देखें |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | नियंत्रण वर्णों और संशोधकों को कुंजियाँ भेजते समय एस्केप करें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय लक्ष्य विंडो पर कीबोर्ड फ़ोकस बनाए रखें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | कुंजियाँ भेजते समय Enter के बजाय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | कुंजी भेजते समय विभिन्न इनपुट स्ट्रिंग के बीच मिलीसेकंड में विलंब |
| `-PassThru` | SwitchParameter | — | — | Named | — | आगे की हेरफेर के लिए विंडो हेल्पर ऑब्जेक्ट लौटाता है |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | एआई प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI प्राथमिकताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | केवल गणना किए गए निर्देशांक और आकार को आउटपुट करें, विंडो को वास्तव में स्थानांतरित किए बिना |

## Examples

### Open-PlayWrightBrowser Launches your OS-installed Chrome or Edge (auto-detected) with a persistent profile and anti-detection measures.

```powershell
Open-PlayWrightBrowser
Launches your OS-installed Chrome or Edge (auto-detected) with a
persistent profile and anti-detection measures.
```

### Open-PlayWrightBrowser -BrowserType EdgeNormal Launches Microsoft Edge via Playwright's Channel API.

```powershell
Open-PlayWrightBrowser -BrowserType EdgeNormal
Launches Microsoft Edge via Playwright's Channel API.
```

### Open-PlayWrightBrowser -BrowserType ChromiumPlaywright Uses the bundled Playwright Chromium binary.

```powershell
Open-PlayWrightBrowser -BrowserType ChromiumPlaywright
Uses the bundled Playwright Chromium binary.
```

### Open-PlayWrightBrowser -BrowserType FirefoxPlaywright -Headless Launches the bundled Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType FirefoxPlaywright -Headless
Launches the bundled Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

## Parameter Details

### `-BrowserType <String>`

> लॉन्च करने के लिए ब्राउज़र: Chrome, Edge, Chromium (स्वचालित रूप से Chrome या Edge का पता लगाता है), Firefox, या WebKit

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'ChromiumNormal'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-Proxy <String>`

> प्रॉक्सी सर्वर URL (जैसे http://proxy:8080)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> ब्राउज़र का Accept-Language HTTP हेडर सेट करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> पिक्सेल में प्रारंभिक व्यूपोर्ट चौड़ाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `w` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> पिक्सेल में प्रारंभिक व्यूपोर्ट ऊंचाई

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `h` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> मौजूदा ब्राउज़र बंद करें और नई शुरुआत करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> इंस्टॉलेशन सहमति संवाद को फिर से प्रॉम्प्ट करने के लिए बाध्य करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> तृतीय-पक्ष सॉफ़्टवेयर इंस्टॉलेशन (प्लेराइट ब्राउज़र) के लिए स्वचालित रूप से सहमति दें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Consent` |
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
### `-Fullscreen`

> पूरी स्क्रीन भरने के लिए विंडो को अधिकतम करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
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

> ब्राउज़र विंडो को पावरशेल से भिन्न मॉनिटर पर पूर्ण स्क्रीन या उसी मॉनिटर पर पावरशेल के साथ साइड-बाय-साइड रखें

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
### `-Minimize`

> स्थिति निर्धारण के बाद विंडो को छोटा करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-KeysToSend <String[]>`

> विंडो पर भेजने के लिए कुंजी स्ट्रोक्स, कमांडलेट GenXdev\Send-Key के दस्तावेज़ देखें

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

> नियंत्रण वर्णों और संशोधकों को कुंजियाँ भेजते समय एस्केप करें

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

> कुंजियाँ भेजते समय लक्ष्य विंडो पर कीबोर्ड फ़ोकस बनाए रखें

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

> कुंजी भेजते समय विभिन्न इनपुट स्ट्रिंग के बीच मिलीसेकंड में विलंब

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> आगे की हेरफेर के लिए विंडो हेल्पर ऑब्जेक्ट लौटाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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
### `-OnlyOutputCoords`

> केवल गणना किए गए निर्देशांक और आकार को आउटपुट करें, विंडो को वास्तव में स्थानांतरित किए बिना

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

- `Collections.Hashtable`

## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-PlaywrightProfileDirectory.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-WebbrowserVideos.md)
- [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Unprotect-WebbrowserTab.md)
