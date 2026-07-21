# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf`

## Synopsis

> कॉन्फ़िगरेबल मानदंडों के आधार पर एकाधिक निर्देशिकाओं में डुप्लिकेट फ़ाइलें खोजें।

## Description

निर्दिष्ट निर्देशिकाओं में डुप्लिकेट फ़ाइलों के लिए पुनरावर्ती रूप से खोज करता है। यदि सामग्री बिल्कुल समान है या समान सामग्री से शुरू होती है (आंशिक तुलना के लिए -ComparePartial स्विच का उपयोग करके) तो फ़ाइलों को डुप्लिकेट माना जाता है। cmdlet पूर्ण सामग्री तुलना करने से पहले कुशल समूहीकरण के लिए फ़ाइल के प्रारंभिक बाइट्स के त्वरित हैश का उपयोग करता है। इस त्वरित हैश के आकार को -CompareByteLength पैरामीटर के साथ कॉन्फ़िगर किया जा सकता है, जो डुप्लिकेट पहचान में प्रदर्शन और सटीकता के बीच संतुलन की अनुमति देता है, केवल वे फ़ाइलें जिनकी न्यूनतम लंबाई इस CompareByteLength मान है, डुप्लिकेट पहचान के लिए मानी जाएंगी, छोटी फ़ाइलों को केवल फ़ाइल नाम के आधार पर समूहित किया जाएगा।

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | पाइपलाइन इनपुट से खोजने के लिए फ़ाइल नाम या पैटर्न। डिफ़ॉल्ट '*' है 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | सामग्री के भीतर खोजने के लिए नियमित अभिव्यक्ति पैटर्न *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | आउटपुट में सापेक्ष पथों को हल करने के लिए आधार पथ |
| `-Category` | String[] | — | — | Named | — | केवल चयनित श्रेणियों से संबंधित फ़ाइलें आउटपुट करें |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | निर्देशिका कार्यों के लिए अधिकतम समांतरता |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | वैकल्पिक: सेकंड में कैंसलेशन टाइमआउट |
| `-AllDrives` | SwitchParameter | — | — | Named | — | सभी उपलब्ध ड्राइव में खोजें |
| `-Directory` | SwitchParameter | — | — | Named | — | केवल निर्देशिकाएँ खोजें |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | फ़ाइलें और निर्देशिकाएँ दोनों शामिल करें |
| `-PassThru` | SwitchParameter | — | — | Named | — | आउटपुट मिलान किए गए आइटम ऑब्जेक्ट के रूप में |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | उपनिर्देशिकाओं में पुनरावृत्ति न करें |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | निर्देशिका ट्रैवर्सल के दौरान सिमलिंक और जंक्शन का अनुसरण करें |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | ऑप्टिकल डिस्क ड्राइव शामिल करें |
| `-SearchDrives` | String[] | — | — | Named | `@()` | वैकल्पिक: विशिष्ट ड्राइव खोजें |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | वैकल्पिक: विशिष्ट ड्राइव खोजें |
| `-Root` | String[] | — | — | Named | `@()` | वैकल्पिक: विशिष्ट निर्देशिकाएँ खोजें |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | नाम इनपुट से निर्देशिका घटकों को हटाकर केवल रूट निर्देशिकाओं के भीतर खोज को लागू करता है |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | फ़ाइल सामग्री खोजते समय गैर-पाठ फ़ाइलों को शामिल करें |
| `-NoLinks` | SwitchParameter | — | — | Named | — | अप्राप्त मोड को बाध्य करता है और लिंक उत्पन्न नहीं करेगा |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | फ़ाइलों और निर्देशिकाओं के लिए केस-संवेदनशीलता प्राप्त या सेट करता है |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | सेट होने पर, वैकल्पिक डेटा स्ट्रीम (ADS) के भीतर सामग्री खोज करता है |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | निर्देशिका ट्रैवर्सल के लिए अधिकतम रिकर्शन गहराई। 0 का अर्थ असीमित। |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | पेड़ में ऊपर की ओर निरंतर खोज के लिए अधिकतम रिकर्सन गहराई। 0 का अर्थ है अक्षम। |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए फ़ाइल का अधिकतम आकार बाइट्स में। 0 का अर्थ असीमित है। |
| `-MinFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए न्यूनतम फ़ाइल आकार बाइट्स में। 0 का अर्थ है कोई न्यूनतम नहीं। |
| `-ModifiedAfter` | DateTime | — | — | Named | — | केवल इस दिनांक/समय (UTC) के बाद संशोधित फ़ाइलें शामिल करें |
| `-ModifiedBefore` | DateTime | — | — | Named | — | केवल इस तिथि/समय (UTC) से पहले संशोधित फ़ाइलें शामिल करें |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | छोड़ने के लिए फ़ाइल विशेषताएँ (जैसे, सिस्टम, छिपी हुई या कोई नहीं) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | इन वाइल्डकार्ड पैटर्न से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें |
| `-AllMatches` | SwitchParameter | — | — | Named | — | पाठ की प्रत्येक पंक्ति में एक से अधिक मिलान खोजें *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | मिलान केस-सेंसिटिव हैं *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | मिलानों के आसपास संदर्भ पंक्तियों को कैप्चर करता है *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | पैटर्न मिलान के लिए उपयोग किए जाने वाले संस्कृति का नाम *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | लक्ष्य फ़ाइलों के लिए एन्कोडिंग निर्दिष्ट करता है *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | प्रत्येक फ़ाइल के लिए केवल पहला मिलान लौटाया जाता है *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | आउटपुट में मिलान किए गए स्ट्रिंग्स का हाइलाइटिंग अक्षम करता है *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch पैरामीटर उस टेक्स्ट को ढूंढता है जो पैटर्न से मेल नहीं खाता *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | केवल मिलान वाले स्ट्रिंग आउटपुट करें, MatchInfo ऑब्जेक्ट नहीं *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | रेगेक्स के बजाय साधारण स्ट्रिंग मिलान का उपयोग करें *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | यह समान फ़ाइल नाम और सामग्री से शुरू होने वाली विभिन्न आकारों की फ़ाइलों को लौटाएगा, यह टूटी हुई डाउनलोड/कॉपी संचालन का पता लगाता है |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | फ़ाइलों की बाइट लंबाई की त्वरित तुलना करें, तेज़ इंडेक्सिंग और डुप्लिकेट की खोज के लिए उपयोगी, यह फ़ाइलों की सामग्री की तुलना नहीं करेगा |

## Examples

### Find duplicate text files in the Documents folder based on exact content: Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

```powershell
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial
```

### Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set: (Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

```powershell
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose
```

## Parameter Details

### `-Name <String[]>`

> खोजने के लिए फ़ाइल का नाम या पैटर्न। डिफ़ॉल्ट '*' है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> पाइपलाइन इनपुट से खोजने के लिए फ़ाइल नाम या पैटर्न। डिफ़ॉल्ट '*' है

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
| **Position?** | 2 |
| **Default value** | `@('.*')` |
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
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> केवल चयनित श्रेणियों से संबंधित फ़ाइलें आउटपुट करें

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
### `-Directory`

> केवल निर्देशिकाएँ खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `@()` |
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
| **Default value** | `@()` |
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
| **Default value** | `@()` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> सेट होने पर, वैकल्पिक डेटा स्ट्रीम (ADS) के भीतर सामग्री खोज करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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

> पेड़ में ऊपर की ओर निरंतर खोज के लिए अधिकतम रिकर्सन गहराई। 0 का अर्थ है अक्षम।

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

> केवल इस दिनांक/समय (UTC) के बाद संशोधित फ़ाइलें शामिल करें

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

> केवल इस तिथि/समय (UTC) से पहले संशोधित फ़ाइलें शामिल करें

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

> छोड़ने के लिए फ़ाइल विशेषताएँ (जैसे, सिस्टम, छिपी हुई या कोई नहीं)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> इन वाइल्डकार्ड पैटर्न से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> पाठ की प्रत्येक पंक्ति में एक से अधिक मिलान खोजें

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
### `-CaseSensitive`

> मिलान केस-सेंसिटिव हैं

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
### `-Context <Int32[]>`

> मिलानों के आसपास संदर्भ पंक्तियों को कैप्चर करता है

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

> पैटर्न मिलान के लिए उपयोग किए जाने वाले संस्कृति का नाम

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

> लक्ष्य फ़ाइलों के लिए एन्कोडिंग निर्दिष्ट करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> प्रत्येक फ़ाइल के लिए केवल पहला मिलान लौटाया जाता है

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
### `-NoEmphasis`

> आउटपुट में मिलान किए गए स्ट्रिंग्स का हाइलाइटिंग अक्षम करता है

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
### `-NotMatch`

> NotMatch पैरामीटर उस टेक्स्ट को ढूंढता है जो पैटर्न से मेल नहीं खाता

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
### `-Raw`

> केवल मिलान वाले स्ट्रिंग आउटपुट करें, MatchInfo ऑब्जेक्ट नहीं

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
### `-SimpleMatch`

> रेगेक्स के बजाय साधारण स्ट्रिंग मिलान का उपयोग करें

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
### `-ComparePartial`

> यह समान फ़ाइल नाम और सामग्री से शुरू होने वाली विभिन्न आकारों की फ़ाइलों को लौटाएगा, यह टूटी हुई डाउनलोड/कॉपी संचालन का पता लगाता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompareByteLength <Int32>`

> फ़ाइलों की बाइट लंबाई की त्वरित तुलना करें, तेज़ इंडेक्सिंग और डुप्लिकेट की खोज के लिए उपयोगी, यह फ़ाइलों की सामग्री की तुलना नहीं करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `65536` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Expand-Path.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-Item.md)
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
