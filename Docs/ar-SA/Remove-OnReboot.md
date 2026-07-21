# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يقوم بتمييز الملفات أو المجلدات للحذف أثناء بدء تشغيل النظام التالي.

## Description

* يستخدم واجهة برمجة تطبيقات Windows لوضع علامة على الملفات للحذف عند التمهيد التالي.
* يتعامل مع الملفات المقفلة عن طريق محاولة إعادة تسميتها إلى أسماء مؤقتة أولاً ويتتبع جميع التحركات للحفاظ على سلامة نظام الملفات.
* إذا فشلت إعادة التسمية، يمكن استخدام المعلمة -MarkInPlace لوضع علامة على الملفات في موقعها الأصلي.

## Syntax

```powershell
Remove-OnReboot -Path <String[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | المسار(ات) إلى الملفات/المجلدات المطلوب وضع علامة عليها للحذف |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | تحديد الملفات للحذف دون إعادة تسمية |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

يضع علامة على ملف مقفل للحذف أثناء تشغيل النظام التالي.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

وضع علامات على ملفات متعددة للحذف، باستخدام MarkInPlace لأي ملف لا يمكن إعادة تسميته.

## Parameter Details

### `-Path <String[]>`

> المسار(ات) إلى الملفات/المجلدات المطلوب وضع علامة عليها للحذف

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkInPlace`

> تحديد الملفات للحذف دون إعادة تسمية

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
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Write-TextFileAtomic.md)
