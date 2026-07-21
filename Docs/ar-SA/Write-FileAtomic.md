# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يكتب البايتات إلى ملف بشكل ذري لمنع التلف.

## Description

* الكتابة الذرية: تستخدم استراتيجية ملف مؤقت + إعادة تسمية لضمان عدم ترك الملف الهدف في حالة تالفة إذا تمت مقاطعة العملية.
* منطق إعادة المحاولة: يعيد محاولة الكتابة حتى MaxRetries مرة مع تأخير قدره RetryDelayMs ميلي ثانية بين المحاولات.
* دعم التبديد: عندما يكون DebounceMs > 0، يتم دمج عمليات الكتابة المتتالية السريعة لنفس الملف - تتم كتابة الحمولة الأخيرة فقط بمجرد عدم لمس الملف لمدة DebounceMs ميلي ثانية.
* إنشاء الدليل: ينشئ الدلائل الأصلية تلقائيًا إذا لم تكن موجودة.

## Syntax

```powershell
Write-FileAtomic -FilePath <String> [[-Data] <Byte[]>] [-DebounceMs <Int32>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | المسار إلى الملف المراد الكتابة إليه. |
| `-Data` | Byte[] | — | — | 1 | — | مصفوفة البايت المراد كتابتها إلى الملف. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | الحد الأقصى لعدد محاولات إعادة المحاولة لعملية الكتابة الذرية. القيمة الافتراضية هي 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | التأخير بالمللي ثانية بين محاولات إعادة المحاولة. القيمة الافتراضية هي 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | إذا كان أكبر من 0، فسيتم تأخير الكتابة إلى هذا الملف. القيمة الافتراضية هي 0 (معطل). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

يكتب مصفوفة بايت إلى data.bin بشكل ذري مع إعدادات إعادة المحاولة الافتراضية.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

يكتب بسرعة 100 مرة ولكن فقط المحتوى النهائي (100) يتم حفظه على القرص بعد فترة هدوء مدتها 5 ثوانٍ.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

يكتب مع إعادة محاولة مخصصة: حتى 10 محاولات مع 500 مللي ثانية بين كل منها.

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
### `-Data <Byte[]>`

> مصفوفة البايت المراد كتابتها إلى الملف.

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
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-TextFileAtomic.md)
