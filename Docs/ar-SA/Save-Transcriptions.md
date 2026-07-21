# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> يُولّد ملفات ترجمة للملفات الصوتية والفيديو باستخدام ويسبر من أوبن إيه آي.

## Description

يبحث بشكل متكرر عن ملفات الوسائط في الدليل المحدد ويستخدم نموذج Whisper المحلي من OpenAI لإنشاء ملفات ترجمة بتنسيق SRT. تدعم الوظيفة تنسيقات صوت/فيديو متعددة ويمكنها اختيارياً ترجمة الترجمة إلى لغة مختلفة باستخدام استعلام LLM. يتبع تسمية الملفات نمطاً موحداً مع رموز اللغة (مثل video.mp4.en.srt).

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | مسار الدليل للبحث عن ملفات الوسائط |
| `-LanguageIn` | String | — | — | 1 | — | اللغة المتوقعة في الصوت. |
| `-LanguageOut` | String | — | — | 2 | — | يضبط اللغة التي سيتم الترجمة إليها. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | مجموع عتبة الطوابع الزمنية للرمز الافتراضي، القيمة الافتراضية هي 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | الحد الأقصى لعدد الرموز لكل مقطع |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | المدة القصوى للصمت قبل إيقاف التسجيل تلقائيًا |
| `-SilenceThreshold` | Int32 | — | — | Named | — | عتبة اكتشاف الصمت (0..32767 الافتراضي 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | عدد سلاسل المعالجة (الخيوط) لوحدة المعالجة المركزية المستخدمة، القيمة الافتراضية هي 0 (تلقائي) |
| `-Temperature` | Single | — | — | Named | `0.5` | درجة الحرارة للتعرف على الكلام |
| `-TemperatureInc` | Single | — | — | Named | — | زيادة درجة الحرارة |
| `-Prompt` | String | — | — | Named | — | الموجه لاستخدام النموذج |
| `-SuppressRegex` | String | — | — | Named | `$null` | تعبير عادي (Regex) لقمع الرموز من المخرجات |
| `-AudioContextSize` | Int32 | — | — | Named | — | حجم سياق الصوت |
| `-MaxDuration` | Object | — | — | Named | — | الحد الأقصى لمدة الصوت |
| `-Offset` | Object | — | — | Named | — | إزاحة الصوت |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | الحد الأقصى لعدد الرموز النصية الأخيرة |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | الحد الأقصى لطول المقطع |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | ابدأ الطوابع الزمنية من هذه اللحظة |
| `-LengthPenalty` | Single | — | — | Named | — | عقوبة الطول |
| `-EntropyThreshold` | Single | — | — | Named | — | عتبة الإنتروبيا |
| `-LogProbThreshold` | Single | — | — | Named | — | عتبة الاحتمال اللوغاريتمي |
| `-NoSpeechThreshold` | Single | — | — | Named | — | لا يوجد حد للكلام |
| `-PreferencesDatabasePath` | String | — | — | Named | — | مسار قاعدة البيانات لملفات بيانات التفضيلات |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | ما إذا كان سيتم تضمين الطوابع الزمنية للرموز في المخرجات |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | سواء للتقسيم على حدود الكلمات |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | ما إذا كان سيتم تجاهل الصمت (سيؤدي إلى إفساد الطوابع الزمنية) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | ما إذا كان سيتم عرض التقدم |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | ما إذا كان عدم إخفاء الأسطر الفارغة |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | استخدام جزء واحد فقط |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | ما إذا كان يجب طباعة الرموز الخاصة |
| `-NoContext` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    يحصل على قائمة الخوادم المسجلة في Active Directory.

.DESCRIPTION
    يسترجع هذا الأمر قائمة بأسماء خوادم Windows من Active Directory التي تطابق معايير التصفية المحددة.

.PARAMETER DomainName
    اسم المجال المراد الاستعلام عنه.

.PARAMETER Filter
    مرشح LDAP لتصفية النتائج.

.EXAMPLE
    Get-ADServer -DomainName "contoso.com" |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | استخدم استراتيجية أخذ العينات بالشعاع |
| `-ModelType` | String | — | — | Named | — | نوع نموذج Whisper المراد استخدامه، الافتراضي هو LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | إرجاع كائنات بدلاً من سلاسل نصية |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | ما إذا كان سيتم استخدام التقاط صوت سطح المكتب بدلاً من إدخال الميكروفون |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | استخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وما إلى ذلك |
| `-ClearSession` | SwitchParameter | — | — | Named | — | مسح الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور وما إلى ذلك |
| `-SkipSession` | SwitchParameter | — | — | Named | — | لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور، إلخ |

## Examples

### Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

```powershell
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"
```

### Save-Transcriptions "C:\Media" "Japanese" "English"

```powershell
Save-Transcriptions "C:\Media" "Japanese" "English"
```

## Parameter Details

### `-DirectoryPath <String>`

> مسار الدليل للبحث عن ملفات الوسائط

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> اللغة المتوقعة في الصوت.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> يضبط اللغة التي سيتم الترجمة إليها.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> مجموع عتبة الطوابع الزمنية للرمز الافتراضي، القيمة الافتراضية هي 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> الحد الأقصى لعدد الرموز لكل مقطع

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> المدة القصوى للصمت قبل إيقاف التسجيل تلقائيًا

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> عتبة اكتشاف الصمت (0..32767 الافتراضي 30)

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

> عدد سلاسل المعالجة (الخيوط) لوحدة المعالجة المركزية المستخدمة، القيمة الافتراضية هي 0 (تلقائي)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> درجة الحرارة للتعرف على الكلام

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

> زيادة درجة الحرارة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> الموجه لاستخدام النموذج

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

> تعبير عادي (Regex) لقمع الرموز من المخرجات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> حجم سياق الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Object>`

> الحد الأقصى لمدة الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Object>`

> إزاحة الصوت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Int32>`

> الحد الأقصى لعدد الرموز النصية الأخيرة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Int32>`

> الحد الأقصى لطول المقطع

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Object>`

> ابدأ الطوابع الزمنية من هذه اللحظة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> عقوبة الطول

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> عتبة الإنتروبيا

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> عتبة الاحتمال اللوغاريتمي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> لا يوجد حد للكلام

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
### `-WithTokenTimestamps`

> ما إذا كان سيتم تضمين الطوابع الزمنية للرموز في المخرجات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> سواء للتقسيم على حدود الكلمات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> ما إذا كان سيتم تجاهل الصمت (سيؤدي إلى إفساد الطوابع الزمنية)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> ما إذا كان سيتم عرض التقدم

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> ما إذا كان عدم إخفاء الأسطر الفارغة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> استخدام جزء واحد فقط

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> ما إذا كان يجب طباعة الرموز الخاصة

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

> .SYNOPSIS
    يحصل على قائمة الخوادم المسجلة في Active Directory.

.DESCRIPTION
    يسترجع هذا الأمر قائمة بأسماء خوادم Windows من Active Directory التي تطابق معايير التصفية المحددة.

.PARAMETER DomainName
    اسم المجال المراد الاستعلام عنه.

.PARAMETER Filter
    مرشح LDAP لتصفية النتائج.

.EXAMPLE
    Get-ADServer -DomainName "contoso.com"

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
### `-ModelType <String>`

> نوع نموذج Whisper المراد استخدامه، الافتراضي هو LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> إرجاع كائنات بدلاً من سلاسل نصية

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> ما إذا كان سيتم استخدام التقاط صوت سطح المكتب بدلاً من إدخال الميكروفون

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

> لا تستخدم الإعدادات البديلة المخزنة في الجلسة لتفضيلات الذكاء الاصطناعي مثل اللغة ومجموعات الصور، إلخ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-FoundImageFaces.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-AllImageMetaData.md)
