# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> يقوم بتنسيق مجموعة من الكائنات باستخدام سلسلة قالب تحتوي على عناصر نائبة للخصائص، مما ينتج سلسلة منسقة واحدة.

## Description

يكرر عبر مجموعة من الكائنات ويطبق سلسلة قالب تحتوي على {PropertyName} أو {PropertyName:format} كعناصر نائبة لكل عنصر. يتم دمج النتائج المنسقة باستخدام فاصل قابل للتكوين. يدعم المسافات البادئة، الأسطر الجديدة اللاحقة، والفواصل اللاحقة لتنسيق الإخراج المرن.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | مجموعة الكائنات المراد تنسيقها |
| `-Template` | String | ✅ | — | 1 | — | سلسلة النمط مع العناصر النائبة {PropertyName} أو {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | سلسلة الفاصل لإدراجها بين العناصر المنسقة |
| `-Indentation` | Int32 | — | — | 3 | `0` | عدد مستويات المسافة البادئة (4 مسافات لكل مستوى) لتطبيقها |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | يُلحق محددًا لاحقًا بعد العنصر الأخير |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | إضافة محدد في النهاية عندما لا تكون المصفوفة فارغة |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

الاسم: أليس
العمر: 30

الاسم: بوب
العمر: 25

يقوم بتنسيق مصفوفة من جداول التجزئة مع عناصر نائبة للخصائص.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

يستخدم الاسم المستعار FormatArray مع المسافة البادئة ومحدد مخصص.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> مجموعة الكائنات المراد تنسيقها

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> سلسلة النمط مع العناصر النائبة {PropertyName} أو {PropertyName:format}

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> سلسلة الفاصل لإدراجها بين العناصر المنسقة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> عدد مستويات المسافة البادئة (4 مسافات لكل مستوى) لتطبيقها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> يُلحق محددًا لاحقًا بعد العنصر الأخير

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> إضافة محدد في النهاية عندما لا تكون المصفوفة فارغة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-DoubleEmptyLines.md)
