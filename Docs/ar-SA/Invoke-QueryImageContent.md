# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> يحلل محتوى الصورة باستخدام قدرات الرؤية الذكاء الاصطناعي

## Description

معالجة الصور باستخدام قدرات الرؤية الذكاء الاصطناعي لتحليل المحتوى والإجابة عن الاستفسارات المتعلقة بالصورة. تدعم الوظيفة معايير تحليل متنوعة بما في ذلك التحكم في درجة الحرارة لتنظيم عشوائية الاستجابة وحدود الرموز لتحديد طول المخرجات.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | سلسلة الاستعلام لتحليل الصورة |
| `-ImagePath` | String | ✅ | — | 1 | — | المسار إلى ملف الصورة للتحليل |
| `-Instructions` | String | — | — | 2 | — | لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بشكل مباشر قدر الإمكان إلى: العربية (المملكة العربية السعودية). |
| `-ResponseFormat` | String | — | — | Named | `$null` | هذا هو مخطط JSON لتنسيق الإخراج المطلوب |
| `-Temperature` | Double | — | — | Named | `-1` | عشوائية الاستجابة لدرجة الحرارة (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | مستوى تفاصيل الصورة |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | نوع استعلام LLM |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | يشير إلى أن LLM لا يدعم مخططات JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | مهلة العمليات الذكاء الاصطناعي بالثواني |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | لا تخلط بين النص المراد ترجمته والذي يتكون من نصوص تعليمات أوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بأكبر قدر ممكن من الدقة إلى اللغة العربية (المملكة العربية السعودية). |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-Functions` | String[] | — | — | Named | — | تحدد الدوال التي سيتم استخدامها في عملية الذكاء الاصطناعي. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | يحدد cmldts المكشوفة لعملية الذكاء الاصطناعي. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | يحدد أسماء وظائف الأداة التي لا تتطلب تأكيدًا. |
| `-AudioTemperature` | Double | — | — | Named | — | درجة الحرارة لتوليد الرد الصوتي. |
| `-TemperatureResponse` | Double | — | — | Named | — | درجة حرارة لتوليد الاستجابة. |
| `-Language` | String | — | — | Named | — | اللغة المستخدمة للأوصاف والكلمات المفتاحية |
| `-CpuThreads` | Int32 | — | — | Named | — | عدد مؤشرات الترابط لوحدة المعالجة المركزية (CPU) المراد استخدامها. |
| `-SuppressRegex` | String | — | — | Named | — | تعبير نمطي لكتم الإخراج. |
| `-AudioContextSize` | Int32 | — | — | Named | — | حجم سياق الصوت للمعالجة. |
| `-SilenceThreshold` | Double | — | — | Named | — | حد الصمت لمعالجة الصوت. |
| `-LengthPenalty` | Double | — | — | Named | — | عقوبة الطول لتوليد التسلسل. |
| `-EntropyThreshold` | Double | — | — | Named | — | حد العتبة الإنتروبية لتصفية المخرجات. |
| `-LogProbThreshold` | Double | — | — | Named | — | حد احتمال السجل لتصفية الإخراج. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | لا يوجد حد للكلام لاكتشاف الصوت. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | إذا تم تحديد ذلك، لا تنطق المخرجات. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | إذا تم التحديد، لا تتحدث بأفكار النموذج. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | إذا تم تحديده، يقوم بتعطيل VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | إذا تم التحديد، استخدم التقاط صوت سطح المكتب. |
| `-NoContext` | SwitchParameter | — | — | Named | — | إذا تم التحديد، فإنه يعطل استخدام السياق. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | إذا تم التحديد، استخدم استراتيجية أخذ العينات بالبحث الشعاعي. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | إذا تم تحديده، قم بإرجاع الردود فقط. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | إذا تم تحديده، لا تقم بإضافة أفكار إلى السجل. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ملخص: إنشاء كائن اتصال في Active Directory (ADSI) وإنشاء عدد محدد من حسابات مستخدمين تجريبيين في وحدة تنظيمية محددة في المجال. يتم أيضًا تعيين كلمات مرور لهذه الحسابات بحيث لا تنتهي صلاحيتها. المعلمات: -DomainController (اختياري): وحدة تحكم المجال للاتصال بها، الاسم الكامل للنظام (FQDN) أو IP. -Credential: كائن PSCredential للاتصال بـ AD. -OUName: اسم الوحدة التنظيمية (DN) حيث سيتم إنشاء المستخدمين. -UserCount: عدد المستخدمين التجريبيين (تقبل المعلمة قيم الأنابيب). -UserPrefix: بادئة اسم الحساب (مفصولة بـ '-'). -Password: كلمة مرور الحسابات. |
| `-Speak` | SwitchParameter | — | — | Named | — | نطق المخرجات. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | تحدث بأفكار النموذج. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .PARAMETER GroupName
يحدد اسم مجموعة السحابة التي سيتم إرجاعها. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | عامل تصفية لأنواع كتل الترميز. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | إذا تم التحديد، قم بالدردشة مرة واحدة فقط. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | تعطيل التخزين المؤقت للجلسة. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | الحد الأقصى لطول رد الاتصال لاستدعاءات الأدوات. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | فرض طلب الموافقة حتى إذا تم تعيين التفضيل لتثبيت حزمة ImageSharp. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | الموافقة تلقائياً على تثبيت برامج الطرف الثالث وتعيين علامة دائمة لحزم ImageSharp. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

تحليل صورة مع حدود محددة لدرجة الحرارة والرموز المميزة.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

تحليل صورة بسيط باستخدام الأسماء المستعارة والمعلمات الموضعية.

## Parameter Details

### `-Query <String>`

> سلسلة الاستعلام لتحليل الصورة

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath <String>`

> المسار إلى ملف الصورة للتحليل

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بشكل مباشر قدر الإمكان إلى: العربية (المملكة العربية السعودية).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
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
| **Default value** | `'high'` |
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
| **Default value** | `'Pictures'` |
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
### `-Functions <String[]>`

> تحدد الدوال التي سيتم استخدامها في عملية الذكاء الاصطناعي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> يحدد cmldts المكشوفة لعملية الذكاء الاصطناعي.

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

> يحدد أسماء وظائف الأداة التي لا تتطلب تأكيدًا.

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

> درجة الحرارة لتوليد الرد الصوتي.

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

> درجة حرارة لتوليد الاستجابة.

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

> اللغة المستخدمة للأوصاف والكلمات المفتاحية

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

> تعبير نمطي لكتم الإخراج.

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

> إذا تم تحديد ذلك، لا تنطق المخرجات.

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

> إذا تم التحديد، لا تتحدث بأفكار النموذج.

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

> إذا تم تحديده، يقوم بتعطيل VOX.

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

> إذا تم التحديد، استخدم التقاط صوت سطح المكتب.

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

> إذا تم التحديد، فإنه يعطل استخدام السياق.

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

> إذا تم التحديد، استخدم استراتيجية أخذ العينات بالبحث الشعاعي.

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

> إذا تم تحديده، قم بإرجاع الردود فقط.

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

> إذا تم تحديده، لا تقم بإضافة أفكار إلى السجل.

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

> ملخص: إنشاء كائن اتصال في Active Directory (ADSI) وإنشاء عدد محدد من حسابات مستخدمين تجريبيين في وحدة تنظيمية محددة في المجال. يتم أيضًا تعيين كلمات مرور لهذه الحسابات بحيث لا تنتهي صلاحيتها. المعلمات: -DomainController (اختياري): وحدة تحكم المجال للاتصال بها، الاسم الكامل للنظام (FQDN) أو IP. -Credential: كائن PSCredential للاتصال بـ AD. -OUName: اسم الوحدة التنظيمية (DN) حيث سيتم إنشاء المستخدمين. -UserCount: عدد المستخدمين التجريبيين (تقبل المعلمة قيم الأنابيب). -UserPrefix: بادئة اسم الحساب (مفصولة بـ '-'). -Password: كلمة مرور الحسابات.

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

> نطق المخرجات.

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

> تحدث بأفكار النموذج.

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

> .PARAMETER GroupName
يحدد اسم مجموعة السحابة التي سيتم إرجاعها.

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

> عامل تصفية لأنواع كتل الترميز.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> إذا تم التحديد، قم بالدردشة مرة واحدة فقط.

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

> تعطيل التخزين المؤقت للجلسة.

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
### `-ForceConsent`

> فرض طلب الموافقة حتى إذا تم تعيين التفضيل لتثبيت حزمة ImageSharp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> الموافقة تلقائياً على تثبيت برامج الطرف الثالث وتعيين علامة دائمة لحزم ImageSharp.

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
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-AllImageMetaData.md)
