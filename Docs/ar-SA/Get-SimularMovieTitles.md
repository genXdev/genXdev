# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> البحث عن عناوين أفلام متشابهة بناءً على الخصائص المشتركة.

## Description

يقوم بتحليل الأفلام المقدمة للعثور على خصائص مشتركة وإرجاع قائمة تحتوي على 10 عناوين أفلام مشابهة. يستخدم الذكاء الاصطناعي لتحديد الأنماط والموضوعات عبر الأفلام المدخلة لاقتراح توصيات ذات صلة.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | مصفوفة عناوين أفلام لتحليلها للتشابه |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | نوع استعلام LLM |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | يشير إلى أن LLM لا يدعم مخططات JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | مهلة العمليات الذكاء الاصطناعي بالثواني |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-Temperature` | Double | — | — | Named | `-1` | عشوائية الاستجابة لدرجة الحرارة (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | يفتح عمليات بحث IMDB لكل نتيجة |
| `-Language` | String | — | — | Named | — | لغة جلسة بحث أو تصفح IMDB |
| `-Monitor` | Int32 | — | — | Named | `-1` | مراقبة الفهرس أو الاسم لوضع نافذة المتصفح |
| `-Width` | Int32 | — | — | Named | `-1` | عرض نافذة المتصفح بالبكسل |
| `-Height` | Int32 | — | — | Named | `-1` | ارتفاع نافذة المتصفح بالبكسل |
| `-AcceptLang` | String | — | — | Named | — | رأس HTTP Accept-Language لجلسة المتصفح |
| `-Private` | SwitchParameter | — | — | Named | — | فتح المتصفح في وضع التصفح الخاص/المجهول |
| `-Chrome` | SwitchParameter | — | — | Named | — | استخدم متصفح Google Chrome لجلسة المتصفح |
| `-Chromium` | SwitchParameter | — | — | Named | — | استخدم Chromium لجلسة المتصفح |
| `-Firefox` | SwitchParameter | — | — | Named | — | استخدم Mozilla Firefox لجلسة المتصفح |
| `-Left` | Int32 | — | — | Named | — | موضع النافذة الأيسر في المتصفح بالبكسل |
| `-Right` | Int32 | — | — | Named | — | الموضع الأيمن لنافذة المتصفح بالبكسل |
| `-Bottom` | Int32 | — | — | Named | — | موضع الجزء السفلي من نافذة المتصفح بالبكسل |
| `-Centered` | SwitchParameter | — | — | Named | — | فتح نافذة المتصفح في وسط الشاشة |
| `-FullScreen` | SwitchParameter | — | — | Named | — | فتح المتصفح في وضع ملء الشاشة |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | افتح المتصفح في وضع التطبيق (واجهة مستخدم مخفضة) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | تعطيل إضافات المتصفح للجلسة |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | تعطيل مانع النوافذ المنبثقة في جلسة المتصفح |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | تركيز نافذة المتصفح بعد الفتح |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ضع نافذة المتصفح في المقدمة بعد الفتح |
| `-Maximize` | SwitchParameter | — | — | Named | — | قم بتكبير نافذة المتصفح بعد الفتح |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | استعادة التركيز على النافذة السابقة بعد إغلاق المتصفح |
| `-NewWindow` | SwitchParameter | — | — | Named | — | افتح كل نتيجة IMDB في نافذة متصفح جديدة |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | إرجاع عنوان URL فقط بدون فتح المتصفح |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | إرسال مفتاح Escape إلى المتصفح بعد الفتح |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | الحفاظ على تركيز لوحة المفاتيح في المتصفح بعد إرسال المفاتيح |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | استخدم Shift+Enter عند إرسال المفاتيح إلى المتصفح |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | التأخير بالمللي ثانية بين إرسال المفاتيح إلى المتصفح |
| `-NoBorders` | SwitchParameter | — | — | Named | — | فتح نافذة المتصفح بدون حدود |
| `-PlayWright` | SwitchParameter | — | — | Named | — | استخدام متصفح مُدار بواسطة Playwright بدلاً من المتصفح المُثبّت على نظام التشغيل |
| `-Webkit` | SwitchParameter | — | — | Named | — | يفتح متصفح WebKit المُدار بواسطة Playwright. يتضمن -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | قم بتشغيل المتصفح بدون نافذة مرئية |
| `-All` | SwitchParameter | — | — | Named | — | يفتح في جميع المتصفحات الحديثة المسجلة |
| `-SideBySide` | SwitchParameter | — | — | Named | — | افتح نوافذ المتصفح جنبًا إلى جنب لكل نتيجة |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-Instructions` | String | — | — | Named | — | تعليمات لنموذج الذكاء الاصطناعي حول كيفية إنشاء قائمة السلاسل النصية |
| `-Attachments` | String[] | — | — | Named | — | مصفوفة مسارات الملفات لإرفاقها |
| `-ImageDetail` | String | — | — | Named | — | مستوى تفاصيل الصورة لمعالجة الصور. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | مصفوفة تعريفات وظائف يمكن لنموذج الذكاء الاصطناعي استدعاؤها أثناء المعالجة. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | مصفوفة من تعريفات أوامر PowerShell لاستخدامها كأدوات يمكن للذكاء الاصطناعي استدعاؤها. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | مصفوفة من أسماء الأوامر التي لا تتطلب تأكيدًا قبل التنفيذ. |
| `-AudioTemperature` | Double | — | — | Named | — | درجة الحرارة لتوليد الصوت. |
| `-TemperatureResponse` | Double | — | — | Named | — | درجة الحرارة لتوليد الاستجابة. |
| `-CpuThreads` | Int32 | — | — | Named | — | عدد مؤشرات الترابط لوحدة المعالجة المركزية (CPU) المراد استخدامها. |
| `-SuppressRegex` | String | — | — | Named | — | تعبير نمطي لقمع بعض المخرجات. |
| `-AudioContextSize` | Int32 | — | — | Named | — | حجم سياق الصوت للمعالجة. |
| `-SilenceThreshold` | Double | — | — | Named | — | حد الصمت لمعالجة الصوت. |
| `-LengthPenalty` | Double | — | — | Named | — | عقوبة الطول لتوليد التسلسل. |
| `-EntropyThreshold` | Double | — | — | Named | — | حد العتبة الإنتروبية لتصفية المخرجات. |
| `-LogProbThreshold` | Double | — | — | Named | — | حد احتمال السجل لتصفية الإخراج. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | لا يوجد حد للكلام لاكتشاف الصوت. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | تعطيل إخراج الصوت. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | تعطيل إخراج الكلام الفكري. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | تعطيل التنشيط الصوتي (VOX). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | استخدم التقاط صوت سطح المكتب. |
| `-NoContext` | SwitchParameter | — | — | Named | — | تعطيل استخدام السياق. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | استخدم استراتيجية أخذ العينات بالبحث الشعاعي. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | أعد الردود فقط. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | عند التحديد، يتم نسخ قائمة السلاسل الناتجة إلى الحافظة النظامية بعد المعالجة. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | لا تخلط بين النص المراد ترجمته والذي يتكون من نصوص تعليمات أوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بأكبر قدر ممكن من الدقة إلى اللغة العربية (المملكة العربية السعودية). |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | لا تقم بإضافة أفكار النموذج إلى سجل المحادثة |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARAMETER <اسم_المعامل>
يحدد معلمة cmdlet. يمكن تحديد أسماء معلمات متعددة وفاصلة واحدة.
إعداد مثال باستخدام الفاصلة.

يجب تحديد اسم المعلمة بدون علامات اقتباس.

إذا طابقت الشروط التي يحددها المعاملين Positional و ValueFromPositionalArguments، يمكن حذف اسم المعلمة. |
| `-Speak` | SwitchParameter | — | — | Named | — | تمكين تحويل النص إلى كلام للردود الذكية |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | تمكين تحويل النص إلى كلام لاستجابات تفكير الذكاء الاصطناعي |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | لا تقم بتخزين الجلسة في ذاكرة التخزين المؤقت للجلسة |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | تمكين الأدوات الافتراضية لنموذج الذكاء الاصطناعي. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .EXAMPLE

    PS C:\> Get-TestResult -Connection $connection -Filter @("SuiteId eq '2'", "TestName eq 'test1'") | Format-List

    SuiteId  : 2
    SuiteName: Smoke Tests
    TestId   : 5
    TestName : test1
    Outcome  : Passed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -Filter @("SuiteId eq '2'") | Select-Object TestName, Outcome
    
    TestName  Outcome
    --------  -------
    test1     Passed
    test2     Failed
    test3     Passed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -SuiteId 2
    
    SuiteId  : 2
    SuiteName: Smoke Tests
    TestId   : 5
    TestName : test1
    Outcome  : Passed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -SuiteId 2,3 -Outcome Failed
    
    SuiteId  : 2
    SuiteName: Smoke Tests
    TestId   : 6
    TestName : test2
    Outcome  : Failed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -RecentResults
    
    SuiteId  : 3
    SuiteName: Integration Tests
    TestId   : 10
    TestName : test4
    Outcome  : Failed |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | تصفية لأنواع معينة من كتل الترميز. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | الحد الأقصى لطول رد الاتصال لاستدعاءات الأدوات. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Parameter Details

### `-Movies <String[]>`

> مصفوفة عناوين أفلام لتحليلها للتشابه

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> نوع استعلام LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'Knowledge'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> مفتاح API للعمليات المعتمدة للذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> يشير إلى أن LLM لا يدعم مخططات JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> مهلة العمليات الذكاء الاصطناعي بالثواني

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-Temperature <Double>`

> عشوائية الاستجابة لدرجة الحرارة (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OpenInImdb`

> يفتح عمليات بحث IMDB لكل نتيجة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imdb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> لغة جلسة بحث أو تصفح IMDB

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

> مراقبة الفهرس أو الاسم لوضع نافذة المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> عرض نافذة المتصفح بالبكسل

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

> ارتفاع نافذة المتصفح بالبكسل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> رأس HTTP Accept-Language لجلسة المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> فتح المتصفح في وضع التصفح الخاص/المجهول

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> استخدم متصفح Google Chrome لجلسة المتصفح

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

> استخدم Chromium لجلسة المتصفح

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

> استخدم Mozilla Firefox لجلسة المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> موضع النافذة الأيسر في المتصفح بالبكسل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> الموضع الأيمن لنافذة المتصفح بالبكسل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> موضع الجزء السفلي من نافذة المتصفح بالبكسل

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

> فتح نافذة المتصفح في وسط الشاشة

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

> فتح المتصفح في وضع ملء الشاشة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> افتح المتصفح في وضع التطبيق (واجهة مستخدم مخفضة)

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

> تعطيل إضافات المتصفح للجلسة

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

> تعطيل مانع النوافذ المنبثقة في جلسة المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
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

> ضع نافذة المتصفح في المقدمة بعد الفتح

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

> قم بتكبير نافذة المتصفح بعد الفتح

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

> استعادة التركيز على النافذة السابقة بعد إغلاق المتصفح

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

> افتح كل نتيجة IMDB في نافذة متصفح جديدة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnURL`

> https://www.imdb.com/search/

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReturnOnlyURL`

> إرجاع عنوان URL فقط بدون فتح المتصفح

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

> إرسال مفتاح Escape إلى المتصفح بعد الفتح

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

> الحفاظ على تركيز لوحة المفاتيح في المتصفح بعد إرسال المفاتيح

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

> استخدم Shift+Enter عند إرسال المفاتيح إلى المتصفح

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

> التأخير بالمللي ثانية بين إرسال المفاتيح إلى المتصفح

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> فتح نافذة المتصفح بدون حدود

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> استخدام متصفح مُدار بواسطة Playwright بدلاً من المتصفح المُثبّت على نظام التشغيل

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

> يفتح متصفح WebKit المُدار بواسطة Playwright. يتضمن -PlayWright

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
### `-SideBySide`

> افتح نوافذ المتصفح جنبًا إلى جنب لكل نتيجة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
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
### `-Instructions <String>`

> تعليمات لنموذج الذكاء الاصطناعي حول كيفية إنشاء قائمة السلاسل النصية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> مصفوفة مسارات الملفات لإرفاقها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> مستوى تفاصيل الصورة لمعالجة الصور.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> مصفوفة تعريفات وظائف يمكن لنموذج الذكاء الاصطناعي استدعاؤها أثناء المعالجة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> مصفوفة من تعريفات أوامر PowerShell لاستخدامها كأدوات يمكن للذكاء الاصطناعي استدعاؤها.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> مصفوفة من أسماء الأوامر التي لا تتطلب تأكيدًا قبل التنفيذ.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> درجة الحرارة لتوليد الصوت.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> درجة الحرارة لتوليد الاستجابة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> عدد مؤشرات الترابط لوحدة المعالجة المركزية (CPU) المراد استخدامها.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> تعبير نمطي لقمع بعض المخرجات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> حجم سياق الصوت للمعالجة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> حد الصمت لمعالجة الصوت.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> عقوبة الطول لتوليد التسلسل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> حد العتبة الإنتروبية لتصفية المخرجات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> حد احتمال السجل لتصفية الإخراج.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> لا يوجد حد للكلام لاكتشاف الصوت.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> تعطيل إخراج الصوت.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> تعطيل إخراج الكلام الفكري.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> تعطيل التنشيط الصوتي (VOX).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> استخدم التقاط صوت سطح المكتب.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> تعطيل استخدام السياق.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> استخدم استراتيجية أخذ العينات بالبحث الشعاعي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> أعد الردود فقط.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> عند التحديد، يتم نسخ قائمة السلاسل الناتجة إلى الحافظة النظامية بعد المعالجة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> لا تخلط بين النص المراد ترجمته والذي يتكون من نصوص تعليمات أوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بأكبر قدر ممكن من الدقة إلى اللغة العربية (المملكة العربية السعودية).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> لا تقم بإضافة أفكار النموذج إلى سجل المحادثة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> .PARAMETER <اسم_المعامل>
يحدد معلمة cmdlet. يمكن تحديد أسماء معلمات متعددة وفاصلة واحدة.
إعداد مثال باستخدام الفاصلة.

يجب تحديد اسم المعلمة بدون علامات اقتباس.

إذا طابقت الشروط التي يحددها المعاملين Positional و ValueFromPositionalArguments، يمكن حذف اسم المعلمة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> تمكين تحويل النص إلى كلام للردود الذكية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> تمكين تحويل النص إلى كلام لاستجابات تفكير الذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> لا تقم بتخزين الجلسة في ذاكرة التخزين المؤقت للجلسة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> تمكين الأدوات الافتراضية لنموذج الذكاء الاصطناعي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> .EXAMPLE

    PS C:\> Get-TestResult -Connection $connection -Filter @("SuiteId eq '2'", "TestName eq 'test1'") | Format-List

    SuiteId  : 2
    SuiteName: Smoke Tests
    TestId   : 5
    TestName : test1
    Outcome  : Passed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -Filter @("SuiteId eq '2'") | Select-Object TestName, Outcome
    
    TestName  Outcome
    --------  -------
    test1     Passed
    test2     Failed
    test3     Passed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -SuiteId 2
    
    SuiteId  : 2
    SuiteName: Smoke Tests
    TestId   : 5
    TestName : test1
    Outcome  : Passed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -SuiteId 2,3 -Outcome Failed
    
    SuiteId  : 2
    SuiteName: Smoke Tests
    TestId   : 6
    TestName : test2
    Outcome  : Failed
    
    .EXAMPLE
    
    PS C:\> Get-TestResult -Connection $connection -RecentResults
    
    SuiteId  : 3
    SuiteName: Integration Tests
    TestId   : 10
    TestName : test4
    Outcome  : Failed

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> تصفية لأنواع معينة من كتل الترميز.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> الحد الأقصى لطول رد الاتصال لاستدعاءات الأدوات.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ScriptExecutionErrorFixPrompt.md)
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
