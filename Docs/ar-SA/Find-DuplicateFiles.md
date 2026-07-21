# Find-DuplicateFiles

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fdf`

## Synopsis

> البحث عن الملفات المكررة عبر أدلة متعددة بناءً على معايير قابلة للتكوين.

## Description

يبحث بشكل متكرر في الدلائل المحددة عن الملفات المكررة. تعتبر الملفات مكررة إذا كان المحتوى متطابقًا تمامًا أو يبدأ بنفس المحتوى (للمقارنة الجزئية باستخدام المفتاح -ComparePartial). تستخدم cmdlet تجزئة سريعة للبايتات الأولية من الملف لتجميع فعال قبل إجراء مقارنات كاملة للمحتوى. يمكن تكوين حجم هذه التجزئة السريعة باستخدام المعامل -CompareByteLength، مما يسمح بتحقيق توازن بين الأداء والدقة في اكتشاف التكرارات، فقط الملفات التي يبلغ طولها الأدنى قيمة CompareByteLength هذه سيتم النظر فيها لاكتشاف التكرارات، وسيتم تجميع الملفات الأصغر بناءً على اسم الملف فقط.

## Syntax

```powershell
Find-DuplicateFiles [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-CompareByteLength <Int32>] [-ComparePartial] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Find-DuplicateFiles [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 1 | `@('*')` | اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | اسم الملف أو النمط المراد البحث عنه من إدخال الأنبوب. الافتراضي هو '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | نمط تعبير منتظم للبحث داخل المحتوى *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | المسار الأساسي لحل المسارات النسبية في المخرجات |
| `-Category` | String[] | — | — | Named | — | فقط إخراج الملفات التي تنتمي إلى الفئات المحددة |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | الحد الأقصى لدرجة التوازي لمهام الدليل |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | اختياري: مهلة الإلغاء بالثواني |
| `-AllDrives` | SwitchParameter | — | — | Named | — | البحث عبر جميع محركات الأقراص المتاحة |
| `-Directory` | SwitchParameter | — | — | Named | — | البحث عن الدلائل فقط |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | تضمين كلاً من الملفات والأدلة |
| `-PassThru` | SwitchParameter | — | — | Named | — | مطابقة العناصر الناتجة ككائنات |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | تضمين تدفقات البيانات البديلة في نتائج البحث |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | لا تقم بالتكرار في المجلدات الفرعية |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | اتبع الروابط الرمزية ونقاط الوصل أثناء التنقل عبر الدليل |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | تضمين محركات الأقراص الضوئية |
| `-SearchDrives` | String[] | — | — | Named | `@()` | اختياري: البحث في محركات أقراص محددة |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | اختياري: البحث في محركات أقراص محددة |
| `-Root` | String[] | — | — | Named | `@()` | اختياري: البحث في أدلة محددة |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | يفرض البحث فقط ضمن الدلائل الجذرية عن طريق إزالة مكونات الدليل من مدخلات الاسم |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | تضمين الملفات غير النصية عند البحث في محتويات الملفات |
| `-NoLinks` | SwitchParameter | — | — | Named | — | يفرض وضعية التشغيل غير المراقب ولن يقوم بإنشاء روابط |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | الحصول على أو تعيين حساسية حالة الأحرف للملفات والمجلدات |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | عند التفعيل، يتم إجراء بحث عن المحتوى داخل تدفقات البيانات البديلة (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار لاجتياز الدليل. القيمة 0 تعني غير محدود. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار للبحث المستمر لأعلى الشجرة. القيمة 0 تعني معطل. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | الحد الأقصى لحجم الملف بالبايتات لتضمينه في النتائج. 0 يعني غير محدود. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | الحد الأدنى لحجم الملف بالبايت لإدراجه في النتائج. يعني 0 عدم وجود حد أدنى. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | قم بتضمين الملفات التي تم تعديلها فقط بعد هذا التاريخ/الوقت (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | تضمين فقط الملفات التي تم تعديلها قبل هذا التاريخ/الوقت (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | سمات الملف التي سيتم تخطيها (على سبيل المثال، النظام، المخفي أو لا شيء) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | استبعاد الملفات أو المجلدات المطابقة لأنماط أحرف البدل هذه |
| `-AllMatches` | SwitchParameter | — | — | Named | — | ابحث عن أكثر من تطابق في كل سطر من النص *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | مطابقة حساسة لحالة الأحرف *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | يلتقط الأسطر المحيطة بالتطابقات *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | اسم الثقافة المستخدم لمطابقة الأنماط *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | يحدد الترميز للملفات الهدف *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | يتم إرجاع المطابقة الأولى فقط لكل ملف *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | تعطيل تمييز السلاسل المطابقة في الإخراج *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | تجد معلمة NotMatch النص الذي لا يتطابق مع النمط *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | قم بإخراج السلاسل المطابقة فقط بدلاً من كائنات MatchInfo *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | استخدم مطابقة السلاسل النصية البسيطة بدلاً من التعبير النمطي *(Parameter set: )* |
| `-ComparePartial` | SwitchParameter | — | — | Named | — | سيعيد الملفات ذات الأحجام المختلفة طالما أنها تبدأ بنفس اسم الملف والمحتوى، وهذا يكتشف عمليات التنزيل/النسخ التالفة |
| `-CompareByteLength` | Int32 | — | — | Named | `65536` | مقارنة سريعة لطول الملفات بالبايت، تُستخدم للفهرسة السريعة والبحث عن الملفات المكررة، لن يقارن هذا محتوى الملفات |

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

> اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*'

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

> اسم الملف أو النمط المراد البحث عنه من إدخال الأنبوب. الافتراضي هو '*'

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

> نمط تعبير منتظم للبحث داخل المحتوى

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

> المسار الأساسي لحل المسارات النسبية في المخرجات

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

> فقط إخراج الملفات التي تنتمي إلى الفئات المحددة

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

> الحد الأقصى لدرجة التوازي لمهام الدليل

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

> اختياري: مهلة الإلغاء بالثواني

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

> البحث عبر جميع محركات الأقراص المتاحة

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

> البحث عن الدلائل فقط

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

> تضمين كلاً من الملفات والأدلة

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

> مطابقة العناصر الناتجة ككائنات

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

> تضمين تدفقات البيانات البديلة في نتائج البحث

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

> لا تقم بالتكرار في المجلدات الفرعية

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

> اتبع الروابط الرمزية ونقاط الوصل أثناء التنقل عبر الدليل

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

> تضمين محركات الأقراص الضوئية

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

> اختياري: البحث في محركات أقراص محددة

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

> اختياري: البحث في محركات أقراص محددة

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

> اختياري: البحث في أدلة محددة

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

> يفرض البحث فقط ضمن الدلائل الجذرية عن طريق إزالة مكونات الدليل من مدخلات الاسم

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

> تضمين الملفات غير النصية عند البحث في محتويات الملفات

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

> يفرض وضعية التشغيل غير المراقب ولن يقوم بإنشاء روابط

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

> الحصول على أو تعيين حساسية حالة الأحرف للملفات والمجلدات

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

> عند التفعيل، يتم إجراء بحث عن المحتوى داخل تدفقات البيانات البديلة (ADS)

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

> الحد الأقصى لعمق التكرار لاجتياز الدليل. القيمة 0 تعني غير محدود.

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

> الحد الأقصى لعمق التكرار للبحث المستمر لأعلى الشجرة. القيمة 0 تعني معطل.

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

> الحد الأقصى لحجم الملف بالبايتات لتضمينه في النتائج. 0 يعني غير محدود.

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

> الحد الأدنى لحجم الملف بالبايت لإدراجه في النتائج. يعني 0 عدم وجود حد أدنى.

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

> قم بتضمين الملفات التي تم تعديلها فقط بعد هذا التاريخ/الوقت (UTC)

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

> تضمين فقط الملفات التي تم تعديلها قبل هذا التاريخ/الوقت (UTC)

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

> سمات الملف التي سيتم تخطيها (على سبيل المثال، النظام، المخفي أو لا شيء)

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

> استبعاد الملفات أو المجلدات المطابقة لأنماط أحرف البدل هذه

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

> ابحث عن أكثر من تطابق في كل سطر من النص

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

> مطابقة حساسة لحالة الأحرف

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

> يلتقط الأسطر المحيطة بالتطابقات

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

> اسم الثقافة المستخدم لمطابقة الأنماط

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

> يحدد الترميز للملفات الهدف

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

> يتم إرجاع المطابقة الأولى فقط لكل ملف

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

> تعطيل تمييز السلاسل المطابقة في الإخراج

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

> تجد معلمة NotMatch النص الذي لا يتطابق مع النمط

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

> قم بإخراج السلاسل المطابقة فقط بدلاً من كائنات MatchInfo

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

> استخدم مطابقة السلاسل النصية البسيطة بدلاً من التعبير النمطي

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

> سيعيد الملفات ذات الأحجام المختلفة طالما أنها تبدأ بنفس اسم الملف والمحتوى، وهذا يكتشف عمليات التنزيل/النسخ التالفة

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

> مقارنة سريعة لطول الملفات بالبايت، تُستخدم للفهرسة السريعة والبحث عن الملفات المكررة، لن يقارن هذا محتوى الملفات

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Expand-Path.md)
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
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-TextFileAtomic.md)
