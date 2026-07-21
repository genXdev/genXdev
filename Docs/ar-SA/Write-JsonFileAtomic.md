# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يكتب كائنًا بتنسيق JSON إلى ملف بطريقة ذرية لمنع التلف.

## Description

* كتابة ذرية: تستخدم استراتيجية ملف مؤقت + إعادة تسمية لضمان عدم ترك الملف الهدف في حالة تالفة إذا تمت مقاطعة العملية.
* منطق إعادة المحاولة: يعيد محاولة الكتابة حتى MaxRetries مرة مع تأخير قدره RetryDelayMs ملي ثانية بين المحاولات.
* دعم الكائنات: يقبل أي كائن، وليس فقط Hashtable. يتم التسلسل عبر System.Text.Json مع الرجوع إلى ConvertTo-Json لأنواع .NET المعقدة التي لا يمكن تسلسلها أصلاً.
* دعم التجميع: عندما يكون DebounceMs > 0، يتم دمج الكتابات المتتالية السريعة لنفس الملف - يتم كتابة الحمولة الأخيرة فقط بمجرد عدم لمس الملف لمدة DebounceMs مللي ثانية.
* إنشاء الدليل: ينشئ الدلائل الأصلية تلقائياً إذا لم تكن موجودة.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | المسار إلى الملف المراد الكتابة إليه. |
| `-Data` | Object | — | — | 1 | — | الكائن المراد تسلسله إلى JSON وكتابته إلى الملف. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | الحد الأقصى لعدد محاولات إعادة المحاولة لعملية الكتابة الذرية. القيمة الافتراضية هي 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | التأخير بالمللي ثانية بين محاولات إعادة المحاولة. القيمة الافتراضية هي 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | إذا كان أكبر من 0، فسيتم تأخير الكتابة إلى هذا الملف. القيمة الافتراضية هي 0 (معطل). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | الحد الأقصى للعمق للتسلسل JSON. الافتراضي هو 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell وبين التعليمات! لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية). |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell وبين التعليمات! لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية). |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | يوفر خيار تسلسل بديل يحول جميع التعدادات إلى تمثيلها النصي. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

يكتب جدول التجزئة كـ JSON بمسافات بادئة إلى config.json بشكل ذري.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

يكتب كائنات العملية كـ JSON مضغوط بشكل ذري.

## Parameter Details

### `-FilePath <String>`

> المسار إلى الملف المراد الكتابة إليه.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> الكائن المراد تسلسله إلى JSON وكتابته إلى الملف.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> الحد الأقصى لعدد محاولات إعادة المحاولة لعملية الكتابة الذرية. القيمة الافتراضية هي 4.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> التأخير بالمللي ثانية بين محاولات إعادة المحاولة. القيمة الافتراضية هي 200.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> إذا كان أكبر من 0، فسيتم تأخير الكتابة إلى هذا الملف. القيمة الافتراضية هي 0 (معطل).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> الحد الأقصى للعمق للتسلسل JSON. الافتراضي هو 30.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell وبين التعليمات! لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> لا تخلط بين المحتوى المراد ترجمته والذي يتكون من نصوص مساعدة لأوامر PowerShell وبين التعليمات! لا تقم بإدراج صور أو أي شيء. فقط قم بترجمة المحتوى بأكبر قدر ممكن من المباشرة إلى: العربية (المملكة العربية السعودية).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> يوفر خيار تسلسل بديل يحول جميع التعدادات إلى تمثيلها النصي.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-TextFileAtomic.md)
