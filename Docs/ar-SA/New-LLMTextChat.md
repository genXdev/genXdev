# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat`

## Synopsis

> يبدأ جلسة محادثة نصية تفاعلية مع قدرات الذكاء الاصطناعي.

## Description

يبدأ جلسة محادثة تفاعلية مع إمكانيات الذكاء الاصطناعي، مما يسمح للمستخدمين بإضافة أو إزالة وظائف PowerShell أثناء المحادثة وتنفيذ أوامر PowerShell. توفر هذه الوظيفة واجهة شاملة للمحادثات المدعومة بالذكاء الاصطناعي مع تكامل أدوات واسع وخيارات تخصيص.

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | يحتوي هذا الأمر على معلمتين مطلوبتين: الاسم والموقع.

- يحدد المعامل Name اسم موقع الويب الجديد.
- يحدد المعامل PhysicalPath المسار الفعلي لملفات المحتوى.
- تشير المعلمة ApplicationPool إلى تجمع التطبيقات الذي سيتم ربط الموقع به.

يتم تعيين معرف الموقع تلقائيًا. لإدارة مواقع الويب التي تم إنشاؤها، استخدم أمر Remove-WebSite للإزالة.

ملاحظة: يجب تشغيل الأمر بصلاحيات المسؤول. *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بشكل مباشر قدر الإمكان إلى: العربية (المملكة العربية السعودية). |
| `-Attachments` | String[] | — | — | 2 | `@()` | مصفوفة مسارات الملفات لإرفاقها |
| `-Temperature` | Double | — | — | 3 | `-1` | عشوائية الاستجابة لدرجة الحرارة (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | مستوى تفاصيل الصورة |
| `-ResponseFormat` | String | — | — | Named | `$null` | هذا هو مخطط JSON لتنسيق الإخراج المطلوب |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | نوع استعلام LLM |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | يشير إلى أن LLM لا يدعم مخططات JSON |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | يعرض عمليات استدعاء سلسلة الأدوات في وحدة التحكم |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | مهلة العمليات الذكاء الاصطناعي بالثواني |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | مصفوفة من تعريفات أوامر PowerShell لاستخدامها كأدوات |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | سيتم إخراج كتل الترميز فقط من الأنواع المحددة |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | لا تخلط بين النص المراد ترجمته والذي يتكون من نصوص تعليمات أوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بأكبر قدر ممكن من الدقة إلى اللغة العربية (المملكة العربية السعودية). |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | لا تخلط بين النص المراد ترجمته والذي يتكون من نصوص تعليمات أوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بأكبر قدر ممكن من الدقة إلى اللغة العربية (المملكة العربية السعودية). |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARAMETER <اسم_المعامل>
يحدد معلمة cmdlet. يمكن تحديد أسماء معلمات متعددة وفاصلة واحدة.
إعداد مثال باستخدام الفاصلة.

يجب تحديد اسم المعلمة بدون علامات اقتباس.

إذا طابقت الشروط التي يحددها المعاملين Positional و ValueFromPositionalArguments، يمكن حذف اسم المعلمة. |
| `-Speak` | SwitchParameter | — | — | Named | — | تمكين تحويل النص إلى كلام للردود الذكية |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | تمكين تحويل النص إلى كلام لاستجابات تفكير الذكاء الاصطناعي |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | سوف يُخرج فقط كتلة الترميز الخاصة بالاستجابات |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | يستخدم داخليًا لاستدعاء وضع الدردشة مرة واحدة فقط بعد استدعاء نموذج اللغة *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | لا تقم بتخزين الجلسة في ذاكرة التخزين المؤقت للجلسة |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | أسماء وظائف الأدوات التي لا تتطلب تأكيدًا |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | الحد الأقصى لطول ردود استدعاء الأداة |
| `-AudioTemperature` | Object | — | — | Named | — | درجة الحرارة لتوليد الصوت |
| `-TemperatureResponse` | Object | — | — | Named | — | درجة الحرارة لاستجابة التوليد |
| `-Language` | Object | — | — | Named | — | لغة النموذج أو المخرجات |
| `-CpuThreads` | Object | — | — | Named | — | عدد خيوط وحدة المعالجة المركزية (CPU) المراد استخدامها |
| `-SuppressRegex` | Object | — | — | Named | — | تعبير منتظم لكتم الإخراج |
| `-AudioContextSize` | Object | — | — | Named | — | حجم سياق الصوت للمعالجة |
| `-SilenceThreshold` | Object | — | — | Named | — | حد الصمت لمعالجة الصوت |
| `-LengthPenalty` | Object | — | — | Named | — | عقوبة الطول لتوليد التسلسل |
| `-EntropyThreshold` | Object | — | — | Named | — | عتبة الإنتروبيا لتصفية المخرجات |
| `-LogProbThreshold` | Object | — | — | Named | — | عتبة الاحتمال اللوغاريتمي لتصفية المخرجات |
| `-NoSpeechThreshold` | Object | — | — | Named | — | لا يوجد حد للكشف عن الصوت |
| `-DontSpeak` | Object | — | — | Named | — | تعطيل الإخراج الصوتي |
| `-DontSpeakThoughts` | Object | — | — | Named | — | تعطيل إخراج الصوت للأفكار |
| `-NoVOX` | Object | — | — | Named | — | تعطيل VOX (التنشيط الصوتي) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | استخدام التقاط صوت سطح المكتب |
| `-NoContext` | Object | — | — | Named | — | تعطيل استخدام السياق |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | استخدم استراتيجية أخذ العينات بالشعاع |
| `-OnlyResponses` | Object | — | — | Named | — | هذا هو النص المترجم. |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Parameter Details

### `-Query <String>`

> يحتوي هذا الأمر على معلمتين مطلوبتين: الاسم والموقع.

- يحدد المعامل Name اسم موقع الويب الجديد.
- يحدد المعامل PhysicalPath المسار الفعلي لملفات المحتوى.
- تشير المعلمة ApplicationPool إلى تجمع التطبيقات الذي سيتم ربط الموقع به.

يتم تعيين معرف الموقع تلقائيًا. لإدارة مواقع الويب التي تم إنشاؤها، استخدم أمر Remove-WebSite للإزالة.

ملاحظة: يجب تشغيل الأمر بصلاحيات المسؤول.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-Instructions <String>`

> لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بشكل مباشر قدر الإمكان إلى: العربية (المملكة العربية السعودية).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 3 |
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
### `-ResponseFormat <String>`

> هذا هو مخطط JSON لتنسيق الإخراج المطلوب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
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
| **Default value** | `'ToolUse'` |
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
### `-ShowToolChainInvocations`

> يعرض عمليات استدعاء سلسلة الأدوات في وحدة التحكم

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
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> مصفوفة من تعريفات أوامر PowerShell لاستخدامها كأدوات

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

> سيتم إخراج كتل الترميز فقط من الأنواع المحددة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` |
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
### `-OutputMarkdownBlocksOnly`

> سوف يُخرج فقط كتلة الترميز الخاصة بالاستجابات

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
### `-NoConfirmationToolFunctionNames <String[]>`

> أسماء وظائف الأدوات التي لا تتطلب تأكيدًا

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> الحد الأقصى لطول ردود استدعاء الأداة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Object>`

> درجة الحرارة لتوليد الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Object>`

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
### `-Language <Object>`

> لغة النموذج أو المخرجات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Object>`

> عدد خيوط وحدة المعالجة المركزية (CPU) المراد استخدامها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <Object>`

> تعبير منتظم لكتم الإخراج

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Object>`

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
### `-SilenceThreshold <Object>`

> حد الصمت لمعالجة الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Object>`

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
### `-EntropyThreshold <Object>`

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
### `-LogProbThreshold <Object>`

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
### `-NoSpeechThreshold <Object>`

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
### `-DontSpeak <Object>`

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
### `-DontSpeakThoughts <Object>`

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
### `-NoVOX <Object>`

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
### `-UseDesktopAudioCapture <Object>`

> استخدام التقاط صوت سطح المكتب

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext <Object>`

> تعطيل استخدام السياق

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy <Object>`

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
### `-OnlyResponses <Object>`

> هذا هو النص المترجم.

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMAudioChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-DeepLinkImageFile.md)
