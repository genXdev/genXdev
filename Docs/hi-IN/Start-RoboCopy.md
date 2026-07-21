# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Microsoft की Robust Copy (RoboCopy) उपयोगिता के लिए एक PowerShell आवरण प्रदान करता है।

## Description

RoboCopy कमांड-लाइन उपयोगिता के लिए एक व्यापक रैपर जो मजबूत फ़ाइल और निर्देशिका प्रतिलिपि क्षमताएँ प्रदान करता है। यह फ़ंक्शन PowerShell-अनुकूल पैरामीटर्स के माध्यम से RoboCopy की विस्तृत सुविधा सेट को उजागर करता है, साथ ही इसकी अधिकांश शक्तिशाली कार्यक्षमता को बनाए रखता है।

मुख्य विशेषताएँ:
- मिरर विकल्पों के साथ निर्देशिका सिंक्रोनाइज़ेशन
- अत्यधिक लंबे पथनामों (>256 अक्षर) के लिए समर्थन
- सुरक्षा सेटिंग्स का संरक्षण
- उन्नत फ़ाइल विशेषता प्रबंधन
- सिंबॉलिक लिंक और जंक्शन पॉइंट प्रबंधन
- सतत सिंक्रोनाइज़ेशन के लिए मॉनिटर मोड
- बड़ी फ़ाइलों के लिए प्रदर्शन अनुकूलन
- नेटवर्क संपीड़न समर्थन
- विफल उपकरणों के लिए पुनर्प्राप्ति मोड

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | निर्देशिका, फ़ाइल पथ, या निर्देशिका+खोज मास्क |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | वह गंतव्य निर्देशिका जहाँ कॉपी की गई फ़ाइलें और निर्देशिकाएँ रखी जाएँगी।
            यदि यह निर्देशिका अभी तक मौजूद नहीं है, तो सभी लुप्त निर्देशिकाएँ बनाई जाएँगी।
            डिफ़ॉल्ट मान = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | कॉपी किए जाने वाली फ़ाइलों के चयन के लिए वैकल्पिक खोजमास्क।
            डिफ़ॉल्ट मान = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | निर्दिष्ट निर्देशिकाओं की सामग्री को सिंक्रोनाइज़ करता है, गंतव्य में उन फ़ाइलों और निर्देशिकाओं को भी हटा देगा जो स्रोत में मौजूद नहीं हैं |
| `-Move` | SwitchParameter | — | — | Named | — | स्रोत से गंतव्य तक सभी फ़ाइलों की प्रतिलिपि बनाने के बजाय स्थानांतरित करेगा |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | फ़ाइलों और निर्देशिकाओं के स्वामित्व, सुरक्षा विवरणक और ऑडिटिंग जानकारी की प्रतिलिपि भी बनाएगा |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | केवल स्रोत से फ़ाइलों की प्रतिलिपि बनाता है और उप-निर्देशिकाओं को छोड़ देता है (कोई पुनरावृत्ति नहीं) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | यदि वे खाली होंगे तो निर्देशिकाओं की प्रतिलिपि नहीं बनाता *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | केवल निर्देशिका वृक्ष बनाएँ *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | केवल निर्देशिका वृक्ष और शून्य-लंबाई वाली फ़ाइलें बनाएं |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | प्रतीकात्मक लिंक, जंक्शन या उनके द्वारा इंगित सामग्री की प्रतिलिपि न बनाएं |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | फ़ाइल सिम्बोलिक लिंक कॉपी न करें लेकिन निर्देशिका जंक्शन का अनुसरण करें |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | प्रतीकात्मक लिंक द्वारा इंगित की गई सामग्री को कॉपी करने के बजाय, लिंक को स्वयं कॉपी करें |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | निर्देशिका जंक्शन (फ़ोल्डर के लिए प्रतीकात्मक लिंक) या उनके द्वारा इंगित सामग्री को कॉपी न करें *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | जंक्शन जिस सामग्री की ओर इशारा करते हैं, उसे कॉपी करने के बजाय, जंक्शनों को स्वयं कॉपी करें *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | सभी फ़ाइलों को कॉपी करेगा भले ही वे गंतव्य में मौजूद फ़ाइलों से पुरानी हों |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | केवल उन फ़ाइलों को कॉपी करता है जिनमें आर्काइव गुण सेट है |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | केवल उन फ़ाइलों की प्रतिलिपि बनाने के अलावा जिनमें आर्काइव विशेषता सेट है, फिर स्रोत पर इस विशेषता को रीसेट करेगा |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | उन फ़ाइलों को बाहर करें जो इनमें से किसी भी नाम/पथ/वाइल्डकार्ड से मेल खाती हैं 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | उन किसी भी निर्देशिका को बाहर करें जो इन नामों/पथों/वाइल्डकार्ड से मेल खाती है *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | केवल उन फ़ाइलों की प्रतिलिपि बनाएँ जिनमें ये सभी विशेषताएँ सेट हैं [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | उन फ़ाइलों को बाहर करें जिनमें इनमें से कोई भी विशेषता सेट है [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | कॉपी की गई फ़ाइलों पर दिए गए गुण सेट करेगा [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | कॉपी की गई फ़ाइलों से दिए गए गुण हटा देंगे [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | स्रोत निर्देशिका ट्री के केवल शीर्ष n स्तरों की प्रतिलिपि बनाएँ *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | वे फ़ाइलें छोड़ें जो आकार में कम से कम n बाइट्स नहीं हैं |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | उन फाइलों को छोड़ें जो n बाइट्स से बड़ी हैं |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | उन फ़ाइलों को छोड़ें जो कम से कम: n दिन पुरानी नहीं हैं या n तारीख से पहले बनाई गई हैं (यदि n < 1900 है, तो n = n दिन, अन्यथा n = YYYYMMDD तारीख) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | उन फ़ाइलों को छोड़ें जो n दिनों से पुरानी हैं या n तिथि के बाद बनाई गई हैं (यदि n < 1900 है, तो n = n दिन, अन्यथा n = YYYYMMDD तिथि) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | उन फ़ाइलों को छोड़ें जो अंतिम: n दिनों में या n तिथि से पहले एक्सेस की गई हैं (यदि n < 1900 है तो n = n दिन, अन्यथा n = YYYYMMDD तिथि) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | उन फ़ाइलों को छोड़ें जिन तक n दिनों में या n तारीख के बाद (यदि n < 1900 है तो n = n दिन, अन्यथा n = YYYYMMDD तारीख) पहुंच नहीं हुई है |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | कॉपी करने के दौरान I/O त्रुटियाँ होने पर शीघ्र रुकें और पुनः प्रयास करें |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | कॉपी करने के बाद सक्रिय रहेगा, और 10 मिनट की डिफ़ॉल्ट सीमा के बाद अतिरिक्त परिवर्तन कॉपी करेगा |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | यदि बदला हो तो n मिनट में पुनः चलाएँ |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | जब n से अधिक परिवर्तन देखे जाएं तो फिर से चलाएं |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | चलने के घंटे - वे समय जब नई प्रतियां शुरू की जा सकती हैं, प्रारंभ-समय, सीमा 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | चलने के घंटे - वे समय जब नई प्रतियां शुरू की जा सकती हैं, समाप्ति समय, सीमा 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | यदि निर्दिष्ट किया गया है, तो लॉगिंग निर्दिष्ट फ़ाइल में भी की जाएगी |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | निर्दिष्ट लॉगफ़ाइल में जोड़ने के बजाय, उसे अधिलेखित करें |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | आउटपुट में सभी स्कैन की गई निर्देशिका नाम शामिल करें |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | आउटपुट में सभी स्कैन की गई फ़ाइलों के नाम शामिल करें, यहां तक कि छोड़ी गई फ़ाइलों के नाम भी |
| `-Unicode` | SwitchParameter | — | — | Named | — | आउटपुट स्थिति को UNICODE के रूप में प्रदर्शित करें |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | बड़ी फ़ाइलों की प्रतिलिपि बनाने के लिए अनुकूलन सक्षम करता है |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | मल्टीथ्रेडेड कॉपी करके प्रदर्शन को अनुकूलित करें |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | यदि संभव हो तो सर्वरों के बीच फ़ाइलों की प्रतिलिपि बनाते समय बैंडविड्थ और समय बचाने के लिए संपीड़न का उपयोग करें |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | सेट होने पर, डिफ़ॉल्ट 2-सेकंड सहनशीलता के बजाय मिलीसेकंड टाइमस्टैम्प मिलान का उपयोग करेगा |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | किसी भी निर्दिष्ट robocopy पैरामीटर को ओवरराइड, हटाएँ या जोड़ें।

उपयोग:

पैरामीटर जोड़ें या बदलें:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

पैरामीटर हटाएँ:

    -Override -/Switch

एकाधिक ओवरराइड:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> निर्देशिका, फ़ाइल पथ, या निर्देशिका+खोज मास्क

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> वह गंतव्य निर्देशिका जहाँ कॉपी की गई फ़ाइलें और निर्देशिकाएँ रखी जाएँगी।
            यदि यह निर्देशिका अभी तक मौजूद नहीं है, तो सभी लुप्त निर्देशिकाएँ बनाई जाएँगी।
            डिफ़ॉल्ट मान = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> कॉपी किए जाने वाली फ़ाइलों के चयन के लिए वैकल्पिक खोजमास्क।
            डिफ़ॉल्ट मान = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> निर्दिष्ट निर्देशिकाओं की सामग्री को सिंक्रोनाइज़ करता है, गंतव्य में उन फ़ाइलों और निर्देशिकाओं को भी हटा देगा जो स्रोत में मौजूद नहीं हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> स्रोत से गंतव्य तक सभी फ़ाइलों की प्रतिलिपि बनाने के बजाय स्थानांतरित करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> फ़ाइलों और निर्देशिकाओं के स्वामित्व, सुरक्षा विवरणक और ऑडिटिंग जानकारी की प्रतिलिपि भी बनाएगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> केवल स्रोत से फ़ाइलों की प्रतिलिपि बनाता है और उप-निर्देशिकाओं को छोड़ देता है (कोई पुनरावृत्ति नहीं)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> यदि वे खाली होंगे तो निर्देशिकाओं की प्रतिलिपि नहीं बनाता

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> केवल निर्देशिका वृक्ष बनाएँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> केवल निर्देशिका वृक्ष और शून्य-लंबाई वाली फ़ाइलें बनाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> प्रतीकात्मक लिंक, जंक्शन या उनके द्वारा इंगित सामग्री की प्रतिलिपि न बनाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> फ़ाइल सिम्बोलिक लिंक कॉपी न करें लेकिन निर्देशिका जंक्शन का अनुसरण करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> प्रतीकात्मक लिंक द्वारा इंगित की गई सामग्री को कॉपी करने के बजाय, लिंक को स्वयं कॉपी करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> निर्देशिका जंक्शन (फ़ोल्डर के लिए प्रतीकात्मक लिंक) या उनके द्वारा इंगित सामग्री को कॉपी न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> जंक्शन जिस सामग्री की ओर इशारा करते हैं, उसे कॉपी करने के बजाय, जंक्शनों को स्वयं कॉपी करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> सभी फ़ाइलों को कॉपी करेगा भले ही वे गंतव्य में मौजूद फ़ाइलों से पुरानी हों

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> केवल उन फ़ाइलों को कॉपी करता है जिनमें आर्काइव गुण सेट है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> केवल उन फ़ाइलों की प्रतिलिपि बनाने के अलावा जिनमें आर्काइव विशेषता सेट है, फिर स्रोत पर इस विशेषता को रीसेट करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> उन फ़ाइलों को बाहर करें जो इनमें से किसी भी नाम/पथ/वाइल्डकार्ड से मेल खाती हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> उन किसी भी निर्देशिका को बाहर करें जो इन नामों/पथों/वाइल्डकार्ड से मेल खाती है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> केवल उन फ़ाइलों की प्रतिलिपि बनाएँ जिनमें ये सभी विशेषताएँ सेट हैं [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> उन फ़ाइलों को बाहर करें जिनमें इनमें से कोई भी विशेषता सेट है [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> कॉपी की गई फ़ाइलों पर दिए गए गुण सेट करेगा [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> कॉपी की गई फ़ाइलों से दिए गए गुण हटा देंगे [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> स्रोत निर्देशिका ट्री के केवल शीर्ष n स्तरों की प्रतिलिपि बनाएँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> वे फ़ाइलें छोड़ें जो आकार में कम से कम n बाइट्स नहीं हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> उन फाइलों को छोड़ें जो n बाइट्स से बड़ी हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> उन फ़ाइलों को छोड़ें जो कम से कम: n दिन पुरानी नहीं हैं या n तारीख से पहले बनाई गई हैं (यदि n < 1900 है, तो n = n दिन, अन्यथा n = YYYYMMDD तारीख)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> उन फ़ाइलों को छोड़ें जो n दिनों से पुरानी हैं या n तिथि के बाद बनाई गई हैं (यदि n < 1900 है, तो n = n दिन, अन्यथा n = YYYYMMDD तिथि)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> उन फ़ाइलों को छोड़ें जो अंतिम: n दिनों में या n तिथि से पहले एक्सेस की गई हैं (यदि n < 1900 है तो n = n दिन, अन्यथा n = YYYYMMDD तिथि)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> उन फ़ाइलों को छोड़ें जिन तक n दिनों में या n तारीख के बाद (यदि n < 1900 है तो n = n दिन, अन्यथा n = YYYYMMDD तारीख) पहुंच नहीं हुई है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> कॉपी करने के दौरान I/O त्रुटियाँ होने पर शीघ्र रुकें और पुनः प्रयास करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> कॉपी करने के बाद सक्रिय रहेगा, और 10 मिनट की डिफ़ॉल्ट सीमा के बाद अतिरिक्त परिवर्तन कॉपी करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> यदि बदला हो तो n मिनट में पुनः चलाएँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> जब n से अधिक परिवर्तन देखे जाएं तो फिर से चलाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> चलने के घंटे - वे समय जब नई प्रतियां शुरू की जा सकती हैं, प्रारंभ-समय, सीमा 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> चलने के घंटे - वे समय जब नई प्रतियां शुरू की जा सकती हैं, समाप्ति समय, सीमा 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> यदि निर्दिष्ट किया गया है, तो लॉगिंग निर्दिष्ट फ़ाइल में भी की जाएगी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> निर्दिष्ट लॉगफ़ाइल में जोड़ने के बजाय, उसे अधिलेखित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> आउटपुट में सभी स्कैन की गई निर्देशिका नाम शामिल करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> आउटपुट में सभी स्कैन की गई फ़ाइलों के नाम शामिल करें, यहां तक कि छोड़ी गई फ़ाइलों के नाम भी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> आउटपुट स्थिति को UNICODE के रूप में प्रदर्शित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> बड़ी फ़ाइलों की प्रतिलिपि बनाने के लिए अनुकूलन सक्षम करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> मल्टीथ्रेडेड कॉपी करके प्रदर्शन को अनुकूलित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> यदि संभव हो तो सर्वरों के बीच फ़ाइलों की प्रतिलिपि बनाते समय बैंडविड्थ और समय बचाने के लिए संपीड़न का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> सेट होने पर, डिफ़ॉल्ट 2-सेकंड सहनशीलता के बजाय मिलीसेकंड टाइमस्टैम्प मिलान का उपयोग करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> किसी भी निर्दिष्ट robocopy पैरामीटर को ओवरराइड, हटाएँ या जोड़ें।

उपयोग:

पैरामीटर जोड़ें या बदलें:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

पैरामीटर हटाएँ:

    -Override -/Switch

एकाधिक ओवरराइड:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-TextFileAtomic.md)
