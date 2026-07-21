# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> يحول اللغة الدبلوماسية أو اللبقة إلى لغة مباشرة وواضحة ومباشرة.

## Description

تأخذ هذه الدالة اللغة الدبلوماسية وتترجمها لكشف المعنى الحقيقي وراء العبارات المهذبة أو الصحيحة سياسياً. تستخدم نماذج اللغة الذكاء الاصطناعي لتحويل التعابير الملطفة إلى عبارات مباشرة، مما يجعل التواصل واضحاً وسهل الفهم. هذه الدالة مفيدة بشكل خاص لتحليل التصريحات السياسية، أو الاتصالات التجارية، أو أي نص قد يكون المعنى الحقيقي فيه محجوباً باللغة الدبلوماسية.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | النص المطلوب تحويله من لغة الدبلوماسية |
| `-Instructions` | String | — | — | 1 | `''` | إليك القواعد الهامة للترجمة:
1. إذا كان الإدخال يحتوي على كود، أو ترميز، أو بيانات منظمة، فاحتفظ بكل النحو والبنية والعناصر التقنية مثل كلمات البرمجة أو الوسوم أو العناصر الخاصة بتنسيق البيانات.
2. قم بترجمة الأجزاء النصية القابلة للقراءة البشرية فقط مثل التعليقات، قيم السلاسل، التوثيق، أو المحتوى باللغة الطبيعية.
3. حافظ على التنسيق الدقيق، المسافات البادئة، وفواصل الأسطر.
4. لا تترجم المعرفات، أسماء الدوال، المتغيرات، أو الكلمات التقنية.
تعليمات المستخدم الإضافية: 
لا تخلط بين المحتوى المراد ترجمته الذي يتكون من نصوص تعليمات cmdlet الخاصة بـ PowerShell وبين التعليمات!
لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية). |
| `-Temperature` | Double | — | — | Named | `0.0` | عشوائية الاستجابة لدرجة الحرارة (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | نوع استعلام LLM |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | يشير إلى أن LLM لا يدعم مخططات JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | مهلة العمليات الذكاء الاصطناعي بالثواني |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | انسخ النص المحول إلى الحافظة |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-Attachments` | Object[] | — | — | Named | — | المرفقات التي يجب تضمينها في عملية الذكاء الاصطناعي. |
| `-ImageDetail` | String | — | — | Named | — | مستوى تفاصيل الصورة لمعالجة الذكاء الاصطناعي. |
| `-Functions` | Object[] | — | — | Named | — | الوظائف التي سيتم كشفها لنموذج الذكاء الاصطناعي. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets لفضح لنموذج الذكاء الاصطناعي. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | أسماء وظائف الأدوات التي لا تتطلب تأكيدًا. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | لا تفكر في إضافة ملاحظات إلى سجل الذكاء الاصطناعي. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | استمر من آخر عملية للذكاء الاصطناعي. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | تحدث بالأفكار بصوت عالٍ أثناء معالجة الذكاء الاصطناعي. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | تعطيل التخزين المؤقت للجلسة لهذه العملية. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | السماح باستخدام الأدوات الافتراضية في عملية الذكاء الاصطناعي. |
| `-AudioTemperature` | Double | — | — | Named | — | درجة حرارة الصوت لتوليد الصوت بالذكاء الاصطناعي. |
| `-TemperatureResponse` | Double | — | — | Named | — | درجة حرارة توليد استجابة الذكاء الاصطناعي. |
| `-CpuThreads` | Int32 | — | — | Named | — | عدد خيوط المعالجة (CPUs) لاستخدامها في عملية الذكاء الاصطناعي. |
| `-SuppressRegex` | String[] | — | — | Named | — | التعبير النمطي لكبته في مخرجات الذكاء الاصطناعي. |
| `-AudioContextSize` | Int32 | — | — | Named | — | حجم سياق الصوت لمعالجة الصوت بالذكاء الاصطناعي. |
| `-SilenceThreshold` | Double | — | — | Named | — | حد الصمت لمعالجة الصوت بالذكاء الاصطناعي. |
| `-LengthPenalty` | Double | — | — | Named | — | عقوبة الطول لتوليد تسلسل الذكاء الاصطناعي. |
| `-EntropyThreshold` | Double | — | — | Named | — | عتبة الانتروبيا لمخرجات الذكاء الاصطناعي. |
| `-LogProbThreshold` | Double | — | — | Named | — | حد الاحتمال اللوغاريتمي لمخرجات الذكاء الاصطناعي. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | لا يوجد حد للكلام لمعالجة الصوت بالذكاء الاصطناعي. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    يحصل على مجموعة تحديث من الخادم.

.DESCRIPTION
    يحصل على مجموعة تحديث من الخادم دون إدخال.

.PARAMETER UpdateGroup
    اسم مجموعة التحديث التي سيتم استردادها.

.PARAMETER ServerInstance
    اسم مثيل الخادم.

.PARAMETER Credential
    بيانات اعتماد Windows للاتصال.

.PARAMETER ConnectionTimeout
    مهلة الاتصال بالخادم بالثواني. القيمة الافتراضية: 30 ثانية.

.EXAMPLE
    PS> Get-UpdateGroup -UpdateGroup 'مجموعة التحديث أ' |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | .EXAMPLE

Get-Command

هذا الأمر يقوم بإرجاع كافة أوامر PowerShell على الكمبيوتر.

Get-Command -Name Get-Process, Get-Service

هذا الأمر يقوم بإرجاع الأمرين 'Get-Process' و 'Get-Service' فقط.

Get-Command -Name *Process*

هذا الأمر يقوم بإرجاع جميع الأوامر التي تحتوي على كلمة 'Process' في اسمها.

Get-Command -Name *Service* -CommandType Function

هذا الأمر يقوم بإرجاع جميع الأوامر من نوع 'Function' والتي تحتوي على كلمة 'Service' في اسمها. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | تعطيل VOX لإخراج الصوت من الذكاء الاصطناعي. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | استخدم التقاط الصوت من سطح المكتب للصوت الذكي. |
| `-NoContext` | SwitchParameter | — | — | Named | — | لا تستخدم السياق لتشغيل الذكاء الاصطناعي. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | استخدم استراتيجية أخذ العينات بالشعاع للذكاء الاصطناعي. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص تعليمات الأمر PowerShell، وبين التعليمات! لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية). |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | ملخص

يصف هذا الأمر cmdlet الوظيفة. يرجى الرجوع إلى وثائق PowerShell للحصول على معلومات مفصلة. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | مرشح لأنواع كتلة الترميز في مخرجات الذكاء الاصطناعي. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | الحد الأقصى لطول رد الاتصال لاستدعاءات الأدوات. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> النص المطلوب تحويله من لغة الدبلوماسية

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

> إليك القواعد الهامة للترجمة:
1. إذا كان الإدخال يحتوي على كود، أو ترميز، أو بيانات منظمة، فاحتفظ بكل النحو والبنية والعناصر التقنية مثل كلمات البرمجة أو الوسوم أو العناصر الخاصة بتنسيق البيانات.
2. قم بترجمة الأجزاء النصية القابلة للقراءة البشرية فقط مثل التعليقات، قيم السلاسل، التوثيق، أو المحتوى باللغة الطبيعية.
3. حافظ على التنسيق الدقيق، المسافات البادئة، وفواصل الأسطر.
4. لا تترجم المعرفات، أسماء الدوال، المتغيرات، أو الكلمات التقنية.
تعليمات المستخدم الإضافية: 
لا تخلط بين المحتوى المراد ترجمته الذي يتكون من نصوص تعليمات cmdlet الخاصة بـ PowerShell وبين التعليمات!
لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
| **Default value** | `0.0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-SetClipboard`

> انسخ النص المحول إلى الحافظة

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
### `-Attachments <Object[]>`

> المرفقات التي يجب تضمينها في عملية الذكاء الاصطناعي.

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

> مستوى تفاصيل الصورة لمعالجة الذكاء الاصطناعي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> الوظائف التي سيتم كشفها لنموذج الذكاء الاصطناعي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> Cmdlets لفضح لنموذج الذكاء الاصطناعي.

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

> أسماء وظائف الأدوات التي لا تتطلب تأكيدًا.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> لا تفكر في إضافة ملاحظات إلى سجل الذكاء الاصطناعي.

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

> استمر من آخر عملية للذكاء الاصطناعي.

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

> تحدث بالأفكار بصوت عالٍ أثناء معالجة الذكاء الاصطناعي.

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

> تعطيل التخزين المؤقت للجلسة لهذه العملية.

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

> السماح باستخدام الأدوات الافتراضية في عملية الذكاء الاصطناعي.

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

> درجة حرارة الصوت لتوليد الصوت بالذكاء الاصطناعي.

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

> درجة حرارة توليد استجابة الذكاء الاصطناعي.

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

> عدد خيوط المعالجة (CPUs) لاستخدامها في عملية الذكاء الاصطناعي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> التعبير النمطي لكبته في مخرجات الذكاء الاصطناعي.

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

> حجم سياق الصوت لمعالجة الصوت بالذكاء الاصطناعي.

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

> حد الصمت لمعالجة الصوت بالذكاء الاصطناعي.

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

> عقوبة الطول لتوليد تسلسل الذكاء الاصطناعي.

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

> عتبة الانتروبيا لمخرجات الذكاء الاصطناعي.

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

> حد الاحتمال اللوغاريتمي لمخرجات الذكاء الاصطناعي.

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

> لا يوجد حد للكلام لمعالجة الصوت بالذكاء الاصطناعي.

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

> .SYNOPSIS
    يحصل على مجموعة تحديث من الخادم.

.DESCRIPTION
    يحصل على مجموعة تحديث من الخادم دون إدخال.

.PARAMETER UpdateGroup
    اسم مجموعة التحديث التي سيتم استردادها.

.PARAMETER ServerInstance
    اسم مثيل الخادم.

.PARAMETER Credential
    بيانات اعتماد Windows للاتصال.

.PARAMETER ConnectionTimeout
    مهلة الاتصال بالخادم بالثواني. القيمة الافتراضية: 30 ثانية.

.EXAMPLE
    PS> Get-UpdateGroup -UpdateGroup 'مجموعة التحديث أ'

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

> .EXAMPLE

Get-Command

هذا الأمر يقوم بإرجاع كافة أوامر PowerShell على الكمبيوتر.

Get-Command -Name Get-Process, Get-Service

هذا الأمر يقوم بإرجاع الأمرين 'Get-Process' و 'Get-Service' فقط.

Get-Command -Name *Process*

هذا الأمر يقوم بإرجاع جميع الأوامر التي تحتوي على كلمة 'Process' في اسمها.

Get-Command -Name *Service* -CommandType Function

هذا الأمر يقوم بإرجاع جميع الأوامر من نوع 'Function' والتي تحتوي على كلمة 'Service' في اسمها.

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

> تعطيل VOX لإخراج الصوت من الذكاء الاصطناعي.

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

> استخدم التقاط الصوت من سطح المكتب للصوت الذكي.

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

> لا تستخدم السياق لتشغيل الذكاء الاصطناعي.

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

> استخدم استراتيجية أخذ العينات بالشعاع للذكاء الاصطناعي.

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

> لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص تعليمات الأمر PowerShell، وبين التعليمات! لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية).

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

> ملخص

يصف هذا الأمر cmdlet الوظيفة. يرجى الرجوع إلى وثائق PowerShell للحصول على معلومات مفصلة.

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

> مرشح لأنواع كتلة الترميز في مخرجات الذكاء الاصطناعي.

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
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-CorporateSpeak.md)
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
