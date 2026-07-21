# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> احصل على قائمة الملفات التي تم تغييرها في مستودع Git.

## Description

تقوم هذه الدالة باسترداد قائمة الملفات التي تم تغييرها في مستودع Git الحالي. يمكن استخدامها لتحديد الملفات التي تم تعديلها أو إضافتها أو حذفها. افتراضياً، تُرجع مسارات نسبية مع البادئة .\ استخدم -PassThru للحصول على كائنات FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | إرجاع كائنات FileInfo (مثل Get-ChildItem) بدلاً من سلاسل المسارات. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

إرجاع مسارات نسبية مثل ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

إرجاع كائنات FileInfo لكل ملف تم تغييره.

## Parameter Details

### `-PassThru`

> إرجاع كائنات FileInfo (مثل Get-ChildItem) بدلاً من سلاسل المسارات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/PermanentlyDeleteGitFolders.md)
