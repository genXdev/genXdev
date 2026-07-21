# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> ابحث عن الملفات والدلائل باستخدام خيارات تصفية متقدمة.

## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | نمط تعبير منتظم للبحث داخل المحتوى *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | المسار الأساسي لحل المسارات النسبية في المخرجات |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | الحد الأقصى لدرجة التوازي لمهام الدليل |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | اختياري: مهلة الإلغاء بالثواني |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | البحث عبر جميع محركات الأقراص المتاحة |
| `-Directory` | SwitchParameter | — | — | Named | `False` | البحث عن الدلائل فقط |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | تضمين كلاً من الملفات والأدلة |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | مطابقة العناصر الناتجة ككائنات |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | تضمين تدفقات البيانات البديلة في نتائج البحث |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | لا تقم بالتكرار في المجلدات الفرعية |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | اتبع الروابط الرمزية ونقاط الوصل أثناء التنقل عبر الدليل |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | تضمين محركات الأقراص الضوئية |
| `-SearchDrives` | String[] | — | — | Named | — | اختياري: البحث في محركات أقراص محددة |
| `-DriveLetter` | Char[] | — | — | Named | — | اختياري: البحث في محركات أقراص محددة |
| `-Root` | String[] | — | — | Named | — | اختياري: البحث في أدلة محددة |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | يفرض البحث فقط ضمن الدلائل الجذرية عن طريق إزالة مكونات الدليل من مدخلات الاسم |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | تضمين الملفات غير النصية عند البحث في محتويات الملفات |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | يفرض وضعية التشغيل غير المراقب ولن يقوم بإنشاء روابط |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | الحصول على أو تعيين حساسية حالة الأحرف للملفات والمجلدات |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | عند التمكين، يتم إجراء بحث في المحتوى داخل تدفقات البيانات البديلة (ADS). عند عدم التمكين، يتم إخراج معلومات ملف ADS دون البحث في محتواها. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار لاجتياز الدليل. القيمة 0 تعني غير محدود. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار للبحث لأعلى في الشجرة عن عمليات البحث النسبية، في حالة عدم العثور على عناصر. القيمة 0 تعني معطل. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | الحد الأقصى لحجم الملف بالبايتات لتضمينه في النتائج. 0 يعني غير محدود. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | الحد الأدنى لحجم الملف بالبايت لإدراجه في النتائج. يعني 0 عدم وجود حد أدنى. |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | تضمين فقط الملفات التي تم تعديلها بعد هذا التاريخ/الوقت (UTC). |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | قم بتضمين الملفات المعدلة فقط قبل هذا التاريخ/الوقت (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | سمات الملف التي سيتم تخطيها (مثل: النظام، المخفي، أو بلا). |
| `-Exclude` | String[] | — | — | Named | — | استثناء الملفات أو الدلائل التي تطابق أنماط أحرف البدل هذه (مثل *.tmp, *\bin\*). |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | يشير إلى أن الأمر cmdlet يبحث عن أكثر من تطابق في كل سطر من النص. بدون هذه المعلمة، يجد Select-String التطابق الأول فقط في كل سطر من النص. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | يشير إلى أن تطابقات cmdlet حساسة لحالة الأحرف. افتراضيًا، لا تكون التطابقات حساسة لحالة الأحرف. *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | يلتقط عدد الأسطر المحدد قبل وبعد السطر الذي يطابق النمط. *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | يحدد اسم ثقافة لمطابقة النمط المحدد. يجب استخدام معلمة Culture مع معلمة SimpleMatch. السلوك الافتراضي يستخدم ثقافة مساحة تشغيل PowerShell الحالية (الجلسة). *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | تحديد نوع الترميز للملف الهدف. يدعم القيم المتوافقة مع Select-String وترميزات .NET الموسعة. *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | يتم إرجاع  فقط المطابقة النصية الأولى من كل ملف إدخال. هذه هي الطريقة الأكثر كفاءة لاسترداد قائمة الملفات التي تحتوي محتوياتها على تعبير عادي مطابق. *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | تعطيل تمييز السلاسل المطابقة في المخرجات. *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | تجد المعلمة NotMatch النص الذي لا يطابق النمط المحدد. *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | يشير إلى أن الأمر cmdlet يُرجع استجابة بسيطة بدلاً من كائن MatchInfo. القيمة المُعادة هي $true إذا تم العثور على النمط أو $null إذا لم يتم العثور على النمط. *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | تؤدي إلى إخراج cmdlet للسلاسل المطابقة فقط، بدلاً من كائنات MatchInfo. هذا يؤدي إلى سلوك مشابه جدًا لأمر grep في Unix أو findstr.exe في Windows. *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | يشير إلى أن الأمر cmdlet يستخدم مطابقة بسيطة بدلاً من مطابقة التعبير العادي. في المطابقة البسيطة، يبحث Select-String في الإدخال عن النص الموجود في المعلمة Pattern. لا يفسر قيمة المعلمة Pattern كعبارة تعبير عادي. *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

البحث عن الملفات التي تحتوي على كلمة محددة
ابحث عن جميع الملفات في الدليل الحالي والأدلة الفرعية التي تحتوي على كلمة "ترجمة".

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

البحث عن ملفات JavaScript تحتوي على سلسلة إصدار
ابحث عن ملفات JavaScript تحتوي على سلسلة إصدار بالتنسيق "الإصدار == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

قائمة بجميع الدلائل
ابحث عن جميع الدلائل في الدليل الحالي والدلائل الفرعية الخاصة به.

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

العثور على ملفات XML وتمرير الكائنات
البحث عن جميع ملفات .xml وتمرير النتائج ككائنات عبر خط الأنابيب.

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

تضمين تدفقات البيانات البديلة
البحث عن جميع الملفات وتضمين تدفقات البيانات البديلة الخاصة بها في النتائج.

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

بحث عبر جميع محركات الأقراص
ابحث عن جميع ملفات PDF عبر جميع محركات الأقراص المتاحة.

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

مهلة زمنية مخصصة والتوازي
ابحث عن ملفات السجل مع مهلة زمنية قدرها 5 دقائق وتواز محدود.

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

إدخال الأنبوب
قم بتمرير مسارات الملفات من Get-ChildItem للبحث عن ملفات تحتوي على "error".

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

حدد عمق التكرار
ابحث عن ملفات نصية مع تحديد التكرار إلى مستويين من الأدلة.

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

التصفية حسب حجم الملف
ابحث عن الملفات الأكبر من 1 ميغابايت ولكن الأصغر من 10 ميغابايت.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

التصفية حسب تاريخ التعديل
البحث عن الملفات المعدلة بعد 1 يناير 2025.

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

استبعاد الأنماط المحددة
ابحث عن جميع الملفات ولكن استبعد الملفات المؤقتة وأدلة bin.

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

البحث في محركات أقراص محددة
ابحث عن ملفات .docx على محركي الأقراص C: و D: فقط.

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

بحث محتوى حساس لحالة الأحرف
البحث عن ملفات تحتوي على "Error" (حساس لحالة الأحرف) في محتواها.

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

البحث عن محتوى تيار البيانات البديل
ابحث عن ملفات تحتوي على تيارات بيانات بديلة تحتوي على "secret".

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

البحث عن جميع التطابقات لكل سطر
ابحث عن جميع تكرارات "function" في كل سطر، وليس فقط أول تطابق.

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

عرض السياق حول التطابقات
عرض سطرين قبل وثلاثة أسطر بعد كل تطابق لفهم أفضل.

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

الحصول على السلاسل المطابقة فقط
إرجاع نصوص السلاسل المطابقة بدلاً من كائنات المطابقة الكاملة.

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

فحص بولياني بسيط
إرجاع true/false بدلاً من تفاصيل المطابقة للتحقق من وجود النمط.

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

البحث عن أول تطابق فقط لكل ملف
التوقف عند أول تطابق في كل ملف لسرد الملفات بكفاءة.

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

مطابقة السلسلة الحرفية
ابحث عن نص مطابق تمامًا بدون تفسير التعبير العادي باستخدام SimpleMatch.

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

البحث عن الملفات التي لا تحتوي على نمط
استخدم NotMatch للعثور على الملفات التي لا تحتوي على النمط المحدد.

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

تحديد ترميز الملف
البحث عن الملفات بترميز محدد للمعالجة النصية الدقيقة.

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

مقارنة النصوص الثقافية
استخدم المطابقة الخاصة بالثقافة مع SimpleMatch للنصوص الدولية.

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

بحث معقد عن المحتوى باستخدام مرشحات الملفات
اجمع بين مرشحات حجم الملف والتاريخ والمحتوى لإجراء عمليات بحث دقيقة.

## Parameter Details

### `-Name <String[]>`

> اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*'

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

> اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*'

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
| **Position?** | 1 |
| **Default value** | *(none)* |
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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> عند التمكين، يتم إجراء بحث في المحتوى داخل تدفقات البيانات البديلة (ADS). عند عدم التمكين، يتم إخراج معلومات ملف ADS دون البحث في محتواها.

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

> الحد الأقصى لعمق التكرار للبحث لأعلى في الشجرة عن عمليات البحث النسبية، في حالة عدم العثور على عناصر. القيمة 0 تعني معطل.

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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> استثناء الملفات أو الدلائل التي تطابق أنماط أحرف البدل هذه (مثل *.tmp, *\bin\*).

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

> يشير إلى أن الأمر cmdlet يبحث عن أكثر من تطابق في كل سطر من النص. بدون هذه المعلمة، يجد Select-String التطابق الأول فقط في كل سطر من النص.

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

> يشير إلى أن تطابقات cmdlet حساسة لحالة الأحرف. افتراضيًا، لا تكون التطابقات حساسة لحالة الأحرف.

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

> يلتقط عدد الأسطر المحدد قبل وبعد السطر الذي يطابق النمط.

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

> تحديد نوع الترميز للملف الهدف. يدعم القيم المتوافقة مع Select-String وترميزات .NET الموسعة.

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

> يتم إرجاع  فقط المطابقة النصية الأولى من كل ملف إدخال. هذه هي الطريقة الأكثر كفاءة لاسترداد قائمة الملفات التي تحتوي محتوياتها على تعبير عادي مطابق.

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

> تعطيل تمييز السلاسل المطابقة في المخرجات.

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

> تجد المعلمة NotMatch النص الذي لا يطابق النمط المحدد.

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

> يشير إلى أن الأمر cmdlet يُرجع استجابة بسيطة بدلاً من كائن MatchInfo. القيمة المُعادة هي $true إذا تم العثور على النمط أو $null إذا لم يتم العثور على النمط.

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

> تؤدي إلى إخراج cmdlet للسلاسل المطابقة فقط، بدلاً من كائنات MatchInfo. هذا يؤدي إلى سلوك مشابه جدًا لأمر grep في Unix أو findstr.exe في Windows.

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

> يشير إلى أن الأمر cmdlet يستخدم مطابقة بسيطة بدلاً من مطابقة التعبير العادي. في المطابقة البسيطة، يبحث Select-String في الإدخال عن النص الموجود في المعلمة Pattern. لا يفسر قيمة المعلمة Pattern كعبارة تعبير عادي.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-DuplicateFiles.md)
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
