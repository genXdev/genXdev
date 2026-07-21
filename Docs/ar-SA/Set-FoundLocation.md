# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> يعثر على أول ملف أو مجلد مطابق ويضبط الموقع عليه.

## Description

ستساعدك هذه الأداة في تغيير الدلائل بسرعة باستخدام عبارات البحث التي ستجد أول مجلد أو ملف مطابق (اختياري) وتنتقل إليه. تدعم التصفية المتقدمة حسب المحتوى، سمات الملف، الحجم، تواريخ التعديل، والعديد من المعايير الأخرى.

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | اسم الملف أو النمط للبحث عنه. 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | اسم الملف أو النمط المراد البحث عنه من إدخال الأنبوب. الافتراضي هو '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | نمط التعبير العادي للبحث داخل محتويات الملف *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | فقط إخراج الملفات التي تنتمي إلى الفئات المحددة |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | الحد الأقصى لدرجة التوازي لمهام الدليل |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | اختياري: مهلة الإلغاء بالثواني |
| `-AllDrives` | SwitchParameter | — | — | Named | — | البحث عبر جميع محركات الأقراص المتاحة |
| `-File` | SwitchParameter | — | — | Named | — | ابحث عن أسماء الملفات فقط وانتقل إلى مجلد أول ملف يتم العثور عليه |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | تضمين تطابق اسم الملف والانتقال إلى مجلد أول ملف تم العثور عليه |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | تضمين تدفقات البيانات البديلة في نتائج البحث |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | لا تقم بالتكرار في المجلدات الفرعية |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | اتبع الروابط الرمزية ونقاط الوصل أثناء التنقل عبر الدليل |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | تضمين محركات الأقراص الضوئية |
| `-SearchDrives` | String[] | — | — | Named | `@()` | اختياري: البحث في محركات أقراص محددة |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | اختياري: البحث في محركات أقراص محددة |
| `-Root` | String[] | — | — | Named | `@()` | اختياري: البحث في مجلدات أساسية محددة مدمجة مع الأسماء المقدمة |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | قم بتضمين الملفات غير النصية (الملفات الثنائية، الصور، إلخ) عند البحث في محتويات الملفات |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | الحصول على أو تعيين حساسية حالة الأحرف للملفات والمجلدات |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | عند التمكين، يتم إجراء بحث في المحتوى داخل تدفقات البيانات البديلة (ADS). عند عدم التمكين، يتم إخراج معلومات ملف ADS دون البحث في محتواها. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار لاجتياز الدليل. القيمة 0 تعني غير محدود. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | الحد الأقصى لحجم الملف بالبايتات لتضمينه في النتائج. 0 يعني غير محدود. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | الحد الأدنى لحجم الملف بالبايت لإدراجه في النتائج. يعني 0 عدم وجود حد أدنى. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | تضمين فقط الملفات التي تم تعديلها بعد هذا التاريخ/الوقت (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | قم بتضمين الملفات المعدلة فقط قبل هذا التاريخ/الوقت (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | سمات الملف التي سيتم تخطيها (مثل: النظام، المخفي، أو بلا). |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | استبعاد الملفات أو الدلائل المطابقة لأنماط wildcard هذه (مثل *.tmp، *\bin\*). |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | يشير إلى أن تطابقات cmdlet حساسة لحالة الأحرف. افتراضيًا، لا تكون التطابقات حساسة لحالة الأحرف. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | يحدد اسم ثقافة لمطابقة النمط المحدد. يجب استخدام معلمة Culture مع معلمة SimpleMatch. السلوك الافتراضي يستخدم ثقافة مساحة تشغيل PowerShell الحالية (الجلسة). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | تحدد نوع الترميز للملف الهدف. القيمة الافتراضية هي utf8NoBOM. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | تجد المعلمة NotMatch النص الذي لا يطابق النمط المحدد. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | يشير إلى أن الأمر cmdlet يستخدم مطابقة بسيطة بدلاً من مطابقة التعبير العادي. في المطابقة البسيطة، يبحث Select-String في الإدخال عن النص الموجود في المعلمة Pattern. لا يفسر قيمة المعلمة Pattern كعبارة تعبير عادي. *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | استخدم Push-Location بدلاً من Set-Location وادفع الموقع إلى مكدس المواقع |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | عند التعيين، يتم اعتبار مطابقات الاسم التامة فقط. افتراضيًا، يتم استخدام مطابقة أحرف البدل ما لم يحتوي الاسم على أحرف بدل. |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

التغييرات على الدليل الأول المطابق للنمط '*.Console'.

### lcd *.Console

```powershell
lcd *.Console
```

التغييرات على الدليل الأول المطابق للنمط '*.Console' باستخدام الاسم المستعار.

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

يُغيِّر الدليل الذي يحتوي على أول ملف بوويرشيل يحتوي على كلمة 'function'.

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

التغييرات في الدليل الذي يحتوي على أول ملف يحتوي على 'test' في اسمه.

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

التغييرات على الدليل الذي يحتوي على الملف الأول الذي يتطابق محتواه مع النمط '1.\d+\.2025'.

## Parameter Details

### `-Name <String>`

> اسم الملف أو النمط للبحث عنه.

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

> اسم الملف أو النمط المراد البحث عنه من إدخال الأنبوب. الافتراضي هو '*'

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

> نمط التعبير العادي للبحث داخل محتويات الملف

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
### `-File`

> ابحث عن أسماء الملفات فقط وانتقل إلى مجلد أول ملف يتم العثور عليه

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

> تضمين تطابق اسم الملف والانتقال إلى مجلد أول ملف تم العثور عليه

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

> اختياري: البحث في مجلدات أساسية محددة مدمجة مع الأسماء المقدمة

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

> قم بتضمين الملفات غير النصية (الملفات الثنائية، الصور، إلخ) عند البحث في محتويات الملفات

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

> الحصول على أو تعيين حساسية حالة الأحرف للملفات والمجلدات

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

> عند التمكين، يتم إجراء بحث في المحتوى داخل تدفقات البيانات البديلة (ADS). عند عدم التمكين، يتم إخراج معلومات ملف ADS دون البحث في محتواها.

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

> تضمين فقط الملفات التي تم تعديلها بعد هذا التاريخ/الوقت (UTC).

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

> قم بتضمين الملفات المعدلة فقط قبل هذا التاريخ/الوقت (UTC).

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

> سمات الملف التي سيتم تخطيها (مثل: النظام، المخفي، أو بلا).

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

> استبعاد الملفات أو الدلائل المطابقة لأنماط wildcard هذه (مثل *.tmp، *\bin\*).

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

> يشير إلى أن تطابقات cmdlet حساسة لحالة الأحرف. افتراضيًا، لا تكون التطابقات حساسة لحالة الأحرف.

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

> يحدد اسم ثقافة لمطابقة النمط المحدد. يجب استخدام معلمة Culture مع معلمة SimpleMatch. السلوك الافتراضي يستخدم ثقافة مساحة تشغيل PowerShell الحالية (الجلسة).

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

> تحدد نوع الترميز للملف الهدف. القيمة الافتراضية هي utf8NoBOM.

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

> تجد المعلمة NotMatch النص الذي لا يطابق النمط المحدد.

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

> يشير إلى أن الأمر cmdlet يستخدم مطابقة بسيطة بدلاً من مطابقة التعبير العادي. في المطابقة البسيطة، يبحث Select-String في الإدخال عن النص الموجود في المعلمة Pattern. لا يفسر قيمة المعلمة Pattern كعبارة تعبير عادي.

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

> استخدم Push-Location بدلاً من Set-Location وادفع الموقع إلى مكدس المواقع

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

> عند التعيين، يتم اعتبار مطابقات الاسم التامة فقط. افتراضيًا، يتم استخدام مطابقة أحرف البدل ما لم يحتوي الاسم على أحرف بدل.

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
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-TextFileAtomic.md)
