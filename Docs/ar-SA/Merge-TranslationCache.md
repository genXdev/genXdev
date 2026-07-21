# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> يدير ذاكرة التخزين المؤقت للترجمة الدائمة مع عمليات كتابة القرص المجمعة لكل لغة.

## Description

يحافظ على ذاكرة تخزين مؤقتة للترجمة على مستوى الوحدة النمطية لأمر Get-TextTranslation.
تنقسم الذاكرة المؤقتة إلى ملفات JSON حسب اللغة تحت المسار
$env:LOCALAPPDATA\GenXdev.PowerShell\ يتم تجميع الإضافات التي يتم استدعاؤها -
تحدث عمليات الكتابة على القرص فقط كل 100 تغيير لكل لغة، أو عند استدعاء -PersistNow.
يقوم -PersistNow أيضًا بمسح الذاكرة المؤقتة في الذاكرة لمنع النمو غير المحدود عبر دفعات المعالجة.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | أعد جدول التجزئة الخاص بذاكرة التخزين المؤقت *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | رمز لغة BCP 47 لإدخال ذاكرة التخزين المؤقت *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | النص المصدر للتخزين المؤقت *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | نص الترجمة المراد تخزينه *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | اكتب جميع ذاكرات التخزين المؤقت المتسخة على القرص وامسح الذاكرة *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | امسح ذاكرة التخزين المؤقت واحذف جميع ملفات القرص *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | إزالة الإدخالات غير المترجمة من جميع ذاكرات التخزين المؤقت للغات على القرص *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> أعد جدول التجزئة الخاص بذاكرة التخزين المؤقت

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> رمز لغة BCP 47 لإدخال ذاكرة التخزين المؤقت

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> النص المصدر للتخزين المؤقت

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> نص الترجمة المراد تخزينه

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> اكتب جميع ذاكرات التخزين المؤقت المتسخة على القرص وامسح الذاكرة

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> امسح ذاكرة التخزين المؤقت واحذف جميع ملفات القرص

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> إزالة الإدخالات غير المترجمة من جميع ذاكرات التخزين المؤقت للغات على القرص

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-DeepLinkImageFile.md)
