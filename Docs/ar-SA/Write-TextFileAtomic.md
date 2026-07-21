# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يكتب نصًا إلى ملف بشكل ذري لمنع التلف.

## Description

* كتابة ذرية: تستخدم إستراتيجية ملف مؤقت + إعادة تسمية لضمان عدم ترك الملف الهدف في حالة تالفة إذا تم مقاطعة العملية.
* منطق إعادة المحاولة: يعيد محاولة الكتابة حتى MaxRetries مرة مع تأخير قدره RetryDelayMs مللي ثانية بين المحاولات.
* دعم الترميز: يقبل معلمة System.Text.Encoding للتحكم في ترميز الإخراج. الافتراضي هو UTF-8.
* دعم إزالة الارتداد: عندما يكون DebounceMs > 0، يتم دمج عمليات الكتابة المتتالية السريعة لنفس الملف - تتم كتابة الحمولة الأخيرة فقط بمجرد عدم لمس الملف لمدة DebounceMs مللي ثانية.
* إنشاء الدليل: ينشئ الدلائل الأصلية تلقائيًا إذا لم تكن موجودة.

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | المسار إلى الملف المراد الكتابة إليه. |
| `-Data` | String | — | — | 1 | — | محتوى النص المراد كتابته في الملف. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | الحد الأقصى لعدد محاولات إعادة المحاولة لعملية الكتابة الذرية. القيمة الافتراضية هي 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | التأخير بالمللي ثانية بين محاولات إعادة المحاولة. القيمة الافتراضية هي 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | ترميز النص المستخدم عند كتابة الملف. الترميز الافتراضي هو UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | إذا كان أكبر من 0، فسيتم تأخير الكتابة إلى هذا الملف. القيمة الافتراضية هي 0 (معطل). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

يكتب سلسلة نصية إلى config.txt باستخدام تشفير UTF-8 بطريقة ذرية.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

يتم تمرير 50 سطرًا بسرعة؛ يتم الاحتفاظ بالسطر الأخير فقط بعد فترة هدوء لمدة ثانيتين.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

يكتب سلسلة نصية إلى data.csv باستخدام ترميز ASCII بشكل ذري.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

وظيفة خلفية تكتب الطوابع الزمنية كل 100 مللي ثانية ولكن التجميع يدمجها — كتابة واحدة فقط في الثانية تصل فعليًا إلى القرص.

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
### `-Data <String>`

> محتوى النص المراد كتابته في الملف.

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
### `-Encoding <Text.Encoding>`

> ترميز النص المستخدم عند كتابة الملف. الترميز الافتراضي هو UTF-8.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-JsonFileAtomic.md)
