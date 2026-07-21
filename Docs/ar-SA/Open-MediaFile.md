# Open-MediaFile

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmedia`, `media`, `findmedia`

## Synopsis

> يفتح ويشغل ملفات الوسائط باستخدام مشغل في إل سي مع خيارات تصفية وتكوين متقدمة.

## Description

تقوم هذه الوظيفة بفحص ملفات الوسائط بناءً على أنماط البحث،
وتنشئ قائمة تشغيل، وتُطلق مشغل في إل سي بمجموعة شاملة من
خيارات التهيئة. وهي تدعم مقاطع الفيديو، وملفات الصوت، والصور مع
التثبيت التلقائي لـ في إل سي إذا لزم الأمر. توفر الوظيفة تحكمًا واسعًا
في سلوك التشغيل، وتحديد موضع النافذة، وإعدادات الصوت/الفيديو، ومعالجة الترجمة.

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | البحث عبر جميع محركات الأقراص المتاحة |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | لا تقم بالتكرار في المجلدات الفرعية |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | اتبع الروابط الرمزية والوصلات أثناء اجتياز الدليل. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار للبحث لأعلى في الشجرة عن عمليات البحث النسبية، في حالة عدم العثور على عناصر. القيمة 0 تعني معطل. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | الحد الأقصى لحجم الملف بالبايتات لتضمينه في النتائج. 0 يعني غير محدود. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | الحد الأدنى لحجم الملف بالبايت لإدراجه في النتائج. يعني 0 عدم وجود حد أدنى. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | تضمين فقط الملفات التي تم تعديلها بعد هذا التاريخ/الوقت (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | قم بتضمين الملفات المعدلة فقط قبل هذا التاريخ/الوقت (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | سمات الملف التي سيتم تخطيها (مثل: النظام، المخفي، أو بلا). |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | اسم الملف أو النمط المراد البحث عنه من المدخلات الناتجة عن الأنابيب. القيمة الافتراضية هي '*' 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | مسار قائمة التشغيل لحفظ ملفات الوسائط فيه. إذا لم يتم التحديد، سيتم حفظ قائمة التشغيل في دليل مؤقت. |
| `-Width` | Int32 | — | — | 1 | `-1` | العرض الأولي للنافذة |
| `-Height` | Int32 | — | — | 2 | `-1` | الارتفاع الأولي للنافذة |
| `-X` | Int32 | — | — | 3 | `-999999` | الموضع الأفقي الأولي للنافذة |
| `-Y` | Int32 | — | — | 4 | `-999999` | الموضع الأولي Y للنافذة |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | اضغط على الأزرار لإرسالها إلى نافذة مشغل VLC، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | الحد الأقصى لدرجة التوازي لمهام الدليل |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | اختياري: مهلة الإلغاء بالثواني |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | تجاهل أحرف التحكم والمعدلات عند إرسال المفاتيح إلى VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح إلى VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | التأخير بين سلاسل الإدخال المختلفة بالميلي ثانية عند إرسال المفاتيح إلى VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | الاحتفاظ بتركيز لوحة المفاتيح على نافذة VLC بعد إرسال المفاتيح |
| `-Monitor` | Int32 | — | — | Named | `-2` | الشاشة المراد استخدامها، 0 = افتراضي، -1 يعني تجاهل |
| `-AspectRatio` | String | — | — | Named | — | نسبة العرض إلى الارتفاع المصدر |
| `-Crop` | String | — | — | Named | — | اقتصاص الفيديو |
| `-SubtitleFile` | String | — | — | Named | — | استخدم ملف الترجمة |
| `-SubtitleScale` | Int32 | — | — | Named | — | عامل تحجيم نص الترجمة |
| `-SubtitleLanguage` | String | — | — | Named | — | لغة الترجمة |
| `-AudioLanguage` | String | — | — | Named | — | لغة الصوت |
| `-PreferredAudioLanguage` | String | — | — | Named | — | لغة الصوت المفضلة |
| `-HttpProxy` | String | — | — | Named | — | وكيل HTTP |
| `-HttpProxyPassword` | String | — | — | Named | — | كلمة مرور الوكيل HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | مستوى الإسهاب |
| `-SubdirectoryBehavior` | String | — | — | Named | — | سلوك الدليل الفرعي |
| `-IgnoredExtensions` | String | — | — | Named | — | الإضافات المُتجاهلة |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | المسار إلى ملف VLC القابل للتنفيذ |
| `-ReplayGainMode` | String | — | — | Named | — | وضع إعادة تشغيل الكسب |
| `-ReplayGainPreamp` | Single | — | — | Named | — | مقدمة كسب إعادة التشغيل |
| `-ForceDolbySurround` | String | — | — | Named | — | فرض اكتشاف دولبي سوراوند |
| `-AudioFilters` | String[] | — | — | Named | — | مرشحات الصوت |
| `-Visualization` | String | — | — | Named | — | التصورات الصوتية |
| `-Deinterlace` | String | — | — | Named | — | إزالة التشابك |
| `-DeinterlaceMode` | String | — | — | Named | — | وضع إزالة التشابك |
| `-VideoFilters` | String[] | — | — | Named | — | وحدة تصفية الفيديو |
| `-VideoFilterModules` | String[] | — | — | Named | — | وحدات تصفية الفيديو |
| `-Modules` | String[] | — | — | Named | — | الوحدات النمطية |
| `-AudioFilterModules` | String[] | — | — | Named | — | وحدات مرشح الصوت |
| `-AudioVisualization` | String | — | — | Named | — | وضع التصور الصوتي |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | لغة الترجمات المصاحبة المفضلة |
| `-IgnoredFileExtensions` | String | — | — | Named | — | امتدادات الملفات المُتجاهلة |
| `-Arguments` | String | — | — | Named | — | وسائط إضافية |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | تضمين تدفقات البيانات البديلة في نتائج البحث |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | قم فقط بتضمين ملفات الفيديو في قائمة التشغيل |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | قم بتضمين ملفات الصوت فقط في قائمة التشغيل |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | قم بتضمين الصور فقط في قائمة التشغيل |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | بالإضافة إلى تضمين مقاطع فيديو في قائمة التشغيل |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | بالإضافة إلى تضمين ملفات صوتية في قائمة التشغيل |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | بالإضافة إلى تضمين الصور في قائمة التشغيل |
| `-NoBorders` | SwitchParameter | — | — | Named | — | إزالة حدود النافذة |
| `-Left` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب الأيسر من الشاشة |
| `-Right` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب الأيمن من الشاشة |
| `-Top` | SwitchParameter | — | — | Named | — | وضع النافذة على الجانب العلوي من الشاشة |
| `-Bottom` | SwitchParameter | — | — | Named | — | ضع النافذة على الجانب السفلي من الشاشة |
| `-Centered` | SwitchParameter | — | — | Named | — | وضع النافذة في وسط الشاشة |
| `-FullScreen` | SwitchParameter | — | — | Named | — | يرسل F11 إلى النافذة |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | دائمًا في المقدمة |
| `-Random` | SwitchParameter | — | — | Named | — | تشغيل الملفات عشوائياً إلى الأبد |
| `-Loop` | SwitchParameter | — | — | Named | — | كرر الكل |
| `-Repeat` | SwitchParameter | — | — | Named | — | كرر العنصر الحالي |
| `-StartPaused` | SwitchParameter | — | — | Named | — | بدء الإيقاف المؤقت |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | تشغيل وخروج |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | تعطيل الصوت |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | تعطيل الترجمة |
| `-AutoScale` | SwitchParameter | — | — | Named | — | تحجيم الفيديو التلقائي |
| `-HighPriority` | SwitchParameter | — | — | Named | — | زيادة أولوية العملية |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | تمكين تمديد الوقت الصوتي |
| `-NewWindow` | SwitchParameter | — | — | Named | — | افتح مثيل جديد لمشغل الوسائط VLC |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | تمكين وضع خلفية الفيديو |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | تمكين تمديد الوقت الصوتي |
| `-Close` | SwitchParameter | — | — | Named | — | أغلق نافذة مشغل الوسائط VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | سيؤدي ذلك إما إلى ضبط النافذة على وضع ملء الشاشة على شاشة مختلفة عن Powershell، أو وضعها جنباً إلى جنب مع Powershell على نفس الشاشة |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | تركيز نافذة VLC بعد الفتح |
| `-SetForeground` | SwitchParameter | — | — | Named | — | تعيين نافذة VLC إلى المقدمة بعد الفتح |
| `-Maximize` | SwitchParameter | — | — | Named | — | قم بتكبير النافذة |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | يستعيد تركيز نافذة PowerShell بعد فتح VLC. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | الحصول على أو تعيين حساسية حالة الأحرف للملفات والمجلدات |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار لاجتياز الدليل. القيمة 0 تعني غير محدود. |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | استبعاد الملفات أو الدلائل المطابقة لأنماط wildcard هذه (مثل *.tmp، *\bin\*). |
| `-PassThru` | SwitchParameter | — | — | Named | — | إرجاع الملفات التي تم العثور عليها بواسطة البحث |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | يعيد الملفات التي تم العثور عليها من خلال البحث دون فتح VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | إرجاع مساعد النافذة لكل عملية |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

يفتح جميع ملفات الوسائط في الدليل الحالي باستخدام إعدادات VLC الافتراضية.

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

يفتح ملفات الصور فقط من مجلد الصور في وضع ملء الشاشة باستخدام الاسم المستعار 'vlcmedia'.

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

يفتح ملفات الفيديو مع تمكين التشغيل التكراري باستخدام الاسم المستعار 'media'.

## Parameter Details

### `-Name <String[]>`

> اسم الملف أو النمط الذي تريد البحث عنه. القيمة الافتراضية هي '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

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
### `-NoRecurse`

> لا تقم بالتكرار في المجلدات الفرعية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> اتبع الروابط الرمزية والوصلات أثناء اجتياز الدليل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object>`

> اسم الملف أو النمط المراد البحث عنه من المدخلات الناتجة عن الأنابيب. القيمة الافتراضية هي '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PlaylistPath <String>`

> مسار قائمة التشغيل لحفظ ملفات الوسائط فيه. إذا لم يتم التحديد، سيتم حفظ قائمة التشغيل في دليل مؤقت.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.Path]::GetTempFileName() + '.m3u'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> العرض الأولي للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> الارتفاع الأولي للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> الموضع الأفقي الأولي للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> الموضع الأولي Y للنافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> اضغط على الأزرار لإرسالها إلى نافذة مشغل VLC، راجع الوثائق الخاصة بـ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
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
### `-SendKeyEscape`

> تجاهل أحرف التحكم والمعدلات عند إرسال المفاتيح إلى VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح إلى VLC

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

> التأخير بين سلاسل الإدخال المختلفة بالميلي ثانية عند إرسال المفاتيح إلى VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> الاحتفاظ بتركيز لوحة المفاتيح على نافذة VLC بعد إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> الشاشة المراد استخدامها، 0 = افتراضي، -1 يعني تجاهل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> نسبة العرض إلى الارتفاع المصدر

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> اقتصاص الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> استخدم ملف الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> عامل تحجيم نص الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> لغة الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> لغة الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> لغة الصوت المفضلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> وكيل HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> كلمة مرور الوكيل HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> مستوى الإسهاب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> سلوك الدليل الفرعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> الإضافات المُتجاهلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> المسار إلى ملف VLC القابل للتنفيذ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> وضع إعادة تشغيل الكسب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> مقدمة كسب إعادة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> فرض اكتشاف دولبي سوراوند

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> مرشحات الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> التصورات الصوتية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> إزالة التشابك

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> وضع إزالة التشابك

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> وحدة تصفية الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> وحدات تصفية الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> الوحدات النمطية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> وحدات مرشح الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> وضع التصور الصوتي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> لغة الترجمات المصاحبة المفضلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> امتدادات الملفات المُتجاهلة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> وسائط إضافية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-OnlyVideos`

> قم فقط بتضمين ملفات الفيديو في قائمة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAudio`

> قم بتضمين ملفات الصوت فقط في قائمة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPictures`

> قم بتضمين الصور فقط في قائمة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeVideos`

> بالإضافة إلى تضمين مقاطع فيديو في قائمة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAudio`

> بالإضافة إلى تضمين ملفات صوتية في قائمة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludePictures`

> بالإضافة إلى تضمين الصور في قائمة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> إزالة حدود النافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> وضع النافذة على الجانب الأيسر من الشاشة

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

> وضع النافذة على الجانب الأيمن من الشاشة

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

> وضع النافذة على الجانب العلوي من الشاشة

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

> ضع النافذة على الجانب السفلي من الشاشة

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

> وضع النافذة في وسط الشاشة

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

> يرسل F11 إلى النافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> دائمًا في المقدمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> تشغيل الملفات عشوائياً إلى الأبد

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> كرر الكل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> كرر العنصر الحالي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> بدء الإيقاف المؤقت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> تشغيل وخروج

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> تعطيل الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> تعطيل الترجمة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> تحجيم الفيديو التلقائي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> زيادة أولوية العملية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> تمكين تمديد الوقت الصوتي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> افتح مثيل جديد لمشغل الوسائط VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> تمكين وضع خلفية الفيديو

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> تمكين تمديد الوقت الصوتي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> أغلق نافذة مشغل الوسائط VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> سيؤدي ذلك إما إلى ضبط النافذة على وضع ملء الشاشة على شاشة مختلفة عن Powershell، أو وضعها جنباً إلى جنب مع Powershell على نفس الشاشة

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

> تركيز نافذة VLC بعد الفتح

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

> تعيين نافذة VLC إلى المقدمة بعد الفتح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> قم بتكبير النافذة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> يستعيد تركيز نافذة PowerShell بعد فتح VLC.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي

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

> مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي

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

> تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
### `-Exclude <String[]>`

> استبعاد الملفات أو الدلائل المطابقة لأنماط wildcard هذه (مثل *.tmp، *\bin\*).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\\.git\\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> إرجاع الملفات التي تم العثور عليها بواسطة البحث

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruNoOpen`

> يعيد الملفات التي تم العثور عليها من خلال البحث دون فتح VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruWindow`

> إرجاع مساعد النافذة لكل عملية

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MediaFileCreationDate.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerRepeat.md)
