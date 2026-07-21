# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `equalstrue`

## Synopsis

> يقيم عبارة باستخدام الذكاء الاصطناعي لتحديد ما إذا كانت صحيحة أم خاطئة.

## Description

تستخدم هذه الوظيفة نماذج الذكاء الاصطناعي لتقييم العبارات وتحديد قيمتها الصدقية. يمكنها قبول المدخلات مباشرة من خلال المعاملات أو من خط الأنابيب أو من الحافظة النظامية. تُرجع الوظيفة نتيجة منطقية بالإضافة إلى مستوى الثقة والتبرير من نموذج الذكاء الاصطناعي.

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | البيان المراد تقييمه |
| `-Instructions` | String | — | — | 1 | `''` | إرشادات لنموذج الذكاء الاصطناعي حول كيفية تقييم البيان |
| `-Attachments` | String[] | — | — | 2 | `@()` | مصفوفة مسارات الملفات لإرفاقها |
| `-Temperature` | Double | — | — | Named | `-1` | عشوائية الاستجابة لدرجة الحرارة (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | مستوى تفاصيل الصورة |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | مصفوفة تعريفات الدوال |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | مصفوفة من تعريفات أوامر PowerShell لاستخدامها كأدوات |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | مصفوفة أسماء الأوامر التي لا تتطلب تأكيدًا |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | نوع استعلام LLM |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | يشير إلى أن LLM لا يدعم مخططات JSON |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | انسخ النتيجة إلى الحافظة |
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
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | السماح للذكاء الاصطناعي باستخدام الأدوات والإمكانيات الافتراضية |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ## Get-PSImagingTraceLogs

يمكنك الحصول على سجلات تتبع PSImaging، التي توفر معلومات التشخيص للمساعدة في إصلاح المشكلات المتعلقة بنظام PSImaging.

بناء الجملة

`Get-PSImagingTraceLogs [-ReferenceDVC <String[]>] [-CollectSelfHealingNetworkLogs] [-OutputPath <String>] [-NoPrompt] [<CommonParameters>]`

## الوصف

يتم استخدام الأمر cmdlet `Get-PSImagingTraceLogs` لجمع سجلات تتبع PSImaging. هذه السجلات مفيدة عند فتح تذكرة دعم لحل مشكلات مثل فشل التصوير، أو فشل التنزيل، أو أخطاء مشغل الصور. يقوم الأمر cmdlet بتجميع بيانات التتبع من الأجهزة الافتراضية المرجعية وآلات الهدف وتجميعها في ملف مضغوط لتسهيل مشاركتها مع فريق الدعم.

يمكنك أيضًا استخدام المعلمة `-CollectSelfHealingNetworkLogs` لجمع معلومات الشبكة ذات الصلة بالشفاء الذاتي.

## أمثلة

### مثال 1: جمع سجلات التتبع

"`PowerShell`
Get-PSImagingTraceLogs -OutputPath "C:\Logs" 
"

يجمع هذا المثال سجلات تتبع PSImaging من الجهاز الحالي ويحفظها في المسار المحدد.

### مثال 2: جمع سجلات التتبع لأجهزة DVC محددة

"`PowerShell`
Get-PSImagingTraceLogs -ReferenceDVC "DVC-Ref-01", "DVC-Ref-02" -OutputPath "C:\Logs" 
"

يجمع هذا المثال سجلات تتبع PSImaging من أجهزة DVC المرجعية المحددة ويحفظها في المسار المحدد.

### مثال 3: جمع سجلات التتبع مع سجلات شبكة الشفاء الذاتي

"`PowerShell`
Get-PSImagingTraceLogs -CollectSelfHealingNetworkLogs -OutputPath "C:\Logs" -NoPrompt
"

يجمع هذا المثال سجلات تتبع PSImaging وسجلات شبكة الشفاء الذاتي من الجهاز الحالي دون مطالبة، ويحفظها في المسار المحدد.

## المعلمات

### `-ReferenceDVC <String[]>`

يحدد أجهزة DVC المرجعية لجمع السجلات منها. إذا لم يتم تحديدها، يتم جمع السجلات من الجهاز الحالي.

### `-CollectSelfHealingNetworkLogs <SwitchParameter>`

يجمع سجلات شبكة الشفاء الذاتي بالإضافة إلى سجلات التتبع.

### `-OutputPath <String>`

يحدد مسار الإخراج حيث سيتم حفظ ملف السجلات المضغوط.

### `-NoPrompt <SwitchParameter>`

يؤدي تشغيل الأمر cmdlet دون أي مطالبات، وهو مفيد لسيناريوهات الأتمتة.

## المخرجات

يقوم هذا الأمر cmdlet بإنشاء ملف مضغوط (ZIP) يحتوي على سجلات التتبع المجمعة.

## الملاحظات

تأكد من أن لديك الأذونات المناسبة لتشغيل هذا الأمر cmdlet. قد يكون من الضروري تشغيل PowerShell كمسؤول. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | تصفية لأنواع محددة من كتل الترميز |
| `-AudioTemperature` | Double | — | — | Named | — | درجة العشوائية لاستجابة الصوت |
| `-TemperatureResponse` | Double | — | — | Named | — | درجة الحرارة لاستجابة التوليد |
| `-Language` | String | — | — | Named | — | اللغة أو رمز اللغة للرد |
| `-CpuThreads` | Int32 | — | — | Named | — | عدد مؤشرات المعالجة (CPU threads) المراد استخدامها للمعالجة |
| `-SuppressRegex` | String | — | — | Named | — | تعبير عادي للاستبعاد من المخرجات |
| `-AudioContextSize` | Int32 | — | — | Named | — | حجم سياق الصوت للمعالجة |
| `-SilenceThreshold` | Double | — | — | Named | — | حد الصمت للكشف عن الصوت |
| `-LengthPenalty` | Double | — | — | Named | — | عقوبة الطول لتوليد التسلسل |
| `-EntropyThreshold` | Double | — | — | Named | — | عتبة الإنتروبيا لتصفية المخرجات |
| `-LogProbThreshold` | Double | — | — | Named | — | عتبة الاحتمال اللوغاريتمي لتصفية المخرجات |
| `-NoSpeechThreshold` | Double | — | — | Named | — | لا يوجد حد للكشف عن الصوت |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | تعطيل الإخراج الصوتي |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | تعطيل إخراج الصوت للأفكار |
| `-NoVOX` | SwitchParameter | — | — | Named | — | تعطيل VOX (التنشيط الصوتي) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | استخدم التقاط سطح المكتب للصوت كإدخال |
| `-NoContext` | SwitchParameter | — | — | Named | — | لا تستخدم السياق في الاستعلام |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | استخدم استراتيجية أخذ العينات بالشعاع |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | فيما يلي النص المترجم إلى العربية (المملكة العربية السعودية) مع الحفاظ على جميع عناصر الكود والبيانات المنظمة:

```powershell
<#
 .ملخص
  يحصل على الأحداث من سجلات الأحداث والأجهزة.

 .وصف
  يحصل على الأحداث من سجلات الأحداث وأجهزة تتبع الأحداث. يتطلب هذا الأمر إذن مسؤول.

 .مثال
  PS C:> Get-HotFix
  يحصل على جميع الإصلاحات العاجلة على الكمبيوتر المحلي.

 .معلمة ComputerName
  يحدد اسم الكمبيوتر. القيمة الافتراضية هي الكمبيوتر المحلي.

 .معلمة Credential
  يحدد حساب مستخدم لديه إذن لأداء هذا الإجراء.

 .معلمة Description
  يحدد وصف الإصلاح العاجل.

 .معلمة Id
  يحدد معرف الإصلاح العاجل.

 .معلمة LogName
  يحدد اسم سجل الأحداث.

 .معلمة ProviderName
  يحدد اسم موفر الأحداث.

 .معلمة StartTime
  يحدد تاريخ ووقت بدء الأحداث.

 .معلمة EndTime
  يحدد تاريخ ووقت انتهاء الأحداث.

 .معلمة MaxEvents
  يحدد الحد الأقصى لعدد الأحداث المراد استردادها.

 .معلمة ListLog
  يعرض سجلات الأحداث المتاحة.

 .معلمة ListProvider
  يعرض موفري الأحداث المتاحة.

 .معلمة Oldest
  يحدد أقدم الأحداث.

 .معلمة Force
  يجبر الأمر على التنفيذ بدون تأكيد.

 .معلمة NoClobber
  لا يحل محل أي قائمة أهداف موجودة.

 .معلمة Path
  يحدد مسار ملف السجل.

 .معلمة FilterXml
  يحدد استعلام مرشح XML.

 .معلمة FilterHashTable
  يحدد استعلام مرشح جدول التجزئة.

 .معلمة AsBaseObject
  يعيد كائنات كقاعدة.

 .معلمة AsCimInstance
  يعيد كائنات كمثيلات CIM.

 .معلمة Functionality
  يحدد وظائف الكمبيوتر.

 .معلمة Locale
  يحدد الإعدادات المحلية.

 .معلمة PipelineVariable
  يحدد متغير خط الأنابيب.

 .معلمة UseCulture
  يستخدم ثقافة النظام.

 .معلمة UseSSL
  يستخدم SSL.

 .معلمة Session
  يحدد جلسة.

 .معلمة ThrottleLimit
  يحدد حد الخانق.

 .معلمة Timeout
  يحدد المهلة.

 .معلمة Authentication
  يحدد طريقة المصادقة.

 .معلمة Port
  يحدد المنفذ.

 .معلمة Schedule
  يحدد الجدول الزمني.

 .معلمة TargetObject
  يحدد الكائن الهدف.

 .معلمة Property
  يحدد الخصائص.

 .معلمة ExcludeProperty
  يستثني الخصائص.

 .معلمة IncludeTotalCount
  يتضمن العدد الإجمالي.

 .معلمة Skip
  يتخطى عددًا محددًا من العناصر.

 .معلمة First
  يحصل على العناصر الأولى.

 .معلمة Last
  يحصل على العناصر الأخيرة.

 .معلمة Filter
  يحدد مرشحًا.

 .معلمة Raw
  يعيد البيانات الأولية.

 .معلمة ReadCount
  يحدد عدد القراءات.

 .معلمة Encoding
  يحدد الترميز.

 .معلمة DeliveryMode
  يحدد وضع التسليم.

 .معلمة DeliveryOptimization
  يحدد تحسين التسليم.

 .معلمة FormatEnumerationLimit
  يحدد حد تعداد التنسيق.

 .معلمة OutVariable
  يحدد متغير الإخراج.

 .معلمة OutBuffer
  يحدد مخزن الإخراج المؤقت.

 .معلمة InformationVariable
  يحدد متغير المعلومات.

 .معلمة InformationAction
  يحدد إجراء المعلومات.

 .معلمة ErrorVariable
  يحدد متغير الخطأ.

 .معلمة ErrorAction
  يحدد إجراء الخطأ.

 .معلمة WarningVariable
  يحدد متغير التحذير.

 .معلمة WarningAction
  يحدد إجراء التحذير.

 .معلمة Verbose
  يعرض معلومات مفصلة.

 .معلمة Debug
  يعرض معلومات تصحيح الأخطاء.

 .معلمة Confirm
  يطلب التأكيد قبل التنفيذ.

 .معلمة WhatIf
  يوضح ما سيحدث إذا تم تنفيذ الأمر.

 .معلمة UseTransaction
  يستخدم المعاملة.

 .معلمة AsJob
  يعيد المهمة ككائن.

 .معلمة JobName
  يحدد اسم المهمة.

 .معلمة JobVariable
  يحدد متغير المهمة.

 .معلمة Runspace
  يحدد مساحة التشغيل.

 .معلمة RunspacePool
  يحدد مجموعة مساحات التشغيل.

 .معلمة PowerShellVersion
  يحدد إصدار PowerShell.

 .معلمة SkipCertificateCheck
  يتجاوز فحص الشهادة.

 .معلمة CertificateThumbprint
  يحدد بصمة الشهادة.

 .معلمة UseDefaultCredential
  يستخدم بيانات الاعتماد الافتراضية.

 .معلمة AllowRedirection
  يسمح بإعادة التوجيه.

 .معلمة MaximumRedirection
  يحدد أقصى عدد لإعادة التوجيه.

 .معلمة Proxy
  يحدد الوكيل.

 .معلمة ProxyCredential
  يحدد بيانات اعتماد الوكيل.

 .معلمة ProxyUseDefaultCredentials
  يستخدم بيانات الاعتماد الافتراضية للوكيل.
#>
``` |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Parameter Details

### `-Text <String>`

> البيان المراد تقييمه

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> إرشادات لنموذج الذكاء الاصطناعي حول كيفية تقييم البيان

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> مصفوفة مسارات الملفات لإرفاقها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-ImageDetail <String>`

> مستوى تفاصيل الصورة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> مصفوفة تعريفات الدوال

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> مصفوفة من تعريفات أوامر PowerShell لاستخدامها كأدوات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> مصفوفة أسماء الأوامر التي لا تتطلب تأكيدًا

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> نوع استعلام LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
### `-SetClipboard`

> انسخ النتيجة إلى الحافظة

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

> السماح للذكاء الاصطناعي باستخدام الأدوات والإمكانيات الافتراضية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-OutputMarkdownBlocksOnly`

> ## Get-PSImagingTraceLogs

يمكنك الحصول على سجلات تتبع PSImaging، التي توفر معلومات التشخيص للمساعدة في إصلاح المشكلات المتعلقة بنظام PSImaging.

بناء الجملة

`Get-PSImagingTraceLogs [-ReferenceDVC <String[]>] [-CollectSelfHealingNetworkLogs] [-OutputPath <String>] [-NoPrompt] [<CommonParameters>]`

## الوصف

يتم استخدام الأمر cmdlet `Get-PSImagingTraceLogs` لجمع سجلات تتبع PSImaging. هذه السجلات مفيدة عند فتح تذكرة دعم لحل مشكلات مثل فشل التصوير، أو فشل التنزيل، أو أخطاء مشغل الصور. يقوم الأمر cmdlet بتجميع بيانات التتبع من الأجهزة الافتراضية المرجعية وآلات الهدف وتجميعها في ملف مضغوط لتسهيل مشاركتها مع فريق الدعم.

يمكنك أيضًا استخدام المعلمة `-CollectSelfHealingNetworkLogs` لجمع معلومات الشبكة ذات الصلة بالشفاء الذاتي.

## أمثلة

### مثال 1: جمع سجلات التتبع

"`PowerShell`
Get-PSImagingTraceLogs -OutputPath "C:\Logs" 
"

يجمع هذا المثال سجلات تتبع PSImaging من الجهاز الحالي ويحفظها في المسار المحدد.

### مثال 2: جمع سجلات التتبع لأجهزة DVC محددة

"`PowerShell`
Get-PSImagingTraceLogs -ReferenceDVC "DVC-Ref-01", "DVC-Ref-02" -OutputPath "C:\Logs" 
"

يجمع هذا المثال سجلات تتبع PSImaging من أجهزة DVC المرجعية المحددة ويحفظها في المسار المحدد.

### مثال 3: جمع سجلات التتبع مع سجلات شبكة الشفاء الذاتي

"`PowerShell`
Get-PSImagingTraceLogs -CollectSelfHealingNetworkLogs -OutputPath "C:\Logs" -NoPrompt
"

يجمع هذا المثال سجلات تتبع PSImaging وسجلات شبكة الشفاء الذاتي من الجهاز الحالي دون مطالبة، ويحفظها في المسار المحدد.

## المعلمات

### `-ReferenceDVC <String[]>`

يحدد أجهزة DVC المرجعية لجمع السجلات منها. إذا لم يتم تحديدها، يتم جمع السجلات من الجهاز الحالي.

### `-CollectSelfHealingNetworkLogs <SwitchParameter>`

يجمع سجلات شبكة الشفاء الذاتي بالإضافة إلى سجلات التتبع.

### `-OutputPath <String>`

يحدد مسار الإخراج حيث سيتم حفظ ملف السجلات المضغوط.

### `-NoPrompt <SwitchParameter>`

يؤدي تشغيل الأمر cmdlet دون أي مطالبات، وهو مفيد لسيناريوهات الأتمتة.

## المخرجات

يقوم هذا الأمر cmdlet بإنشاء ملف مضغوط (ZIP) يحتوي على سجلات التتبع المجمعة.

## الملاحظات

تأكد من أن لديك الأذونات المناسبة لتشغيل هذا الأمر cmdlet. قد يكون من الضروري تشغيل PowerShell كمسؤول.

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

> تصفية لأنواع محددة من كتل الترميز

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> درجة العشوائية لاستجابة الصوت

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

> درجة الحرارة لاستجابة التوليد

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> اللغة أو رمز اللغة للرد

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

> عدد مؤشرات المعالجة (CPU threads) المراد استخدامها للمعالجة

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

> تعبير عادي للاستبعاد من المخرجات

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

> حجم سياق الصوت للمعالجة

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

> حد الصمت للكشف عن الصوت

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

> عقوبة الطول لتوليد التسلسل

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

> عتبة الإنتروبيا لتصفية المخرجات

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

> عتبة الاحتمال اللوغاريتمي لتصفية المخرجات

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

> لا يوجد حد للكشف عن الصوت

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

> تعطيل الإخراج الصوتي

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

> تعطيل إخراج الصوت للأفكار

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

> تعطيل VOX (التنشيط الصوتي)

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

> استخدم التقاط سطح المكتب للصوت كإدخال

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

> لا تستخدم السياق في الاستعلام

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

> استخدم استراتيجية أخذ العينات بالشعاع

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

> فيما يلي النص المترجم إلى العربية (المملكة العربية السعودية) مع الحفاظ على جميع عناصر الكود والبيانات المنظمة:

```powershell
<#
 .ملخص
  يحصل على الأحداث من سجلات الأحداث والأجهزة.

 .وصف
  يحصل على الأحداث من سجلات الأحداث وأجهزة تتبع الأحداث. يتطلب هذا الأمر إذن مسؤول.

 .مثال
  PS C:> Get-HotFix
  يحصل على جميع الإصلاحات العاجلة على الكمبيوتر المحلي.

 .معلمة ComputerName
  يحدد اسم الكمبيوتر. القيمة الافتراضية هي الكمبيوتر المحلي.

 .معلمة Credential
  يحدد حساب مستخدم لديه إذن لأداء هذا الإجراء.

 .معلمة Description
  يحدد وصف الإصلاح العاجل.

 .معلمة Id
  يحدد معرف الإصلاح العاجل.

 .معلمة LogName
  يحدد اسم سجل الأحداث.

 .معلمة ProviderName
  يحدد اسم موفر الأحداث.

 .معلمة StartTime
  يحدد تاريخ ووقت بدء الأحداث.

 .معلمة EndTime
  يحدد تاريخ ووقت انتهاء الأحداث.

 .معلمة MaxEvents
  يحدد الحد الأقصى لعدد الأحداث المراد استردادها.

 .معلمة ListLog
  يعرض سجلات الأحداث المتاحة.

 .معلمة ListProvider
  يعرض موفري الأحداث المتاحة.

 .معلمة Oldest
  يحدد أقدم الأحداث.

 .معلمة Force
  يجبر الأمر على التنفيذ بدون تأكيد.

 .معلمة NoClobber
  لا يحل محل أي قائمة أهداف موجودة.

 .معلمة Path
  يحدد مسار ملف السجل.

 .معلمة FilterXml
  يحدد استعلام مرشح XML.

 .معلمة FilterHashTable
  يحدد استعلام مرشح جدول التجزئة.

 .معلمة AsBaseObject
  يعيد كائنات كقاعدة.

 .معلمة AsCimInstance
  يعيد كائنات كمثيلات CIM.

 .معلمة Functionality
  يحدد وظائف الكمبيوتر.

 .معلمة Locale
  يحدد الإعدادات المحلية.

 .معلمة PipelineVariable
  يحدد متغير خط الأنابيب.

 .معلمة UseCulture
  يستخدم ثقافة النظام.

 .معلمة UseSSL
  يستخدم SSL.

 .معلمة Session
  يحدد جلسة.

 .معلمة ThrottleLimit
  يحدد حد الخانق.

 .معلمة Timeout
  يحدد المهلة.

 .معلمة Authentication
  يحدد طريقة المصادقة.

 .معلمة Port
  يحدد المنفذ.

 .معلمة Schedule
  يحدد الجدول الزمني.

 .معلمة TargetObject
  يحدد الكائن الهدف.

 .معلمة Property
  يحدد الخصائص.

 .معلمة ExcludeProperty
  يستثني الخصائص.

 .معلمة IncludeTotalCount
  يتضمن العدد الإجمالي.

 .معلمة Skip
  يتخطى عددًا محددًا من العناصر.

 .معلمة First
  يحصل على العناصر الأولى.

 .معلمة Last
  يحصل على العناصر الأخيرة.

 .معلمة Filter
  يحدد مرشحًا.

 .معلمة Raw
  يعيد البيانات الأولية.

 .معلمة ReadCount
  يحدد عدد القراءات.

 .معلمة Encoding
  يحدد الترميز.

 .معلمة DeliveryMode
  يحدد وضع التسليم.

 .معلمة DeliveryOptimization
  يحدد تحسين التسليم.

 .معلمة FormatEnumerationLimit
  يحدد حد تعداد التنسيق.

 .معلمة OutVariable
  يحدد متغير الإخراج.

 .معلمة OutBuffer
  يحدد مخزن الإخراج المؤقت.

 .معلمة InformationVariable
  يحدد متغير المعلومات.

 .معلمة InformationAction
  يحدد إجراء المعلومات.

 .معلمة ErrorVariable
  يحدد متغير الخطأ.

 .معلمة ErrorAction
  يحدد إجراء الخطأ.

 .معلمة WarningVariable
  يحدد متغير التحذير.

 .معلمة WarningAction
  يحدد إجراء التحذير.

 .معلمة Verbose
  يعرض معلومات مفصلة.

 .معلمة Debug
  يعرض معلومات تصحيح الأخطاء.

 .معلمة Confirm
  يطلب التأكيد قبل التنفيذ.

 .معلمة WhatIf
  يوضح ما سيحدث إذا تم تنفيذ الأمر.

 .معلمة UseTransaction
  يستخدم المعاملة.

 .معلمة AsJob
  يعيد المهمة ككائن.

 .معلمة JobName
  يحدد اسم المهمة.

 .معلمة JobVariable
  يحدد متغير المهمة.

 .معلمة Runspace
  يحدد مساحة التشغيل.

 .معلمة RunspacePool
  يحدد مجموعة مساحات التشغيل.

 .معلمة PowerShellVersion
  يحدد إصدار PowerShell.

 .معلمة SkipCertificateCheck
  يتجاوز فحص الشهادة.

 .معلمة CertificateThumbprint
  يحدد بصمة الشهادة.

 .معلمة UseDefaultCredential
  يستخدم بيانات الاعتماد الافتراضية.

 .معلمة AllowRedirection
  يسمح بإعادة التوجيه.

 .معلمة MaximumRedirection
  يحدد أقصى عدد لإعادة التوجيه.

 .معلمة Proxy
  يحدد الوكيل.

 .معلمة ProxyCredential
  يحدد بيانات اعتماد الوكيل.

 .معلمة ProxyUseDefaultCredentials
  يستخدم بيانات الاعتماد الافتراضية للوكيل.
#>
```

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

> The `-MaxToolcallBackLength` parameter.

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

- `Boolean`

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
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageScenesUpdate.md)
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
