# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> पहली मिलने वाली फ़ाइल या फ़ोल्डर ढूँढता है और उस पर स्थान सेट करता है।

## Description

यह cmdlet आपको खोज वाक्यांशों का उपयोग करके निर्देशिकाओं को जल्दी से बदलने में मदद करेगा जो पहले मैच करने वाले फ़ोल्डर या फ़ाइल (वैकल्पिक) को ढूंढते हैं और उसमें निर्देशिका बदल देते हैं। सामग्री, फ़ाइल गुण, आकार, संशोधन तिथियों और कई अन्य मानदंडों द्वारा उन्नत फ़िल्टरिंग का समर्थन करता है।

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | खोजने के लिए फ़ाइल का नाम या पैटर्न। 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | पाइपलाइन इनपुट से खोजने के लिए फ़ाइल नाम या पैटर्न। डिफ़ॉल्ट '*' है *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | फ़ाइल सामग्री के अंतर्गत खोज करने के लिए नियमित अभिव्यक्ति पैटर्न *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | केवल चयनित श्रेणियों से संबंधित फ़ाइलें आउटपुट करें |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | निर्देशिका कार्यों के लिए अधिकतम समांतरता |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | वैकल्पिक: सेकंड में कैंसलेशन टाइमआउट |
| `-AllDrives` | SwitchParameter | — | — | Named | — | सभी उपलब्ध ड्राइव में खोजें |
| `-File` | SwitchParameter | — | — | Named | — | केवल फ़ाइल नामों की खोज करें और पहली मिली फ़ाइल के फ़ोल्डर में बदलें |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | फ़ाइलनाम मिलान शामिल करें और पहली मिली फ़ाइल के फ़ोल्डर में बदलें |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | वैकल्पिक डेटा स्ट्रीम को खोज परिणामों में शामिल करें |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | उपनिर्देशिकाओं में पुनरावृत्ति न करें |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | निर्देशिका ट्रैवर्सल के दौरान सिमलिंक और जंक्शन का अनुसरण करें |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | ऑप्टिकल डिस्क ड्राइव शामिल करें |
| `-SearchDrives` | String[] | — | — | Named | `@()` | वैकल्पिक: विशिष्ट ड्राइव खोजें |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | वैकल्पिक: विशिष्ट ड्राइव खोजें |
| `-Root` | String[] | — | — | Named | `@()` | वैकल्पिक: प्रदान किए गए नामों के साथ संयुक्त विशिष्ट आधार फ़ोल्डर खोजें |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | फ़ाइल सामग्री खोजते समय गैर-पाठ फ़ाइलों (बाइनरी, छवियां, आदि) को शामिल करें |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | फ़ाइलों और निर्देशिकाओं के लिए केस-संवेदनशीलता प्राप्त या सेट करता है |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | जब सेट किया जाता है, तो वैकल्पिक डेटा स्ट्रीम (ADS) के अंदर सामग्री खोज करता है। जब सेट नहीं किया जाता है, तो उनकी सामग्री खोजे बिना ADS फ़ाइल जानकारी आउटपुट करता है। |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | निर्देशिका ट्रैवर्सल के लिए अधिकतम रिकर्शन गहराई। 0 का अर्थ असीमित। |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए फ़ाइल का अधिकतम आकार बाइट्स में। 0 का अर्थ असीमित है। |
| `-MinFileSize` | Int64 | — | — | Named | `0` | परिणामों में शामिल करने के लिए न्यूनतम फ़ाइल आकार बाइट्स में। 0 का अर्थ है कोई न्यूनतम नहीं। |
| `-ModifiedAfter` | DateTime | — | — | Named | — | इस तिथि/समय (UTC) के बाद केवल संशोधित फ़ाइलें शामिल करें। |
| `-ModifiedBefore` | DateTime | — | — | Named | — | केवल इस दिनांक/समय (UTC) से पहले संशोधित फ़ाइलें शामिल करें। |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | छोड़ने के लिए फ़ाइल विशेषताएँ (जैसे, सिस्टम, हिडन या कोई नहीं)। |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | इन वाइल्डकार्ड पैटर्न से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें (जैसे, *.tmp, *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | इंगित करता है कि cmdlet मिलान केस-सेंसिटिव हैं। डिफ़ॉल्ट रूप से, मिलान केस-सेंसिटिव नहीं होते हैं। *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | एक संस्कृति नाम निर्दिष्ट करता है जो निर्दिष्ट पैटर्न से मेल खाता है। Culture पैरामीटर का उपयोग SimpleMatch पैरामीटर के साथ किया जाना चाहिए। डिफ़ॉल्ट व्यवहार वर्तमान PowerShell रनस्पेस (सत्र) की संस्कृति का उपयोग करता है। *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | लक्ष्य फ़ाइल के लिए एन्कोडिंग के प्रकार को निर्दिष्ट करता है। डिफ़ॉल्ट मान utf8NoBOM है। *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | NotMatch पैरामीटर उस पाठ को ढूंढता है जो निर्दिष्ट पैटर्न से मेल नहीं खाता। *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | इंगित करता है कि cmdlet एक नियमित अभिव्यक्ति मिलान के बजाय एक सरल मिलान का उपयोग करता है। एक सरल मिलान में, Select-String पैटर्न पैरामीटर में टेक्स्ट के लिए इनपुट खोजता है। यह पैटर्न पैरामीटर के मान को एक नियमित अभिव्यक्ति कथन के रूप में व्याख्या नहीं करता है। *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | स्थान सेट करने के लिए Set-Location के बजाय Push-Location का उपयोग करें और स्थान को स्थान स्टैक पर धकेलें |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | जब सेट किया जाता है, तो केवल सटीक नाम मिलान पर विचार किया जाता है। डिफ़ॉल्ट रूप से, वाइल्डकार्ड मिलान का उपयोग किया जाता है जब तक कि नाम में वाइल्डकार्ड वर्ण न हों। |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

पहले निर्देशिका में परिवर्तन जो पैटर्न '*.Console' से मेल खाता है।

### lcd *.Console

```powershell
lcd *.Console
```

उपनाम का उपयोग करके पैटर्न '*.Console' से मेल खाने वाली पहली निर्देशिका में परिवर्तन।

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

पहली PowerShell फ़ाइल वाले निर्देशिका में परिवर्तन जिसमें 'function' शब्द शामिल है।

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

उस फ़ाइल वाली निर्देशिका में परिवर्तन जिसके नाम में 'test' है तथा जो पहली ऐसी फ़ाइल है।

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

## Parameter Details

### `-Name <String>`

> खोजने के लिए फ़ाइल का नाम या पैटर्न।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> पाइपलाइन इनपुट से खोजने के लिए फ़ाइल नाम या पैटर्न। डिफ़ॉल्ट '*' है

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> फ़ाइल सामग्री के अंतर्गत खोज करने के लिए नियमित अभिव्यक्ति पैटर्न

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

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
### `-File`

> केवल फ़ाइल नामों की खोज करें और पहली मिली फ़ाइल के फ़ोल्डर में बदलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> फ़ाइलनाम मिलान शामिल करें और पहली मिली फ़ाइल के फ़ोल्डर में बदलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
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

> वैकल्पिक: प्रदान किए गए नामों के साथ संयुक्त विशिष्ट आधार फ़ोल्डर खोजें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> फ़ाइल सामग्री खोजते समय गैर-पाठ फ़ाइलों (बाइनरी, छवियां, आदि) को शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> फ़ाइलों और निर्देशिकाओं के लिए केस-संवेदनशीलता प्राप्त या सेट करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> जब सेट किया जाता है, तो वैकल्पिक डेटा स्ट्रीम (ADS) के अंदर सामग्री खोज करता है। जब सेट नहीं किया जाता है, तो उनकी सामग्री खोजे बिना ADS फ़ाइल जानकारी आउटपुट करता है।

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
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> इन वाइल्डकार्ड पैटर्न से मेल खाने वाली फ़ाइलों या निर्देशिकाओं को बाहर करें (जैसे, *.tmp, *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> इंगित करता है कि cmdlet मिलान केस-सेंसिटिव हैं। डिफ़ॉल्ट रूप से, मिलान केस-सेंसिटिव नहीं होते हैं।

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

> लक्ष्य फ़ाइल के लिए एन्कोडिंग के प्रकार को निर्दिष्ट करता है। डिफ़ॉल्ट मान utf8NoBOM है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> स्थान सेट करने के लिए Set-Location के बजाय Push-Location का उपयोग करें और स्थान को स्थान स्टैक पर धकेलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> जब सेट किया जाता है, तो केवल सटीक नाम मिलान पर विचार किया जाता है। डिफ़ॉल्ट रूप से, वाइल्डकार्ड मिलान का उपयोग किया जाता है जब तक कि नाम में वाइल्डकार्ड वर्ण न हों।

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-DuplicateFiles.md)
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
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-TextFileAtomic.md)
