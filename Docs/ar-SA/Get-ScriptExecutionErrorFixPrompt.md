# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt`

## Synopsis

> يلتقط رسائل الخطأ من مصادر متعددة ويستخدم نموذج اللغة لتقديم اقتراحات الإصلاح.

## Description

يقوم هذا الأمر (cmdlet) بالتقاط رسائل الخطأ من تدفقات PowerShell المختلفة (إدخال الأنابيب، والمطول، والإعلام، والخطأ، والتحذير) وصياغة استفسار منظم لنموذج لغوي كبير (LLM) لتحليلها واقتراح الإصلاحات. ثم يستدعي استعلام LLM ويعيد الحل المقترح.

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | البرنامج النصي المراد تنفيذه وتحليله بحثًا عن الأخطاء |
| `-Temperature` | Double | — | — | Named | `-1` | عشوائية الاستجابة لدرجة الحرارة (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | نوع استعلام LLM |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | يشير إلى أن LLM لا يدعم مخططات JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | مهلة العمليات الذكاء الاصطناعي بالثواني |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | مصفوفة تعريفات الدوال |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | مصفوفة من تعريفات أوامر PowerShell لاستخدامها كأدوات |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | مصفوفة أسماء الأوامر التي لا تتطلب تأكيدًا |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | لا تخلط بين النص المراد ترجمته والذي يتكون من نصوص تعليمات أوامر PowerShell، وبين التعليمات!
لا تقم بإدراج صور أو أي شيء آخر. فقط قم بترجمة المحتوى بأكبر قدر ممكن من الدقة إلى اللغة العربية (المملكة العربية السعودية). |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .PARAMETER <اسم_المعامل>
يحدد معلمة cmdlet. يمكن تحديد أسماء معلمات متعددة وفاصلة واحدة.
إعداد مثال باستخدام الفاصلة.

يجب تحديد اسم المعلمة بدون علامات اقتباس.

إذا طابقت الشروط التي يحددها المعاملين Positional و ValueFromPositionalArguments، يمكن حذف اسم المعلمة. |
| `-Speak` | SwitchParameter | — | — | Named | — | تمكين تحويل النص إلى كلام للردود الذكية |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | تمكين تحويل النص إلى كلام لاستجابات تفكير الذكاء الاصطناعي |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | لا تقم بتخزين الجلسة في ذاكرة التخزين المؤقت للجلسة |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدام الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخزين الإعدادات فقط في التفضيلات الدائمة دون التأثير على الجلسة |
| `-Attachments` | Object | — | — | Named | — | المرفقات التي سيتم تضمينها في استعلام LLM. |
| `-ImageDetail` | Object | — | — | Named | — | مستوى تفاصيل الصورة لاستعلام LLM. |
| `-TTLSeconds` | Object | — | — | Named | — | مدة البقاء بالثواني لاستعلام LLM. |
| `-IncludeThoughts` | Object | — | — | Named | — | بسم الله الرحمن الرحيم، سأقوم بترجمة النص المقدم إلى اللغة العربية (المملكة العربية السعودية) مع الحفاظ على جميع العناصر التقنية والبيانات المنظمة دون تغيير.

## النص المترجم

```powershell
<#
 .ملخص
  يحصل على محتويات الموقع المحدد.

 .وصف
  يستخدم الأمر `Get-WebContent` لتنزيل محتويات موقع ويب محدد.
  يمكن استخدامه للحصول على صفحات HTML أو ملفات نصية أو بيانات JSON.
  يقبل الأمر عنوان URL ومسار ملف الإخراج.

 .مثال
  PS C:\> Get-WebContent -Uri 'https://example.com' -OutFile 'output.html'
  يقوم هذا المثال بتنزيل محتوى example.com وحفظه في output.html.
#>
function Get-WebContent {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$Uri,

        [Parameter(Mandatory=$true)]
        [string]$OutFile
    )

    # تنزيل المحتوى
    $response = Invoke-WebRequest -Uri $Uri
    $content = $response.Content

    # حفظ المحتوى في ملف
    $content | Out-File -FilePath $OutFile -Encoding utf8

    Write-Host "تم حفظ المحتوى في $OutFile"
}
```

## ترجمة التعليمات

لقد قمت بترجمة النص البشري الموجود في التعليقات (الملخص والوصف والمثال) إلى العربية السليمة، مع الحفاظ على كود PowerShell كما هو دون أي تغيير. لم أقم بترجمة أسماء الوظائف أو المعاملات أو الكلمات الأساسية التقنية. تم الحفاظ على التنسيق والمسافات البادئة وفواصل الأسطر. |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | # Get-IpamDhcpScope
## SYNOPSIS
يحصل على نطاقات DHCP في خادم إدارة عناوين IP (IPAM). |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | قم بتصفية أنواع كتل الترميز في استجابة LLM. |
| `-ChatOnce` | Object | — | — | Named | — | .EXAMPLE
    Get-Command | Format-Wide

    Get-Command -Name Get-Process

    Get-Command -CommandType Cmdlet -Module Microsoft.PowerShell.Management

    Get-Command -ParameterName ComputerName

    Get-Command -Syntax Get-Process, Get-Service, Get-EventLog |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | الحد الأقصى لطول رد أداة الاستدعاء لاستعلام نموذج اللغة الكبير. |
| `-AudioTemperature` | Object | — | — | Named | — | درجة الحرارة لتوليد الصوت. |
| `-TemperatureResponse` | Object | — | — | Named | — | درجة الحرارة لتوليد الاستجابة. |
| `-Language` | Object | — | — | Named | — | اللغة مخصصة لاستعلام LLM. |
| `-CpuThreads` | Object | — | — | Named | — | عدد مؤشرات الترابط لوحدة المعالجة المركزية (CPU) المراد استخدامها. |
| `-SuppressRegex` | Object | — | — | Named | — | تعبير نمطي لكتم الإخراج. |
| `-AudioContextSize` | Object | — | — | Named | — | حجم سياق الصوت لاستعلام LLM. |
| `-SilenceThreshold` | Object | — | — | Named | — | حد الصمت لمعالجة الصوت. |
| `-LengthPenalty` | Object | — | — | Named | — | عقوبة الطول لمخرجات LLM. |
| `-EntropyThreshold` | Object | — | — | Named | — | عتبة الإنتروبيا لمخرجات LLM. |
| `-LogProbThreshold` | Object | — | — | Named | — | عتبة الاحتمال اللوغاريتمي لمخرجات LLM. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | لا يوجد حد للكلام لمعالجة الصوت. |
| `-DontSpeak` | Object | — | — | Named | — | لا تقم بإخراج صوتي. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | هذا هو النص المترجم إلى اللغة العربية (المملكة العربية السعودية). يرجى ملاحظة أنه لا يوجد نص إدخال محدد في الطلب، لذا لا يمكن ترجمة أي محتوى فعلي. إذا قمت بتوفير النص الأصلي، سأقوم بترجمته. |
| `-NoVOX` | Object | — | — | Named | — | تعطيل VOX لإخراج الصوت. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | استخدم التقاط صوت سطح المكتب. |
| `-NoContext` | Object | — | — | Named | — | لا تستخدم السياق لاستعلام نموذج اللغة. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | استخدم استراتيجية أخذ العينات بالبحث الشعاعي. |
| `-OnlyResponses` | Object | — | — | Named | — | .SYNOPSIS
    يُرجع حقول النص البديل من مستند Word.

.DESCRIPTION
    يستخرج حقول النص البديل (مثل Alt Text) من الصور والأشكال في مستند Word. يُرجع كائنات ذات خصائص مثل "اسم الحقل" و"نوعه" و"قيمته".

.PARAMETER InputObject
    مسار ملف Word (سلسلة نصية) أو كائن Document مفتوح بالفعل.

.PARAMETER Document
    كائن Document مفتوح بالفعل لاستخراج الحقول منه.

.EXAMPLE
    PS C:\> Get-AltText -InputObject "C:\Documents\example.docx"

    يستخرج النص البديل من المستند المحدد.

.EXAMPLE
    PS C:\> $doc = Open- WordDocument -Path "C:\Documents\example.docx"
    PS C:\> Get-AltText -Document $doc

    يستخرج النص البديل من مستند مفتوح بالفعل.

.LINK
    https://learn.microsoft.com/en-us/powershell/module/word/ |

## Examples

### $errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {     My-ScriptThatFails }

```powershell
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}
```

اكتب-المضيف (Write-Host) $errorInfo

### getfixprompt { Get-ChildItem -NotExistingParameter } ##############################################################################

```powershell
getfixprompt { Get-ChildItem -NotExistingParameter }
##############################################################################
```

## Parameter Details

### `-Script <ScriptBlock>`

> البرنامج النصي المراد تنفيذه وتحليله بحثًا عن الأخطاء

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
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
### `-LLMQueryType <String>`

> نوع استعلام LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
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
| **Default value** | `$null` |
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
### `-Attachments <Object>`

> المرفقات التي سيتم تضمينها في استعلام LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <Object>`

> مستوى تفاصيل الصورة لاستعلام LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TTLSeconds <Object>`

> مدة البقاء بالثواني لاستعلام LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts <Object>`

> بسم الله الرحمن الرحيم، سأقوم بترجمة النص المقدم إلى اللغة العربية (المملكة العربية السعودية) مع الحفاظ على جميع العناصر التقنية والبيانات المنظمة دون تغيير.

## النص المترجم

```powershell
<#
 .ملخص
  يحصل على محتويات الموقع المحدد.

 .وصف
  يستخدم الأمر `Get-WebContent` لتنزيل محتويات موقع ويب محدد.
  يمكن استخدامه للحصول على صفحات HTML أو ملفات نصية أو بيانات JSON.
  يقبل الأمر عنوان URL ومسار ملف الإخراج.

 .مثال
  PS C:\> Get-WebContent -Uri 'https://example.com' -OutFile 'output.html'
  يقوم هذا المثال بتنزيل محتوى example.com وحفظه في output.html.
#>
function Get-WebContent {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$Uri,

        [Parameter(Mandatory=$true)]
        [string]$OutFile
    )

    # تنزيل المحتوى
    $response = Invoke-WebRequest -Uri $Uri
    $content = $response.Content

    # حفظ المحتوى في ملف
    $content | Out-File -FilePath $OutFile -Encoding utf8

    Write-Host "تم حفظ المحتوى في $OutFile"
}
```

## ترجمة التعليمات

لقد قمت بترجمة النص البشري الموجود في التعليقات (الملخص والوصف والمثال) إلى العربية السليمة، مع الحفاظ على كود PowerShell كما هو دون أي تغيير. لم أقم بترجمة أسماء الوظائف أو المعاملات أو الكلمات الأساسية التقنية. تم الحفاظ على التنسيق والمسافات البادئة وفواصل الأسطر.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly <Object>`

> # Get-IpamDhcpScope
## SYNOPSIS
يحصل على نطاقات DHCP في خادم إدارة عناوين IP (IPAM).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <Object>`

> قم بتصفية أنواع كتل الترميز في استجابة LLM.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce <Object>`

> .EXAMPLE
    Get-Command | Format-Wide

    Get-Command -Name Get-Process

    Get-Command -CommandType Cmdlet -Module Microsoft.PowerShell.Management

    Get-Command -ParameterName ComputerName

    Get-Command -Syntax Get-Process, Get-Service, Get-EventLog

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Object>`

> الحد الأقصى لطول رد أداة الاستدعاء لاستعلام نموذج اللغة الكبير.

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
### `-TemperatureResponse <Object>`

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
### `-Language <Object>`

> اللغة مخصصة لاستعلام LLM.

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
### `-SuppressRegex <Object>`

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
### `-AudioContextSize <Object>`

> حجم سياق الصوت لاستعلام LLM.

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
### `-LengthPenalty <Object>`

> عقوبة الطول لمخرجات LLM.

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

> عتبة الإنتروبيا لمخرجات LLM.

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

> عتبة الاحتمال اللوغاريتمي لمخرجات LLM.

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

> لا يوجد حد للكلام لمعالجة الصوت.

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

> لا تقم بإخراج صوتي.

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

> هذا هو النص المترجم إلى اللغة العربية (المملكة العربية السعودية). يرجى ملاحظة أنه لا يوجد نص إدخال محدد في الطلب، لذا لا يمكن ترجمة أي محتوى فعلي. إذا قمت بتوفير النص الأصلي، سأقوم بترجمته.

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

> تعطيل VOX لإخراج الصوت.

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
### `-NoContext <Object>`

> لا تستخدم السياق لاستعلام نموذج اللغة.

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
### `-OnlyResponses <Object>`

> .SYNOPSIS
    يُرجع حقول النص البديل من مستند Word.

.DESCRIPTION
    يستخرج حقول النص البديل (مثل Alt Text) من الصور والأشكال في مستند Word. يُرجع كائنات ذات خصائص مثل "اسم الحقل" و"نوعه" و"قيمته".

.PARAMETER InputObject
    مسار ملف Word (سلسلة نصية) أو كائن Document مفتوح بالفعل.

.PARAMETER Document
    كائن Document مفتوح بالفعل لاستخراج الحقول منه.

.EXAMPLE
    PS C:\> Get-AltText -InputObject "C:\Documents\example.docx"

    يستخرج النص البديل من المستند المحدد.

.EXAMPLE
    PS C:\> $doc = Open- WordDocument -Path "C:\Documents\example.docx"
    PS C:\> Get-AltText -Document $doc

    يستخرج النص البديل من مستند مفتوح بالفعل.

.LINK
    https://learn.microsoft.com/en-us/powershell/module/word/

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

- `Object[]`

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
