# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub`, `qgh`

## Synopsis

> गिटहब रिपॉजिटरी खोज क्वेरी को वेब ब्राउज़र में खोलता है या सभी उपलब्ध क्वालिफायर और खोज श्रेणियों (रिपॉजिटरी, कोड, मुद्दे, उपयोगकर्ता, कमिट, चर्चा, विषय, विकी) का समर्थन करते हुए GitHub REST API के विरुद्ध उन्नत खोजें निष्पादित करता है।

## Description

GitHub रिपॉजिटरी खोज क्वेरी को वेब ब्राउज़र में व्यापक अनुकूलन विकल्पों के साथ खोलता है या उन्नत API खोज करता है। यह फ़ंक्शन PowerShell से GitHub रिपॉजिटरी तक तेज़ी से पहुँचने के लिए एक शक्तिशाली इंटरफ़ेस प्रदान करता है, जिसमें कई ब्राउज़रों, विंडो पोज़िशनिंग, भाषा फ़िल्टरिंग और कीबोर्ड ऑटोमेशन के लिए समर्थन, या API के माध्यम से संरचित डेटा प्राप्त करने का विकल्प है। मुख्य विशेषताएं:

पाइपलाइन इनपुट के साथ एकाधिक खोज क्वेरी समर्थन
स्वचालित स्थानीयकरण के साथ भाषा-विशिष्ट फ़िल्टरिंग
मल्टी-ब्राउज़र समर्थन (Edge, Chrome, Firefox)
उन्नत विंडो पोज़िशनिंग और मॉनिटर चयन
निजी/गुप्त ब्राउज़िंग मोड
ध्यान भंग रहित ब्राउज़िंग के लिए एप्लिकेशन मोड
कीबोर्ड ऑटोमेशन और फ़ोकस प्रबंधन
प्रोग्रामेटिक उपयोग के लिए URL रिटर्न विकल्प
क्वालिफायर, सॉर्टिंग, पेजिनेशन के साथ उन्नत API खोज
सभी GitHub खोज प्रकारों के लिए समर्थन
व्यक्तिगत एक्सेस टोकन के साथ प्रमाणीकरण
API खोजों के लिए अतुल्यकालिक जॉब निष्पादन
रॉ JSON या संरचित ऑब्जेक्ट आउटपुट

यह फ़ंक्शन स्वचालित रूप से वेब मोड के लिए GitHub खोज URL या API मोड के लिए API एंडपॉइंट बनाता है और सभी ब्राउज़र-संबंधित पैरामीटर को अंतर्निहित Open-Webbrowser फ़ंक्शन को सुसंगत व्यवहार के लिए पास करता है।

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | गिटहब पर निष्पादित करने के लिए खोज क्वेरी। बैच खोज के लिए एकाधिक क्वेरी और पाइपलाइन इनपुट का समर्थन करता है। प्रत्येक क्वेरी URL-एन्कोडेड होगी और गिटहब खोजने के लिए उपयोग की जाएगी। |
| `-Type` | String | — | — | Named | `'Code'` | खोजने के लिए मुख्य श्रेणी। डिफ़ॉल्ट 'कोड' है। |
| `-In` | String[] | — | — | Named | — | खोजने के लिए फ़ील्ड। चयनित प्रकार के लिए केवल मान्य विकल्प स्वीकार किए जाएंगे। |
| `-User` | String | — | — | Named | — | खोज को उपयोगकर्ता के संसाधनों (रिपॉजिटरी, कोड, मुद्दे आदि) तक सीमित करें। |
| `-Org` | String | — | — | Named | — | खोज को किसी संगठन तक सीमित करें। |
| `-Repo` | String | — | — | Named | — | खोज को एक नामांकित भंडार ('owner/repo') तक सीमित करें। |
| `-Path` | String | — | — | Named | — | कोड खोज को विशिष्ट फ़ाइल या निर्देशिका पथों तक सीमित करें (GitHub खोज सिंटैक्स के अनुसार वाइल्डकार्ड का समर्थन करता है)। *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | परिणामों को फ़ाइल नाम (पथ नहीं) द्वारा फ़िल्टर करें। *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | कोड खोज को फ़ाइल एक्सटेंशन तक सीमित करें। *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | प्रोग्रामिंग भाषा द्वारा फ़िल्टर करें। |
| `-Size` | String | — | — | Named | — | फ़ाइल/रिपॉजिटरी का आकार। संख्यात्मक और श्रेणी सिंटैक्स का समर्थन करता है (उदाहरण देखें)। |
| `-State` | String | — | — | Named | — | समस्याओं/पुल अनुरोधों के लिए। *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: किसी निर्दिष्ट उपयोगकर्ता द्वारा बनाए गए तक सीमित करें। *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | मुद्दे/पीआर: किसी उपयोगकर्ता को असाइन किए गए तक सीमित रखें। *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | मुद्दे/PR: सभी निर्दिष्ट स्ट्रिंग्स से लेबल होना चाहिए। *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | मुद्दे/पीआर: कुछ मेटाडेटा (जैसे, लेबल, माइलस्टोन) का अभाव होना चाहिए। *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | सॉर्ट फ़ील्ड (प्रकार पर निर्भर करता है)। उदा., "stars", "forks", "updated", आदि। |
| `-Order` | String | — | — | Named | — | छंटाई के लिए 'asc' या 'desc' क्रम। |
| `-PerPage` | Int32 | — | — | Named | `10` | पृष्ठ आकार (अधिकतम 100)। |
| `-Page` | Int32 | — | — | Named | `1` | पृष्ठांकित परिणामों के लिए पृष्ठ संख्या। |
| `-Token` | String | — | — | Named | — | GitHub OAuth या व्यक्तिगत एक्सेस टोकन। यदि प्रदान नहीं किया गया है, तो GITHUB_TOKEN या पर्यावरण चर का उपयोग करता है। *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | ब्राउज़र के स्वीकार-लैंग HTTP हैडर को सेट करें। |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | विभिन्न कुंजी अनुक्रमों को भेजने के बीच मिलीसेकंड में देरी। *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | परिणाम प्रदर्शित करने के लिए मॉनिटर। 0 = डिफ़ॉल्ट, -1 = त्यागें, -2 = द्वितीयक। *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | ब्राउज़र विंडो की प्रारंभिक चौड़ाई। *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | ब्राउज़र विंडो की प्रारंभिक ऊंचाई। *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | ब्राउज़र विंडो की प्रारंभिक X स्थिति। *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | ब्राउज़र विंडो की प्रारंभिक Y स्थिति। *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | ब्राउज़र विंडो पर भेजने के लिए कीस्ट्रोक्स, cmdlet GenXdev\Send-Key का दस्तावेज़ देखें। *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | केवल केस-संवेदनशील परिणामों का मिलान करें (जहां समर्थित हो)। |
| `-AsJob` | SwitchParameter | — | — | Named | — | खोज को एक PowerShell जॉब के रूप में अतुल्यकालिक रूप से चलाएं। *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | नीचे दिए गए पाठ को हिंदी (भारत) में अनुवाद करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को बिना बदले वापस न करें। कोई स्पष्टीकरण, कोई JSON रैपर, और कोई सिस्टम प्रॉम्प्ट न देते हुए केवल अनुवादित पाठ लौटाएं।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप, या संरचित डेटा है, तो सभी सिंटैक्स, संरचना, और तकनीकी तत्वों जैसे प्रोग्रामिंग कीवर्ड, टैग, या डेटा प्रारूप-विशिष्ट तत्वों को संरक्षित करें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण, या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक फ़ॉर्मेटिंग, इंडेंटेशन, और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ता, फ़ंक्शन नाम, चर, या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश: 
अनुवाद की जाने वाली सामग्री को PowerShell cmdlet सहायता पाठ के रूप में न समझें, जो निर्देश हैं!
चित्र या कुछ भी सम्मिलित न करें। सामग्री का यथासंभव सीधा अनुवाद हिंदी (भारत) में करें। *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | वेब ब्राउज़र में खोलने के बजाय API मोड का उपयोग करें। *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | गुमनाम खोज के लिए ब्राउज़र को निजी/गुप्त ब्राउज़िंग मोड में खोलता है। *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | डिबगिंग पोर्ट को बलपूर्वक सक्षम करें, यदि आवश्यक हो तो मौजूदा ब्राउज़रों को रोकें। *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge ब्राउज़र में खोज परिणाम खोलता है। *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome ब्राउज़र में खोज परिणाम खोलता है। *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | खोज परिणामों को माइक्रोसॉफ्ट एज या गूगल क्रोम में खोलता है, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र क्या है। *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | खोज परिणामों को मोज़िला फ़ायरफ़ॉक्स ब्राउज़र में खोलता है। *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | OS द्वारा स्थापित ब्राउज़र के बजाय Playwright-प्रबंधित ब्राउज़र का उपयोग करें |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright-प्रबंधित वेबकिट ब्राउज़र खोलता है। -PlayWright को दर्शाता है |
| `-Headless` | SwitchParameter | — | — | Named | — | ब्राउज़र को दृश्य विंडो के बिना चलाएं |
| `-All` | SwitchParameter | — | — | Named | — | सभी पंजीकृत आधुनिक ब्राउज़रों में खुलता है |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ब्राउज़र को पूर्ण स्क्रीन मोड में खोलता है। *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के बाईं ओर रखें। *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के दाईं ओर रखें। *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के ऊपर की तरफ रखें। *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के निचले भाग पर रखें। *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को स्क्रीन के केंद्र में रखें। *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ब्राउज़र नियंत्रण छुपाएं। *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ब्राउज़र एक्सटेंशन लोड होने से रोकें। *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ब्राउज़र में पॉपअप ब्लॉकर को अक्षम करें। *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो पर फोकस करें। *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | खोलने के बाद ब्राउज़र विंडो को अग्रभूमि में सेट करें। *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | स्थिति निर्धारित करने के बाद विंडो को अधिकतम करें। *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell विंडो फ़ोकस पुनर्स्थापित करें। *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, बल्कि एक नई विंडो बनाएं। *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | वेब मोड में ब्राउज़र प्रक्रिया का [System.Diagnostics.Process] ऑब्जेक्ट या API मोड में क्वेरी ऑब्जेक्ट लौटाता है। |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | वेब ब्राउज़र मत खोलिए, बस URL वापस कर दीजिए। *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | वेबब्राउज़र खोलने के बाद, URL वापस करें। *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | कुंजी भेजते समय नियंत्रण वर्णों को एस्केप करें। *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | कीज़ भेजने के बाद PowerShell को कीबोर्ड फोकस वापस लेने से रोकें। *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | लाइन ब्रेक के लिए सामान्य Enter के बजाय Shift+Enter भेजें. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | स्वच्छ दिखावट के लिए विंडो बॉर्डर और टाइटल बार हटाएं। *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ब्राउज़र विंडो को पावरशेल के साथ एक ही मॉनीटर पर साथ-साथ रखें। *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें। *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | सत्र में विकल्पों के लिए संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें। *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | सेटिंग्स को केवल स्थायी प्राथमिकताओं में संग्रहीत करें, सत्र को प्रभावित किए बिना। *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Parameter Details

### `-Query <String[]>`

> गिटहब पर निष्पादित करने के लिए खोज क्वेरी। बैच खोज के लिए एकाधिक क्वेरी और पाइपलाइन इनपुट का समर्थन करता है। प्रत्येक क्वेरी URL-एन्कोडेड होगी और गिटहब खोजने के लिए उपयोग की जाएगी।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Queries` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Type <String>`

> खोजने के लिए मुख्य श्रेणी। डिफ़ॉल्ट 'कोड' है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Code'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-In <String[]>`

> खोजने के लिए फ़ील्ड। चयनित प्रकार के लिए केवल मान्य विकल्प स्वीकार किए जाएंगे।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-User <String>`

> खोज को उपयोगकर्ता के संसाधनों (रिपॉजिटरी, कोड, मुद्दे आदि) तक सीमित करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Org <String>`

> खोज को किसी संगठन तक सीमित करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repo <String>`

> खोज को एक नामांकित भंडार ('owner/repo') तक सीमित करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Path <String>`

> कोड खोज को विशिष्ट फ़ाइल या निर्देशिका पथों तक सीमित करें (GitHub खोज सिंटैक्स के अनुसार वाइल्डकार्ड का समर्थन करता है)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Filename <String>`

> परिणामों को फ़ाइल नाम (पथ नहीं) द्वारा फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Extension <String>`

> कोड खोज को फ़ाइल एक्सटेंशन तक सीमित करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Code |

<hr/>
### `-Language <String>`

> प्रोग्रामिंग भाषा द्वारा फ़िल्टर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Size <String>`

> फ़ाइल/रिपॉजिटरी का आकार। संख्यात्मक और श्रेणी सिंटैक्स का समर्थन करता है (उदाहरण देखें)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-State <String>`

> समस्याओं/पुल अनुरोधों के लिए।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Author <String>`

> Issues/PR: किसी निर्दिष्ट उपयोगकर्ता द्वारा बनाए गए तक सीमित करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Assignee <String>`

> मुद्दे/पीआर: किसी उपयोगकर्ता को असाइन किए गए तक सीमित रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-Labels <String[]>`

> मुद्दे/PR: सभी निर्दिष्ट स्ट्रिंग्स से लेबल होना चाहिए।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-No <String[]>`

> मुद्दे/पीआर: कुछ मेटाडेटा (जैसे, लेबल, माइलस्टोन) का अभाव होना चाहिए।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Issue |

<hr/>
### `-SortBy <String>`

> सॉर्ट फ़ील्ड (प्रकार पर निर्भर करता है)। उदा., "stars", "forks", "updated", आदि।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Order <String>`

> छंटाई के लिए 'asc' या 'desc' क्रम।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerPage <Int32>`

> पृष्ठ आकार (अधिकतम 100)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `10` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Int32>`

> पृष्ठांकित परिणामों के लिए पृष्ठ संख्या।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> GitHub OAuth या व्यक्तिगत एक्सेस टोकन। यदि प्रदान नहीं किया गया है, तो GITHUB_TOKEN या पर्यावरण चर का उपयोग करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-AcceptLang <String>`

> ब्राउज़र के स्वीकार-लैंग HTTP हैडर को सेट करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> विभिन्न कुंजी अनुक्रमों को भेजने के बीच मिलीसेकंड में देरी।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Monitor <Int32>`

> परिणाम प्रदर्शित करने के लिए मॉनिटर। 0 = डिफ़ॉल्ट, -1 = त्यागें, -2 = द्वितीयक।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Width <Int32>`

> ब्राउज़र विंडो की प्रारंभिक चौड़ाई।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Height <Int32>`

> ब्राउज़र विंडो की प्रारंभिक ऊंचाई।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-X <Int32>`

> ब्राउज़र विंडो की प्रारंभिक X स्थिति।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Y <Int32>`

> ब्राउज़र विंडो की प्रारंभिक Y स्थिति।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-KeysToSend <String[]>`

> ब्राउज़र विंडो पर भेजने के लिए कीस्ट्रोक्स, cmdlet GenXdev\Send-Key का दस्तावेज़ देखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-CaseSensitive`

> केवल केस-संवेदनशील परिणामों का मिलान करें (जहां समर्थित हो)।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsJob`

> खोज को एक PowerShell जॉब के रूप में अतुल्यकालिक रूप से चलाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-RawResponse`

> नीचे दिए गए पाठ को हिंदी (भारत) में अनुवाद करें। आपको सभी मानव-पठनीय पाठ का अनुवाद करना होगा। इनपुट को बिना बदले वापस न करें। कोई स्पष्टीकरण, कोई JSON रैपर, और कोई सिस्टम प्रॉम्प्ट न देते हुए केवल अनुवादित पाठ लौटाएं।

महत्वपूर्ण अनुवाद नियम:
1. यदि इनपुट में कोड, मार्कअप, या संरचित डेटा है, तो सभी सिंटैक्स, संरचना, और तकनीकी तत्वों जैसे प्रोग्रामिंग कीवर्ड, टैग, या डेटा प्रारूप-विशिष्ट तत्वों को संरक्षित करें।
2. केवल मानव-पठनीय पाठ भागों जैसे टिप्पणियाँ, स्ट्रिंग मान, दस्तावेज़ीकरण, या प्राकृतिक भाषा सामग्री का अनुवाद करें।
3. सटीक फ़ॉर्मेटिंग, इंडेंटेशन, और लाइन ब्रेक बनाए रखें।
4. पहचानकर्ता, फ़ंक्शन नाम, चर, या तकनीकी कीवर्ड का कभी अनुवाद न करें।
अतिरिक्त उपयोगकर्ता निर्देश: 
अनुवाद की जाने वाली सामग्री को PowerShell cmdlet सहायता पाठ के रूप में न समझें, जो निर्देश हैं!
चित्र या कुछ भी सम्मिलित न करें। सामग्री का यथासंभव सीधा अनुवाद हिंदी (भारत) में करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Api`

> वेब ब्राउज़र में खोलने के बजाय API मोड का उपयोग करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Api |

<hr/>
### `-Private`

> गुमनाम खोज के लिए ब्राउज़र को निजी/गुप्त ब्राउज़िंग मोड में खोलता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Force`

> डिबगिंग पोर्ट को बलपूर्वक सक्षम करें, यदि आवश्यक हो तो मौजूदा ब्राउज़रों को रोकें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Edge`

> Microsoft Edge ब्राउज़र में खोज परिणाम खोलता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chrome`

> Google Chrome ब्राउज़र में खोज परिणाम खोलता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Chromium`

> खोज परिणामों को माइक्रोसॉफ्ट एज या गूगल क्रोम में खोलता है, यह इस पर निर्भर करता है कि डिफ़ॉल्ट ब्राउज़र क्या है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Firefox`

> खोज परिणामों को मोज़िला फ़ायरफ़ॉक्स ब्राउज़र में खोलता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
### `-FullScreen`

> ब्राउज़र को पूर्ण स्क्रीन मोड में खोलता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Left`

> ब्राउज़र विंडो को स्क्रीन के बाईं ओर रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Right`

> ब्राउज़र विंडो को स्क्रीन के दाईं ओर रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Top`

> ब्राउज़र विंडो को स्क्रीन के ऊपर की तरफ रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Bottom`

> ब्राउज़र विंडो को स्क्रीन के निचले भाग पर रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Centered`

> ब्राउज़र विंडो को स्क्रीन के केंद्र में रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ApplicationMode`

> ब्राउज़र नियंत्रण छुपाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBrowserExtensions`

> ब्राउज़र एक्सटेंशन लोड होने से रोकें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-DisablePopupBlocker`

> ब्राउज़र में पॉपअप ब्लॉकर को अक्षम करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-FocusWindow`

> खोलने के बाद ब्राउज़र विंडो पर फोकस करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SetForeground`

> खोलने के बाद ब्राउज़र विंडो को अग्रभूमि में सेट करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-Maximize`

> स्थिति निर्धारित करने के बाद विंडो को अधिकतम करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-RestoreFocus`

> PowerShell विंडो फ़ोकस पुनर्स्थापित करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NewWindow`

> मौजूदा ब्राउज़र विंडो का पुन: उपयोग न करें, बल्कि एक नई विंडो बनाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-PassThru`

> वेब मोड में ब्राउज़र प्रक्रिया का [System.Diagnostics.Process] ऑब्जेक्ट या API मोड में क्वेरी ऑब्जेक्ट लौटाता है।

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

> वेब ब्राउज़र मत खोलिए, बस URL वापस कर दीजिए।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ReturnOnlyURL`

> वेबब्राउज़र खोलने के बाद, URL वापस करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
### `-SendKeyUseShiftEnter`

> लाइन ब्रेक के लिए सामान्य Enter के बजाय Shift+Enter भेजें.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-NoBorders`

> स्वच्छ दिखावट के लिए विंडो बॉर्डर और टाइटल बार हटाएं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SideBySide`

> ब्राउज़र विंडो को पावरशेल के साथ एक ही मॉनीटर पर साथ-साथ रखें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-SessionOnly`

> वरीयताओं के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

<hr/>
### `-ClearSession`

> सत्र में विकल्पों के लिए संग्रहीत वैकल्पिक सेटिंग्स साफ़ करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Web |

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
| **Parameter set** | Web |

<hr/>
## Outputs

- `PSObject`

## Related Links

- [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-PDFsFromGoogleQuery.md)
- [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BingQuery.md)
- [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-BuiltWithSiteInfo.md)
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
