# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages`, `li`

## Synopsis

> يبحث عن ملفات الصور والبيانات الوصفية في أدلة محددة مع إمكانيات التصفية وعرض اختياري في معرض يعتمد على المتصفح.

## Description

يبحث عن ملفات الصور (jpg, jpeg, png, gif, bmp, webp, tiff, tif) في الدليل المحدد والدلائل الفرعية الخاصة به. لكل صورة، يتحقق من ملفات البيانات الوصفية المرتبطة description.json، keywords.json، people.json، و objects.json. يمكن تصفية الصور بناءً على تطابق الكلمات المفتاحية، التعرف على الأشخاص، واكتشاف الأشياء، ثم إرجاع النتائج ككائنات. استخدم -ShowInBrowser لعرض النتائج في تخطيط بناء مشابه للطوب في المتصفح.

منطق المعاملات:
- داخل كل نوع معامل (الكلمات المفتاحية، الأشخاص، الأشياء، إلخ): يستخدم منطق OR
  مثال: -Keywords "cat","dog" يبحث عن الصور التي تحتوي إما على cat أو dog
- بين أنواع المعاملات المختلفة: يستخدم منطق AND
  مثال: -Keywords "cat" -People "John" يبحث عن الصور التي تحتوي على cat و John
- معاملات نطاق EXIF: يوفر قيم [min, max] لتصفية النطاقات
- معاملات النص: تدعم مطابقة أحرف البدل باستخدام * و ؟

تقوم الوظيفة بالبحث في أدلة الصور وفحص تدفقات البيانات البديلة التي تحتوي على بيانات وصفية بتنسيق JSON. يمكنها مطابقة الكلمات المفتاحية باستخدام أنماط أحرف البدل، والتصفية لأشخاص محددين، والبحث عن الأشياء المكتشفة. افتراضياً، تُرجع كائنات بيانات الصور. استخدم -ShowInBrowser لعرضها في متصفح الويب.

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | سيطابق أي نوع من أنواع البيانات الوصفية الممكنة. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | مصفوفة مسارات الدليل للبحث عن الصور |
| `-Language` | String | — | — | Named | — | اللغة المستخدمة في الأوصاف والكلمات المفتاحية. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ('نص الوصف المطلوب البحث عنه، يسمح باستخدام أحرف البدل.') |
| `-Keywords` | String[] | — | — | Named | `@()` | الكلمات المفتاحية التي يجب البحث عنها، مع السماح باستخدام أحرف البدل. |
| `-People` | String[] | — | — | Named | `@()` | الأشخاص الذين تبحث عنهم، يُسمح باستخدام الأحرف البدل. |
| `-Objects` | String[] | — | — | Named | `@()` | الكائنات التي تبحث عنها، يُسمح باستخدام أحرف البدل. |
| `-Scenes` | String[] | — | — | Named | `@()` | فئات المشاهد للبحث عنها، يُسمح باستخدام أحرف البدل. |
| `-PictureType` | String[] | — | — | Named | `@()` | (نوع الصورة للتصفية بناءً عليه (مثل: 'ضوء النهار'، 'المساء'، 'داخلي'، إلخ). يدعم أحرف البدل. |
| `-StyleType` | String[] | — | — | Named | `@()` | نوع النمط للتصفية (مثل 'عادي'، 'رسمي'، إلخ). يدعم أحرف البدل. |
| `-OverallMood` | String[] | — | — | Named | `@()` | الحالة المزاجية الإجمالية للتصفية (مثلاً، 'هادئ'، 'مبتهج'، 'حزين'، إلخ). يدعم أحرف البدل. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | التصفية حسب صانع الكاميرا في بيانات EXIF الوصفية للصورة. يدعم أحرف البدل. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | قم بالتصفية حسب طراز الكاميرا في بيانات EXIF الوصفية للصورة. يدعم الأحرف البدل. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | التصفية حسب نطاق خط العرض GPS في بيانات EXIF الوصفية للصور. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | الفلترة حسب نطاق خط الطول لنظام تحديد المواقع العالمي (GPS) في بيانات EXIF الوصفية للصورة. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | التصفية حسب نطاق الارتفاع العالمي (GPS) في بيانات EXIF الوصفية للصورة (بوحدة الأمتار). |
| `-GeoLocation` | Double[] | — | — | Named | — | الإحداثيات الجغرافية [خط العرض، خط الطول] للبحث بالقرب منها. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | أقصى مسافة بالأمتار من الموقع الجغرافي للبحث عن الصور. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | التصفية حسب نطاق وقت التعريض في بيانات EXIF الوصفية للصورة (بالثواني). |
| `-MetaFNumber` | Double[] | — | — | Named | — | التصفية حسب نطاق رقم البؤرة (الفتحة) في بيانات EXIF الوصفية للصورة. |
| `-MetaISO` | Int32[] | — | — | Named | — | التصفية حسب نطاق حساسية ISO في بيانات EXIF الوصفية للصورة. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | التصفية حسب نطاق البعد البؤري في بيانات EXIF الوصفية للصورة (بالمليمتر). |
| `-MetaWidth` | Int32[] | — | — | Named | — | التصفية حسب نطاق عرض الصورة بالبكسل من بيانات EXIF الوصفية. |
| `-MetaHeight` | Int32[] | — | — | Named | — | التصفية حسب نطاق ارتفاع الصورة بالبكسل من بيانات EXIF الوصفية. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | التصفية حسب التاريخ المأخوذ من بيانات EXIF. يمكن أن يكون نطاقًا زمنيًا. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | عنوان المعرض |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | وصف المعرض |
| `-AcceptLang` | String | — | — | Named | `$null` | تعيين رأس HTTP لقبول اللغة للمتصفح |
| `-KeysToSend` | String[] | — | — | Named | — | ضغطات المفاتيح التي سيتم إرسالها إلى نافذة المتصفح، انظر الوثائق الخاصة بـ cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | تجنب أحرف التحكم والمعدلات عند إرسال المفاتيح |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | منع إعادة التركيز البصري إلى PowerShell بعد إرسال المفاتيح |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | التأخير بين سلاسل الإدخال المختلفة بالمللي ثانية عند إرسال المفاتيح |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | تركيز نافذة المتصفح بعد الفتح |
| `-SetForeground` | SwitchParameter | — | — | Named | — | تعيين نافذة المتصفح إلى المقدمة بعد الفتح |
| `-Maximize` | SwitchParameter | — | — | Named | — | قم بتكبير النافذة بعد التموضع |
| `-SetRestored` | SwitchParameter | — | — | Named | — | استعادة النافذة إلى الحالة الطبيعية بعد تحديد الموضع |
| `-Monitor` | Int32 | — | — | Named | `-2` | الشاشة المراد استخدامها، 0 = الافتراضي، -1 = تجاهل، -2 = الشاشة الثانوية المُهيأة، القيمة الافتراضية هي `Global:DefaultSecondaryMonitor` أو 2 إذا لم يتم العثور عليها |
| `-Width` | Int32 | — | — | Named | `-1` | العرض الأولي لإطار نافذة متصفح الويب |
| `-Height` | Int32 | — | — | Named | `-1` | الارتفاع الأولي لنافذة متصفح الويب |
| `-X` | Int32 | — | — | Named | `-999999` | الموضع الأفقي الأولي لنافذة متصفح الويب |
| `-Y` | Int32 | — | — | Named | `-999999` | الموضع الرأسي الأولي لنافذة متصفح الويب |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | قم بتضمين الصور كـ base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | مفتاح لتعطيل سلوك الاحتياط. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | التبديل لتخطي تهيئة قاعدة البيانات وإعادة بنائها. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | البحث عبر جميع محركات الأقراص المتاحة |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | لا تقم بالتكرار في المجلدات الفرعية |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | اتبع الروابط الرمزية والوصلات أثناء اجتياز الدليل. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار لاجتياز الدليل. القيمة 0 تعني غير محدود. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | الحد الأقصى لعمق التكرار للبحث لأعلى في الشجرة عن عمليات البحث النسبية، في حالة عدم العثور على عناصر. القيمة 0 تعني معطل. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | الحد الأقصى لحجم الملف بالبايتات لتضمينه في النتائج. 0 يعني غير محدود. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | الحد الأدنى لحجم الملف بالبايت لإدراجه في النتائج. يعني 0 عدم وجود حد أدنى. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | تضمين فقط الملفات التي تم تعديلها بعد هذا التاريخ/الوقت (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | قم بتضمين الملفات المعدلة فقط قبل هذا التاريخ/الوقت (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | سمات الملف التي سيتم تخطيها (مثل: النظام، المخفي، أو بلا). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | تصفية الصور التي تحتوي على عري. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | قم بتصفية الصور التي لا تحتوي على عُري. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | تصفية الصور التي تحتوي على محتوى صريح. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | تصفية الصور التي لا تحتوي على محتوى صريح. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | عرض نتائج البحث في معرض صور يعتمد على المتصفح. |
| `-PassThru` | SwitchParameter | — | — | Named | — | إرجاع بيانات الصورة ككائنات. عند استخدامه مع '-ShowInBrowser'، فإنه يعرض المعرض ويعيد الكائنات. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | إزالة حدود النافذة وشريط العنوان للحصول على مظهر أنظف |
| `-SideBySide` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح جنبًا إلى جنب مع PowerShell على نفس الشاشة |
| `-Interactive` | SwitchParameter | — | — | Named | — | سيتصل بالمتصفح ويضيف أزرارًا إضافية مثل تحرير وحذف. فعال فقط عند استخدامه مع -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | يفتح في وضع التصفح المتخفي/الخاص |
| `-Force` | SwitchParameter | — | — | Named | — | تمكين منفذ التصحيح بالقوة، وإيقاف المتصفحات الموجودة إذا لزم الأمر |
| `-Edge` | SwitchParameter | — | — | Named | — | يفتح في مايكروسوفت إيدج |
| `-Chrome` | SwitchParameter | — | — | Named | — | يفتح في جوجل كروم |
| `-Chromium` | SwitchParameter | — | — | Named | — | يفتح في مايكروسوفت إيدج أو جوجل كروم، حسب المتصفح الافتراضي |
| `-Firefox` | SwitchParameter | — | — | Named | — | يفتح في فايرفوكس |
| `-PlayWright` | SwitchParameter | — | — | Named | — | استخدم متصفح Playwright المُدار بدلاً من المتصفح المثبت في نظام التشغيل |
| `-Webkit` | SwitchParameter | — | — | Named | — | يفتح متصفح WebKit المُدار بواسطة Playwright. يعني -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | قم بتشغيل المتصفح بدون نافذة مرئية |
| `-All` | SwitchParameter | — | — | Named | — | يفتح في جميع المتصفحات الحديثة المسجلة |
| `-FullScreen` | SwitchParameter | — | — | Named | — | يفتح في وضع ملء الشاشة |
| `-Left` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح على الجانب الأيسر من الشاشة |
| `-Right` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح في الجانب الأيمن من الشاشة |
| `-Top` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح في الجزء العلوي من الشاشة |
| `-Bottom` | SwitchParameter | — | — | Named | — | وضع نافذة المتصفح في الجزء السفلي من الشاشة |
| `-Centered` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح في وسط الشاشة |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | إخفاء عناصر تحكم المتصفح |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | منع تحميل إضافات المتصفح |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | تعطيل مانع النوافذ المنبثقة |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | استعادة تركيز نافذة PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | لا تقم بإعادة استخدام نافذة المتصفح الحالية، بل أنشئ نافذة جديدة |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | 'قم فقط بإرجاع HTML المُنشأ بدلاً من عرضه في المتصفح.' |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | عرض الصور فقط في مستطيل دائري الزوايا، بدون نص أسفلها. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وما إلى ذلك |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وما إلى ذلك |
| `-SkipSession` | SwitchParameter | — | — | Named | — | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وغيرها |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | التمرير التلقائي للصفحة بهذا العدد من البكسل في الثانية (فارغ لتعطيل) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | تحريك المستطيلات (الكائنات/الوجوه) في النطاق المرئي، مع التكرار كل 300 مللي ثانية |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | فرض تخطيط عمود واحد (مركز، عرض 1/3 الشاشة) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | بادئة يُسبق بها كل مسار صورة (مثل عناوين URL عن بعد) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | نسبة الثقة الدنيا (0.0-1.0) لتصفية الأشخاص والمشاهد والأجسام حسب الثقة. يُرجع البيانات فقط للأشخاص والمشاهد والأجسام التي تكون نسبة الثقة فيها أكبر من أو تساوي هذه القيمة. |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Parameter Details

### `-Any <String[]>`

> سيطابق أي نوع من أنواع البيانات الوصفية الممكنة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> مصفوفة مسارات الدليل للبحث عن الصور

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory`, `ImageDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> اللغة المستخدمة في الأوصاف والكلمات المفتاحية.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> ('نص الوصف المطلوب البحث عنه، يسمح باستخدام أحرف البدل.')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> الكلمات المفتاحية التي يجب البحث عنها، مع السماح باستخدام أحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> الأشخاص الذين تبحث عنهم، يُسمح باستخدام الأحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> الكائنات التي تبحث عنها، يُسمح باستخدام أحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> فئات المشاهد للبحث عنها، يُسمح باستخدام أحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> (نوع الصورة للتصفية بناءً عليه (مثل: 'ضوء النهار'، 'المساء'، 'داخلي'، إلخ). يدعم أحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> نوع النمط للتصفية (مثل 'عادي'، 'رسمي'، إلخ). يدعم أحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> الحالة المزاجية الإجمالية للتصفية (مثلاً، 'هادئ'، 'مبتهج'، 'حزين'، إلخ). يدعم أحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraMake <String[]>`

> التصفية حسب صانع الكاميرا في بيانات EXIF الوصفية للصورة. يدعم أحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraModel <String[]>`

> قم بالتصفية حسب طراز الكاميرا في بيانات EXIF الوصفية للصورة. يدعم الأحرف البدل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLatitude <Double[]>`

> التصفية حسب نطاق خط العرض GPS في بيانات EXIF الوصفية للصور.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLongitude <Double[]>`

> الفلترة حسب نطاق خط الطول لنظام تحديد المواقع العالمي (GPS) في بيانات EXIF الوصفية للصورة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSAltitude <Double[]>`

> التصفية حسب نطاق الارتفاع العالمي (GPS) في بيانات EXIF الوصفية للصورة (بوحدة الأمتار).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> الإحداثيات الجغرافية [خط العرض، خط الطول] للبحث بالقرب منها.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> أقصى مسافة بالأمتار من الموقع الجغرافي للبحث عن الصور.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaExposureTime <Double[]>`

> التصفية حسب نطاق وقت التعريض في بيانات EXIF الوصفية للصورة (بالثواني).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFNumber <Double[]>`

> التصفية حسب نطاق رقم البؤرة (الفتحة) في بيانات EXIF الوصفية للصورة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaISO <Int32[]>`

> التصفية حسب نطاق حساسية ISO في بيانات EXIF الوصفية للصورة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFocalLength <Double[]>`

> التصفية حسب نطاق البعد البؤري في بيانات EXIF الوصفية للصورة (بالمليمتر).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaWidth <Int32[]>`

> التصفية حسب نطاق عرض الصورة بالبكسل من بيانات EXIF الوصفية.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaHeight <Int32[]>`

> التصفية حسب نطاق ارتفاع الصورة بالبكسل من بيانات EXIF الوصفية.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaDateTaken <DateTime[]>`

> التصفية حسب التاريخ المأخوذ من بيانات EXIF. يمكن أن يكون نطاقًا زمنيًا.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> عنوان المعرض

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> وصف المعرض

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `('Hover over images to see face recognition ' +
            'and object detection data')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> تعيين رأس HTTP لقبول اللغة للمتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> ضغطات المفاتيح التي سيتم إرسالها إلى نافذة المتصفح، انظر الوثائق الخاصة بـ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> تجنب أحرف التحكم والمعدلات عند إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> منع إعادة التركيز البصري إلى PowerShell بعد إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> استخدم Shift+Enter بدلاً من Enter عند إرسال المفاتيح

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

> التأخير بين سلاسل الإدخال المختلفة بالمللي ثانية عند إرسال المفاتيح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> تركيز نافذة المتصفح بعد الفتح

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

> تعيين نافذة المتصفح إلى المقدمة بعد الفتح

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

> قم بتكبير النافذة بعد التموضع

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> استعادة النافذة إلى الحالة الطبيعية بعد تحديد الموضع

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> الشاشة المراد استخدامها، 0 = الافتراضي، -1 = تجاهل، -2 = الشاشة الثانوية المُهيأة، القيمة الافتراضية هي `Global:DefaultSecondaryMonitor` أو 2 إذا لم يتم العثور عليها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> العرض الأولي لإطار نافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> الارتفاع الأولي لنافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> الموضع الأفقي الأولي لنافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> الموضع الرأسي الأولي لنافذة متصفح الويب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> مسار قاعدة البيانات لملفات بيانات التفضيلات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> قم بتضمين الصور كـ base64.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFallback`

> مفتاح لتعطيل سلوك الاحتياط.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NeverRebuild`

> التبديل لتخطي تهيئة قاعدة البيانات وإعادة بنائها.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-HasNudity`

> تصفية الصور التي تحتوي على عري.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> قم بتصفية الصور التي لا تحتوي على عُري.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> تصفية الصور التي تحتوي على محتوى صريح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> تصفية الصور التي لا تحتوي على محتوى صريح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowInBrowser`

> عرض نتائج البحث في معرض صور يعتمد على المتصفح.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `show`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> إرجاع بيانات الصورة ككائنات. عند استخدامه مع '-ShowInBrowser'، فإنه يعرض المعرض ويعيد الكائنات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> إزالة حدود النافذة وشريط العنوان للحصول على مظهر أنظف

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> ضع نافذة المتصفح جنبًا إلى جنب مع PowerShell على نفس الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Interactive`

> سيتصل بالمتصفح ويضيف أزرارًا إضافية مثل تحرير وحذف. فعال فقط عند استخدامه مع -ShowInBrowser.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `i`, `editimages` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> يفتح في وضع التصفح المتخفي/الخاص

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> تمكين منفذ التصحيح بالقوة، وإيقاف المتصفحات الموجودة إذا لزم الأمر

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> يفتح في مايكروسوفت إيدج

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> يفتح في جوجل كروم

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> يفتح في مايكروسوفت إيدج أو جوجل كروم، حسب المتصفح الافتراضي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> يفتح في فايرفوكس

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> استخدم متصفح Playwright المُدار بدلاً من المتصفح المثبت في نظام التشغيل

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

> يفتح متصفح WebKit المُدار بواسطة Playwright. يعني -PlayWright

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

> قم بتشغيل المتصفح بدون نافذة مرئية

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

> يفتح في جميع المتصفحات الحديثة المسجلة

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

> يفتح في وضع ملء الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> وضع نافذة المتصفح على الجانب الأيسر من الشاشة

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

> ضع نافذة المتصفح في الجانب الأيمن من الشاشة

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

> وضع نافذة المتصفح في الجزء العلوي من الشاشة

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

> وضع نافذة المتصفح في الجزء السفلي من الشاشة

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

> ضع نافذة المتصفح في وسط الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> إخفاء عناصر تحكم المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> منع تحميل إضافات المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> تعطيل مانع النوافذ المنبثقة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> استعادة تركيز نافذة PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> لا تقم بإعادة استخدام نافذة المتصفح الحالية، بل أنشئ نافذة جديدة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyReturnHtml`

> 'قم فقط بإرجاع HTML المُنشأ بدلاً من عرضه في المتصفح.'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> عرض الصور فقط في مستطيل دائري الزوايا، بدون نص أسفلها.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وما إلى ذلك

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

> مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وما إلى ذلك

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

> لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وغيرها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> التمرير التلقائي للصفحة بهذا العدد من البكسل في الثانية (فارغ لتعطيل)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> تحريك المستطيلات (الكائنات/الوجوه) في النطاق المرئي، مع التكرار كل 300 مللي ثانية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> فرض تخطيط عمود واحد (مركز، عرض 1/3 الشاشة)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> بادئة يُسبق بها كل مسار صورة (مثل عناوين URL عن بعد)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinConfidenceRatio <Double>`

> نسبة الثقة الدنيا (0.0-1.0) لتصفية الأشخاص والمشاهد والأجسام حسب الثقة. يُرجع البيانات فقط للأشخاص والمشاهد والأجسام التي تكون نسبة الثقة فيها أكبر من أو تساوي هذه القيمة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-DiplomaticSpeak.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-AllImageMetaData.md)
