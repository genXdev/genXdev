# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> يوفر غلاف PowerShell لأداة النسخ المتين من Microsoft (RoboCopy).

## Description

غلاف شامل لأداة سطر الأوامر RoboCopy يوفر إمكانات قوية لنسخ الملفات والأدلة. تعرض هذه الوظيفة مجموعة الميزات الواسعة لـ RoboCopy من خلال معلمات صديقة لـ PowerShell مع الحفاظ على معظم وظائفها القوية.

الميزات الرئيسية:
- مزامنة الأدلة مع خيارات النسخ المتطابق
- دعم مسارات طويلة جدًا (أكثر من 256 حرفًا)
- الحفاظ على إعدادات الأمان
- معالجة متقدمة لسمات الملفات
- إدارة الروابط الرمزية ونقاط الوصل
- وضع المراقبة للمزامنة المستمرة
- تحسين الأداء للملفات الكبيرة
- دعم ضغط الشبكة
- وضع الاسترداد للأجهزة الفاشلة

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | الدليل، مسار الملف، أو الدليل+قناع البحث |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | دليل الوجهة لوضع الملفات والأدلة المنسوخة فيه.
إذا لم يكن هذا الدليل موجودًا بعد، فسيتم إنشاء جميع الأدلة المفقودة.
القيمة الافتراضية = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | قناع بحث اختياري لاختيار الملفات التي تحتاج إلى نسخ.
            القيمة الافتراضية = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | يقوم بمزامنة محتوى الدلائل المحددة، وسيقوم أيضًا بحذف أي ملفات ودلائل في الوجهة غير موجودة في المصدر |
| `-Move` | SwitchParameter | — | — | Named | — | سينقل بدلاً من نسخ جميع الملفات من المصدر إلى الوجهة |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | سيقوم أيضًا بنسخ معلومات الملكية وواصفات الأمان والتدقيق للملفات والأدلة |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | ينسخ الملفات فقط من المصدر ويتجاوز المجلدات الفرعية (بدون تكرار) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | لا ينسخ الدلائل إذا كانت فارغة *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | إنشاء شجرة الدليل فقط *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | إنشاء شجرة دليل وملفات ذات طول صفري فقط |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | لا تنسخ الروابط الرمزية أو الوصلات أو المحتوى الذي تشير إليه |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | لا تنسخ روابط الملفات الرمزية ولكن اتبع تقاطعات الدليل |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | بدلاً من نسخ المحتوى الذي تشير إليه الارتباطات الرمزية، قم بنسخ الارتباطات نفسها |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | لا تنسخ تقاطعات الدليل (الارتباط الرمزي للمجلد) أو المحتوى الذي تشير إليه *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | بدلاً من نسخ المحتوى الذي تشير إليه نقاط الاتصال (Junctions)، قم بنسخ نقاط الاتصال نفسها *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | سوف ينسخ جميع الملفات حتى لو كانت أقدم من الموجودة في الوجهة |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | ينسخ الملفات التي تحتوي على سمة الأرشيف فقط |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | بالإضافة إلى نسخ الملفات التي تحتوي فقط على سمة الأرشفة، سيعيد تعيين هذه السمة على المصدر |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | استبعاد أي ملفات تطابق أيًا من هذه الأسماء/المسارات/أنماط البدل 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | استبعاد أي دليل يطابق أيًا من هذه الأسماء/المسارات/أنماط أحرف البدل *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | انسخ الملفات التي تحتوي على جميع هذه السمات المعينة فقط [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | استبعاد الملفات التي تحتوي على أي من هذه السمات [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | سيقوم بتعيين السمات المحددة للملفات المنسوخة [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | سيتم إزالة السمات المعطاة من الملفات المنسوخة [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | انسخ فقط المستويات العليا n من شجرة الدليل المصدر *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | تخطي الملفات التي يقل حجمها عن n بايت |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | تجاوز الملفات التي يزيد حجمها عن n بايت |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | تخطي الملفات التي لا يقل عمرها عن: n يومًا أو التي تم إنشاؤها قبل تاريخ n (إذا كان n < 1900 فإن n = n أيام، وإلا فإن n = تاريخ YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | تخطي الملفات الأقدم من: n أيام أو المنشأة بعد تاريخ n (إذا كانت n < 1900 فإن n = n أيام، وإلا فإن n = تاريخ بصيغة YYYYMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | تجاوز الملفات التي تم الوصول إليها خلال: n يومًا الماضية أو قبل تاريخ n (إذا كان n < 1900 فإن n = n يومًا، وإلا فإن n = تاريخ بصيغة YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | تخطي الملفات التي لم يتم الوصول إليها منذ: n أيام أو بعد تاريخ n (إذا كانت n < 1900 فإن n = n أيام، وإلا فإن n = تاريخ بصيغة YYYYMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | سيتم التوقف مؤقتًا وإعادة المحاولة عند حدوث أخطاء الإدخال/الإخراج أثناء النسخ |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | سيظل نشطًا بعد النسخ، وسيقوم بنسخ التغييرات الإضافية بعد حد افتراضي قدره 10 دقائق |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | أعد التشغيل بعد ن دقائق في حال حدوث تغيير |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | قم بتشغيل مرة أخرى عند رؤية أكثر من n تغييرًا |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | ساعات التشغيل - الأوقات التي يمكن بدء النسخ الجديدة فيها، وقت البدء، النطاق 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | ساعات التشغيل - الأوقات التي يمكن فيها بدء نسخ جديدة، وقت الانتهاء، النطاق 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | إذا تم تحديد ذلك، سيتم أيضًا تسجيل السجل في الملف المحدد |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | لا تقم بإلحاق البيانات بملف السجل المحدد، بل قم بالكتابة فوقه بدلاً من ذلك |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | قم بتضمين جميع أسماء الدلائل الممسوحة ضوئيًا في الإخراج |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | تضمين جميع أسماء الملفات الممسوحة ضوئيًا في الإخراج، حتى التي تم تخطيها |
| `-Unicode` | SwitchParameter | — | — | Named | — | إظهار الحالة كـ UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | تمكين التحسين لنسخ الملفات الكبيرة |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | تحسين الأداء عن طريق النسخ متعدد الخيوط |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | استخدم الضغط عند نسخ الملفات بين الخوادم لتوفير عرض النطاق الترددي والوقت |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | عند التعيين، سيتم استخدام مطابقة الطابع الزمني بالمللي ثانية بدلاً من التسامح الافتراضي البالغ ثانيتين |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | يتجاوز أو يزيل أو يضيف أي معلمة robocopy محددة.

الاستخدام:

إضافة أو استبدال معلمة:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

إزالة معلمة:

    -Override -/Switch

تجاوزات متعددة:

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

> الدليل، مسار الملف، أو الدليل+قناع البحث

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

> دليل الوجهة لوضع الملفات والأدلة المنسوخة فيه.
إذا لم يكن هذا الدليل موجودًا بعد، فسيتم إنشاء جميع الأدلة المفقودة.
القيمة الافتراضية = ".\"

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

> قناع بحث اختياري لاختيار الملفات التي تحتاج إلى نسخ.
            القيمة الافتراضية = '*'

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

> يقوم بمزامنة محتوى الدلائل المحددة، وسيقوم أيضًا بحذف أي ملفات ودلائل في الوجهة غير موجودة في المصدر

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

> سينقل بدلاً من نسخ جميع الملفات من المصدر إلى الوجهة

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

> سيقوم أيضًا بنسخ معلومات الملكية وواصفات الأمان والتدقيق للملفات والأدلة

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

> ينسخ الملفات فقط من المصدر ويتجاوز المجلدات الفرعية (بدون تكرار)

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

> لا ينسخ الدلائل إذا كانت فارغة

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

> إنشاء شجرة الدليل فقط

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

> إنشاء شجرة دليل وملفات ذات طول صفري فقط

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

> لا تنسخ الروابط الرمزية أو الوصلات أو المحتوى الذي تشير إليه

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

> لا تنسخ روابط الملفات الرمزية ولكن اتبع تقاطعات الدليل

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

> بدلاً من نسخ المحتوى الذي تشير إليه الارتباطات الرمزية، قم بنسخ الارتباطات نفسها

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

> لا تنسخ تقاطعات الدليل (الارتباط الرمزي للمجلد) أو المحتوى الذي تشير إليه

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

> بدلاً من نسخ المحتوى الذي تشير إليه نقاط الاتصال (Junctions)، قم بنسخ نقاط الاتصال نفسها

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

> سوف ينسخ جميع الملفات حتى لو كانت أقدم من الموجودة في الوجهة

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

> ينسخ الملفات التي تحتوي على سمة الأرشيف فقط

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

> بالإضافة إلى نسخ الملفات التي تحتوي فقط على سمة الأرشفة، سيعيد تعيين هذه السمة على المصدر

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

> استبعاد أي ملفات تطابق أيًا من هذه الأسماء/المسارات/أنماط البدل

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

> استبعاد أي دليل يطابق أيًا من هذه الأسماء/المسارات/أنماط أحرف البدل

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

> انسخ الملفات التي تحتوي على جميع هذه السمات المعينة فقط [RASHCNETO]

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

> استبعاد الملفات التي تحتوي على أي من هذه السمات [RASHCNETO]

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

> سيقوم بتعيين السمات المحددة للملفات المنسوخة [RASHCNETO]

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

> سيتم إزالة السمات المعطاة من الملفات المنسوخة [RASHCNETO]

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

> انسخ فقط المستويات العليا n من شجرة الدليل المصدر

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

> تخطي الملفات التي يقل حجمها عن n بايت

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

> تجاوز الملفات التي يزيد حجمها عن n بايت

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

> تخطي الملفات التي لا يقل عمرها عن: n يومًا أو التي تم إنشاؤها قبل تاريخ n (إذا كان n < 1900 فإن n = n أيام، وإلا فإن n = تاريخ YYYYMMDD)

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

> تخطي الملفات الأقدم من: n أيام أو المنشأة بعد تاريخ n (إذا كانت n < 1900 فإن n = n أيام، وإلا فإن n = تاريخ بصيغة YYYYMMDD)

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

> تجاوز الملفات التي تم الوصول إليها خلال: n يومًا الماضية أو قبل تاريخ n (إذا كان n < 1900 فإن n = n يومًا، وإلا فإن n = تاريخ بصيغة YYYYMMDD)

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

> تخطي الملفات التي لم يتم الوصول إليها منذ: n أيام أو بعد تاريخ n (إذا كانت n < 1900 فإن n = n أيام، وإلا فإن n = تاريخ بصيغة YYYYMMDD)

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

> سيتم التوقف مؤقتًا وإعادة المحاولة عند حدوث أخطاء الإدخال/الإخراج أثناء النسخ

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

> سيظل نشطًا بعد النسخ، وسيقوم بنسخ التغييرات الإضافية بعد حد افتراضي قدره 10 دقائق

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

> أعد التشغيل بعد ن دقائق في حال حدوث تغيير

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

> قم بتشغيل مرة أخرى عند رؤية أكثر من n تغييرًا

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

> ساعات التشغيل - الأوقات التي يمكن بدء النسخ الجديدة فيها، وقت البدء، النطاق 0000:2359

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

> ساعات التشغيل - الأوقات التي يمكن فيها بدء نسخ جديدة، وقت الانتهاء، النطاق 0000:2359

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

> إذا تم تحديد ذلك، سيتم أيضًا تسجيل السجل في الملف المحدد

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

> لا تقم بإلحاق البيانات بملف السجل المحدد، بل قم بالكتابة فوقه بدلاً من ذلك

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

> قم بتضمين جميع أسماء الدلائل الممسوحة ضوئيًا في الإخراج

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

> تضمين جميع أسماء الملفات الممسوحة ضوئيًا في الإخراج، حتى التي تم تخطيها

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

> إظهار الحالة كـ UNICODE

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

> تمكين التحسين لنسخ الملفات الكبيرة

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

> تحسين الأداء عن طريق النسخ متعدد الخيوط

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

> استخدم الضغط عند نسخ الملفات بين الخوادم لتوفير عرض النطاق الترددي والوقت

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

> عند التعيين، سيتم استخدام مطابقة الطابع الزمني بالمللي ثانية بدلاً من التسامح الافتراضي البالغ ثانيتين

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

> يتجاوز أو يزيل أو يضيف أي معلمة robocopy محددة.

الاستخدام:

إضافة أو استبدال معلمة:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

إزالة معلمة:

    -Override -/Switch

تجاوزات متعددة:

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-TextFileAtomic.md)
