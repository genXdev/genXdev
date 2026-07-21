# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> उन्नत फ़िल्टरिंग विकल्पों के साथ फ़ाइलों और निर्देशिकाओं की खोज करें।

## Description

```text
* Find-Item के साथ फ़ाइलें ढूँढें -> l
        * तेज़ मल्टी-थ्रेडेड खोज: समानांतर और अतुल्यकालिक IO प्रसंस्करण का उपयोग करता है जिसमें समानांतरता की अधिकतम डिग्री कॉन्फ़िगर करने योग्य होती है (डिफ़ॉल्ट CPU कोर पर आधारित) कुशल फ़ाइल और निर्देशिका स्कैनिंग के लिए।
        * उन्नत पैटर्न मिलान: वाइल्डकार्ड (*, ?), ** जैसे रिकर्सिव पैटर्न और सटीक फ़ाइल और निर्देशिका क्वेरी के लिए जटिल पथ संरचनाओं का समर्थन करता है।
              **/filename तब तक रिकर्स करेगा जब तक filename मैच न हो जाए। ऐसे कई पैटर्न की अनुमति है, जब तक वे मैच करने के लिए किसी फ़ाइलनाम या निर्देशिकानाम से पहले हों।
              इस पैटर्न पार्सर में Resolve-Path की शक्ति है लेकिन इसमें रिकर्सन सुविधाएँ हैं, और यह केवल * और ? को वाइल्डकार्ड के रूप में समर्थन करता है,
              [ ] ब्रैकेट वाले पथों में बग को रोकता है, -LiteralPath पैरामीटर की आवश्यकता को समाप्त करता है, जबकि वाइल्डकार्ड के बिना पथ अनुभागों के लिए अखंडता बनाए रखता है, पूरे पूर्ण पथ पर वाइल्डकार्ड मिलान के विपरीत।
        * उन्नत सामग्री खोज: -Content पैरामीटर का उपयोग करके फ़ाइल सामग्री के भीतर नियमित अभिव्यक्ति पैटर्न के साथ व्यापक Select-String एकीकरण।
            * बड़ी फ़ाइल अनुकूलन: स्मार्ट ओवरलैपिंग बफ़र्स और न्यूनतम हीप आवंटन के साथ अत्यधिक बड़ी फ़ाइलों को संभालता है
            * एकाधिक मिलान विकल्प: प्रति पंक्ति सभी मिलान खोजें (-AllMatches) या प्रति फ़ाइल केवल पहला मिलान (-List)
            * केस संवेदनशीलता नियंत्रण: संस्कृति-विशिष्ट विकल्पों (-Culture) के साथ केस-संवेदी मिलान (-CaseSensitive)
            * संदर्भ कैप्चर: बेहतर समझ के लिए मिलान से पहले और बाद की पंक्तियाँ दिखाएँ (-Context)
            * उलटा मिलान: ऐसी फ़ाइलें खोजें जिनमें पैटर्न न हो (-NotMatch)
            * आउटपुट प्रारूप: रॉ स्ट्रिंग आउटपुट (-Raw), शांत बूलियन प्रतिक्रिया (-Quiet), या पूर्ण MatchInfo ऑब्जेक्ट
            * पैटर्न प्रकार: नियमित अभिव्यक्ति (डिफ़ॉल्ट) या सरल शाब्दिक स्ट्रिंग मिलान (-SimpleMatch)
            * एन्कोडिंग समर्थन: सटीक टेक्स्ट प्रोसेसिंग के लिए फ़ाइल एन्कोडिंग निर्दिष्ट करें (-Encoding)
        * पथ प्रकार लचीलापन: सापेक्ष, निरपेक्ष, UNC, रूटेड पथ और NTFS वैकल्पिक डेटा स्ट्रीम (ADS) को संभालता है जिसमें स्ट्रीम में वैकल्पिक सामग्री खोज होती है।
        * मल्टी-ड्राइव समर्थन: -AllDrives के साथ सभी ड्राइव या -SearchDrives के माध्यम से विशिष्ट ड्राइव पर खोज करता है, जिसमें निर्दिष्ट होने पर ऑप्टिकल डिस्क शामिल हैं।
        * निर्देशिका और फ़ाइल फ़िल्टरिंग: केवल निर्देशिकाएँ खोजने के विकल्प (-Directory), फ़ाइलें और निर्देशिकाएँ दोनों (-FilesAndDirectories), या सामग्री मिलान वाली फ़ाइलें।
        * बहिष्करण और सीमाएँ: -Exclude के साथ पैटर्न बहिष्कृत करें, अधिकतम रिकर्सन गहराई (-MaxRecursionDepth), फ़ाइल आकार सीमाएँ (-MaxFileSize, -MinFileSize), और संशोधित दिनांक फ़िल्टर (-ModifiedAfter, -ModifiedBefore) सेट करें।
        * आउटपुट अनुकूलन: FileInfo/DirectoryInfo ऑब्जेक्ट, सापेक्ष पथ, अटेंडेड मोड में हाइपरलिंक, या अनअटेंडेड मोड में सादे पथ के लिए PassThru का समर्थन करता है (गड़बड़ी की स्थिति में अनअटेंडेड मोड लागू करने के लिए -NoLinks का उपयोग करें)।
        * प्रदर्शन अनुकूलन: सामग्री खोज के लिए डिफ़ॉल्ट रूप से गैर-टेक्स्ट फ़ाइलों को छोड़ देता है (-IncludeNonTextFileMatching के साथ ओवरराइड करें), लंबे पथ (>260 वर्ण) संभालता है, और सिमलिंक/जंक्शन का अनुसरण करता है।
        * सुरक्षा सुविधाएँ: टाइमआउट समर्थन (-TimeoutSeconds), दुर्गम वस्तुओं को अनदेखा करता है, डिफ़ॉल्ट रूप से सिस्टम विशेषताओं को छोड़ देता है, और विज़िट किए गए नोड ट्रैकिंग के साथ अनंत लूप को रोकता है।

        * -Category पैरामीटर के लिए मान्य श्रेणियाँ हैं: Pictures, Videos, Music, Documents, Spreadsheets, Presentations, Archives, Installers, Executables, Databases, DesignFiles, Ebooks, Subtitles, Fonts, EmailFiles, 3DModels, GameAssets, MedicalFiles, FinancialFiles, LegalFiles, SourceCode, Scripts, MarkupAndData, Configuration, Logs, TextFiles, WebFiles, MusicLyricsAndChords, CreativeWriting, Recipes, ResearchFiles
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | सामग्री के भीतर खोजने के लिए नियमित अभिव्यक्ति पैटर्न *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | आउटपुट में सापेक्ष पथों को हल करने के लिए आधार पथ |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | निर्देशिका कार्यों के लिए अधिकतम समांतरता |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | वैकल्पिक: सेकंड में कैंसलेशन टाइमआउट |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | सभी उपलब्ध ड्राइव में खोजें |
| `-Directory` | SwitchParameter | — | — | Named | `False` | केवल निर्देशिकाएँ खोजें |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | फ़ाइलें और निर्देशिकाएँ दोनों शामिल करें |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | आउटपुट मिलान किए गए आइटम ऑब्जेक्ट के रूप में |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | उपनिर्देशिकाओं में पुनरावृत्ति न करें |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | निर्देशिका ट्रैवर्सल के दौरान सिमलिंक और जंक्शन का अनुसरण करें |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | ऑप्टिकल डिस्क ड्राइव शामिल करें |
| `-SearchDrives` | String[] | — | — | Named | — | वैकल्पिक: विशिष्ट ड्राइव खोजें |
| `-DriveLetter` | Char[] | — | — | Named | — | वैकल्पिक: विशिष्ट ड्राइव खोजें |
| `-Root` | String[] | — | — | Named | — | वैकल्पिक: विशिष्ट निर्देशिकाएँ खोजें |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | नाम इनपुट से निर्देशिका घटकों को हटाकर केवल रूट निर्देशिकाओं के भीतर खोज को लागू करता है |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | फ़ाइल सामग्री खोजते समय गैर-पाठ फ़ाइलों को शामिल करें |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | अप्राप्त मोड को बाध्य करता है और लिंक उत्पन्न नहीं करेगा |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | फ़ाइलों और निर्देशिकाओं के लिए केस-संवेदनशीलता प्राप्त या सेट करता है |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | जब सेट किया जाता है, तो वैकल्पिक डेटा स्ट्रीम (ADS) के अंदर सामग्री खोज करता है। जब सेट नहीं किया जाता है, तो उनकी सामग्री खोजे बिना ADS फ़ाइल जानकारी आउटपुट करता है। |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | निर्देशिका ट्रैवर्सल के लिए अधिकतम रिकर्शन गहराई। 0 का अर्थ असीमित। |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | सापेक्ष खोजों के दौरान वृक्ष में ऊपर की ओर खोज जारी रखने के लिए अधिकतम रिकर्सन गहराई, जब तक कोई आइटम नहीं मिलता। 0 का अर्थ है निष्क्रिय। |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए फ़ाइल का अधिकतम आकार बाइट्स में। 0 का अर्थ असीमित है। |
| `-MinFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए न्यूनतम फ़ाइल आकार बाइट्स में। 0 का अर्थ है कोई न्यूनतम नहीं। |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | इस तिथि/समय (UTC) के बाद केवल संशोधित फ़ाइलें शामिल करें। |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | केवल इस दिनांक/समय (UTC) से पहले संशोधित फ़ाइलें शामिल करें। |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | छोड़ने के लिए फ़ाइल विशेषताएँ (जैसे, सिस्टम, हिडन या कोई नहीं)। |
| `-Exclude` | String[] | — | — | Named | — | इन वाइल्डकार्ड पैटर्न (जैसे, *.tmp, *\bin\*) से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें। |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | इंगित करता है कि cmdlet पाठ की प्रत्येक पंक्ति में एक से अधिक मिलान खोजता है। इस पैरामीटर के बिना, Select-String पाठ की प्रत्येक पंक्ति में केवल पहला मिलान ढूंढता है। *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | इंगित करता है कि cmdlet मिलान केस-सेंसिटिव हैं। डिफ़ॉल्ट रूप से, मिलान केस-सेंसिटिव नहीं होते हैं। *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | पैटर्न से मेल खाने वाली पंक्ति के पहले और बाद की निर्दिष्ट संख्या में लाइनों को कैप्चर करता है। *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | एक संस्कृति नाम निर्दिष्ट करता है जो निर्दिष्ट पैटर्न से मेल खाता है। Culture पैरामीटर का उपयोग SimpleMatch पैरामीटर के साथ किया जाना चाहिए। डिफ़ॉल्ट व्यवहार वर्तमान PowerShell रनस्पेस (सत्र) की संस्कृति का उपयोग करता है। *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | लक्ष्य फ़ाइल के लिए एन्कोडिंग के प्रकार को निर्दिष्ट करता है। Select-String संगत मानों और विस्तारित .NET एन्कोडिंग का समर्थन करता है। *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | प्रत्येक इनपुट फ़ाइल से मिलान किए गए टेक्स्ट का केवल पहला उदाहरण लौटाया जाता है। यह उन फ़ाइलों की सूची प्राप्त करने का सबसे कुशल तरीका है जिनकी सामग्री नियमित अभिव्यक्ति से मेल खाती है। *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | आउटपुट में मिलान किए गए स्ट्रिंग्स की हाइलाइटिंग अक्षम करता है। *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | NotMatch पैरामीटर उस पाठ को ढूंढता है जो निर्दिष्ट पैटर्न से मेल नहीं खाता। *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | इंगित करता है कि cmdlet MatchInfo ऑब्जेक्ट के बजाय एक सरल प्रतिक्रिया लौटाता है। यदि पैटर्न मिलता है तो लौटाया गया मान $true है, या यदि पैटर्न नहीं मिलता है तो $null है। *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | यह cmdlet को MatchInfo ऑब्जेक्ट्स के बजाय केवल मिलान स्ट्रिंग्स आउटपुट करने का कारण बनता है। यह व्यवहार Unix grep या Windows findstr.exe कमांड के समान है। *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | इंगित करता है कि cmdlet एक नियमित अभिव्यक्ति मिलान के बजाय एक सरल मिलान का उपयोग करता है। एक सरल मिलान में, Select-String पैटर्न पैरामीटर में टेक्स्ट के लिए इनपुट खोजता है। यह पैटर्न पैरामीटर के मान को एक नियमित अभिव्यक्ति कथन के रूप में व्याख्या नहीं करता है। *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

एक विशिष्ट शब्द वाली फ़ाइलें खोजें
वर्तमान निर्देशिका और उपनिर्देशिकाओं में उन सभी फ़ाइलों की खोज करें जिनमें "translation" शब्द है।

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

संस्करण स्ट्रिंग वाली JavaScript फ़ाइलें ढूँढें
"Version == `x.y.z`" प्रारूप में संस्करण स्ट्रिंग वाली JavaScript फ़ाइलें खोजें।

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

सभी निर्देशिकाओं की सूची बनाएं
वर्तमान निर्देशिका और इसकी उपनिर्देशिकाओं में सभी निर्देशिकाएं खोजें।

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

XML फ़ाइलें ढूँढें और ऑब्जेक्ट पास करें
सभी .xml फ़ाइलों की खोज करें और परिणामों को पाइपलाइन के माध्यम से ऑब्जेक्ट के रूप में पास करें।

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

वैकल्पिक डेटा स्ट्रीम शामिल करें
सभी फ़ाइलों की खोज करें और परिणामों में उनकी वैकल्पिक डेटा स्ट्रीम शामिल करें।

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

सभी ड्राइव पर खोजें
सभी उपलब्ध ड्राइव पर सभी PDF फ़ाइलें खोजें।

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

कस्टम टाइमआउट और समानता
5 मिनट के टाइमआउट और सीमित समानता के साथ लॉग फ़ाइलें खोजें।

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

पाइपलाइन इनपुट
"error" वाली फ़ाइलों की खोज के लिए Get-ChildItem से फ़ाइल पथ पास करें।

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

पुनरावृत्ति गहराई को सीमित करें
टेक्स्ट फ़ाइलें खोजें लेकिन पुनरावृत्ति को 2 निर्देशिका स्तरों तक सीमित करें।

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

फ़ाइल आकार के अनुसार फ़िल्टर करें
1MB से बड़ी लेकिन 10MB से छोटी फ़ाइलें खोजें।

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

संशोधन दिनांक के अनुसार फ़िल्टर करें
1 जनवरी 2025 के बाद संशोधित फ़ाइलें खोजें।

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

विशिष्ट पैटर्न को बाहर करें
सभी फ़ाइलों की खोज करें लेकिन अस्थायी फ़ाइलों और बिन निर्देशिकाओं को बाहर रखें।

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

विशिष्ट ड्राइव खोजें
C: और D: ड्राइव पर केवल .docx फ़ाइलें खोजें।

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

केस-संवेदी सामग्री खोज
उन फ़ाइलों की खोज करें जिनकी सामग्री में "Error" (केस-संवेदी) शामिल है।

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

वैकल्पिक डेटा स्ट्रीम सामग्री खोजें
उन फ़ाइलों की खोज करें जिनमें "गुप्त" वाले वैकल्पिक डेटा स्ट्रीम हों।

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

प्रति पंक्ति सभी मिलान खोजें
प्रत्येक पंक्ति में "फंक्शन" की सभी घटनाओं को खोजें, न कि केवल पहले मिलान को।

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

मिलानों के आसपास संदर्भ दिखाएं
बेहतर समझ के लिए प्रत्येक मिलान से पहले 2 पंक्तियाँ और बाद में 3 पंक्तियाँ प्रदर्शित करें।

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

केवल मिलान स्ट्रिंग प्राप्त करें
पूर्ण मिलान ऑब्जेक्ट के बजाय केवल मिलान पाठ स्ट्रिंग लौटाएं।

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

सरल बूलियन जांच
पैटर्न मौजूद है या नहीं यह जांचने के लिए मिलान विवरण के बजाय सही/गलत लौटाएं।

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

प्रति फ़ाइल केवल पहला मिलान खोजें
कुशल फ़ाइल सूचीकरण के लिए प्रत्येक फ़ाइल में पहले मिलान पर रुकें।

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

शाब्दिक स्ट्रिंग मिलान
SimpleMatch का उपयोग करके रेगेक्स व्याख्या के बिना सटीक पाठ खोजें।

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

पैटर्न शामिल नहीं करने वाली फ़ाइलें खोजें
निर्दिष्ट पैटर्न शामिल नहीं करने वाली फ़ाइलों को खोजने के लिए NotMatch का उपयोग करें।

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

फ़ाइल एन्कोडिंग निर्दिष्ट करें
सटीक टेक्स्ट प्रोसेसिंग के लिए विशिष्ट एन्कोडिंग वाली फ़ाइलें खोजें।

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

सांस्कृतिक पाठ तुलना
अंतर्राष्ट्रीय पाठ के लिए SimpleMatch के साथ संस्कृति-विशिष्ट मिलान का उपयोग करें।

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

फ़ाइल फ़िल्टर के साथ जटिल सामग्री खोज
सटीक खोज के लिए फ़ाइल आकार, दिनांक और सामग्री फ़िल्टर को संयोजित करें।

## Parameter Details

### `-Name <String[]>`

> खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> सामग्री के भीतर खोजने के लिए नियमित अभिव्यक्ति पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> आउटपुट में सापेक्ष पथों को हल करने के लिए आधार पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-AllDrives`

> सभी उपलब्ध ड्राइव में खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Directory`

> केवल निर्देशिकाएँ खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> फ़ाइलें और निर्देशिकाएँ दोनों शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> आउटपुट मिलान किए गए आइटम ऑब्जेक्ट के रूप में

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> उपनिर्देशिकाओं में पुनरावृत्ति न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> निर्देशिका ट्रैवर्सल के दौरान सिमलिंक और जंक्शन का अनुसरण करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> ऑप्टिकल डिस्क ड्राइव शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> वैकल्पिक: विशिष्ट ड्राइव खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> वैकल्पिक: विशिष्ट ड्राइव खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> वैकल्पिक: विशिष्ट निर्देशिकाएँ खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> नाम इनपुट से निर्देशिका घटकों को हटाकर केवल रूट निर्देशिकाओं के भीतर खोज को लागू करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> फ़ाइल सामग्री खोजते समय गैर-पाठ फ़ाइलों को शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> अप्राप्त मोड को बाध्य करता है और लिंक उत्पन्न नहीं करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> फ़ाइलों और निर्देशिकाओं के लिए केस-संवेदनशीलता प्राप्त या सेट करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> जब सेट किया जाता है, तो वैकल्पिक डेटा स्ट्रीम (ADS) के अंदर सामग्री खोज करता है। जब सेट नहीं किया जाता है, तो उनकी सामग्री खोजे बिना ADS फ़ाइल जानकारी आउटपुट करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> इन वाइल्डकार्ड पैटर्न (जैसे, *.tmp, *\bin\*) से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> इंगित करता है कि cmdlet पाठ की प्रत्येक पंक्ति में एक से अधिक मिलान खोजता है। इस पैरामीटर के बिना, Select-String पाठ की प्रत्येक पंक्ति में केवल पहला मिलान ढूंढता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> इंगित करता है कि cmdlet मिलान केस-सेंसिटिव हैं। डिफ़ॉल्ट रूप से, मिलान केस-सेंसिटिव नहीं होते हैं।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> पैटर्न से मेल खाने वाली पंक्ति के पहले और बाद की निर्दिष्ट संख्या में लाइनों को कैप्चर करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> एक संस्कृति नाम निर्दिष्ट करता है जो निर्दिष्ट पैटर्न से मेल खाता है। Culture पैरामीटर का उपयोग SimpleMatch पैरामीटर के साथ किया जाना चाहिए। डिफ़ॉल्ट व्यवहार वर्तमान PowerShell रनस्पेस (सत्र) की संस्कृति का उपयोग करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> लक्ष्य फ़ाइल के लिए एन्कोडिंग के प्रकार को निर्दिष्ट करता है। Select-String संगत मानों और विस्तारित .NET एन्कोडिंग का समर्थन करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> प्रत्येक इनपुट फ़ाइल से मिलान किए गए टेक्स्ट का केवल पहला उदाहरण लौटाया जाता है। यह उन फ़ाइलों की सूची प्राप्त करने का सबसे कुशल तरीका है जिनकी सामग्री नियमित अभिव्यक्ति से मेल खाती है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> आउटपुट में मिलान किए गए स्ट्रिंग्स की हाइलाइटिंग अक्षम करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> NotMatch पैरामीटर उस पाठ को ढूंढता है जो निर्दिष्ट पैटर्न से मेल नहीं खाता।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> इंगित करता है कि cmdlet MatchInfo ऑब्जेक्ट के बजाय एक सरल प्रतिक्रिया लौटाता है। यदि पैटर्न मिलता है तो लौटाया गया मान $true है, या यदि पैटर्न नहीं मिलता है तो $null है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> यह cmdlet को MatchInfo ऑब्जेक्ट्स के बजाय केवल मिलान स्ट्रिंग्स आउटपुट करने का कारण बनता है। यह व्यवहार Unix grep या Windows findstr.exe कमांड के समान है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> इंगित करता है कि cmdlet एक नियमित अभिव्यक्ति मिलान के बजाय एक सरल मिलान का उपयोग करता है। एक सरल मिलान में, Select-String पैटर्न पैरामीटर में टेक्स्ट के लिए इनपुट खोजता है। यह पैटर्न पैरामीटर के मान को एक नियमित अभिव्यक्ति कथन के रूप में व्याख्या नहीं करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-DuplicateFiles.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-TextFileAtomic.md)
