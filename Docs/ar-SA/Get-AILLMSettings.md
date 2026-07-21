# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> يحصل على إعدادات LLM لعمليات الذكاء الاصطناعي في GenXdev.AI.

## Description

تقوم هذه الوظيفة باسترداد إعدادات LLM (نموذج اللغة الكبير) المستخدمة من قبل وحدة GenXdev.AI لعمليات الذكاء الاصطناعي المختلفة. يتم استرداد الإعدادات من متغيرات الجلسة، أو التفضيلات الدائمة، أو ملف إعدادات JSON الافتراضي، بهذا الترتيب من الأسبقية. تدعم الوظيفة التحديد التلقائي للتكوين بناءً على موارد ذاكرة النظام المتاحة.

يتم تحديد استراتيجية اختيار الذاكرة تلقائيًا بناءً على معلمات Gpu و Cpu المقدمة:
- إذا تم تحديد كلا المعلمتين Gpu و Cpu: يستخدم الذاكرة المشتركة لوحدة المعالجة المركزية + وحدة معالجة الرسومات
- إذا تم تحديد معلمة Gpu فقط: يفضل ذاكرة وحدة معالجة الرسومات (مع الرجوع إلى ذاكرة الوصول العشوائي للنظام)
- إذا تم تحديد معلمة Cpu فقط: يستخدم ذاكرة الوصول العشوائي للنظام فقط
- إذا لم يتم تحديد أي من المعلمتين: يستخدم الذاكرة المشتركة لوحدة المعالجة المركزية + وحدة معالجة الرسومات (الافتراضي)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | نوع استعلام LLM للحصول على الإعدادات |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | هل لا يدعم نقطة النهاية تنسيق الاستجابة json_schema |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | ما إذا كانت نقطة النهاية لا تدعم وظيفة تحميل الصور |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | ما إذا كانت نقطة النهاية لا تدعم وظيفة استدعاء الأدوات |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وما إلى ذلك |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-SkipSession` | SwitchParameter | — | — | Named | — | تخطي إعدادات الجلسة والحصول عليها من التفضيلات أو الإعدادات الافتراضية فقط |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

الحصول على إعدادات LLM لنوع الاستعلام SimpleIntelligence (الافتراضي).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

يحصل على إعدادات LLM لنوع الاستعلام البرمجي.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

يحصل على إعدادات LLM من التفضيلات أو الإعدادات الافتراضية فقط، متجاهلاً إعدادات الجلسة.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> نوع استعلام LLM للحصول على الإعدادات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
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
### `-NoSupportForJsonSchema`

> هل لا يدعم نقطة النهاية تنسيق الاستجابة json_schema

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> ما إذا كانت نقطة النهاية لا تدعم وظيفة تحميل الصور

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> ما إذا كانت نقطة النهاية لا تدعم وظيفة استدعاء الأدوات

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

> مسح إعدادات الجلسة (المتغير العام) قبل الاسترجاع

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
### `-SkipSession`

> تخطي إعدادات الجلسة والحصول عليها من التفضيلات أو الإعدادات الافتراضية فقط

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-DeepLinkImageFile.md)
