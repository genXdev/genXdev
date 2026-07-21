# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> يزيل الأسطر الفارغة المزدوجة (المتتالية) من سلسلة نص برمجي، مع إمكانية إعادة تنسيق المخرجات.

## Description

ينظف الكود المصدري أو النص عن طريق دمج الأسطر الفارغة المتتالية في سطر فارغ واحد. هذا يحسن قابلية القراءة ويتبع اصطلاحات تنسيق الكود الشائعة. عند تحديد المفتاح -Reformat، يتم تطبيق قواعد تنسيق إضافية لتطبيع هيكل الكود.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | مصدر الشفرة أو سلسلة النص المراد معالجتها لإزالة الأسطر الفارغة المزدوجة |
| `-Reformat` | SwitchParameter | — | — | Named | — | طبِّق قواعد تنسيق إضافية بخلاف إزالة الأسطر الفارغة المزدوجة |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

يقوم بتمرير كود المصدر عبر الوظيفة لإزالة الأسطر الفارغة المتتالية.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

يزيل الأسطر الفارغة المزدوجة ويطبق تنسيقًا إضافيًا.

## Parameter Details

### `-code <String>`

> مصدر الشفرة أو سلسلة النص المراد معالجتها لإزالة الأسطر الفارغة المزدوجة

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> طبِّق قواعد تنسيق إضافية بخلاف إزالة الأسطر الفارغة المزدوجة

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-ArrayTemplate.md)
