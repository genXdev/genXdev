# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> ينشئ ويدفع التزام git جديد بجميع التغييرات.

## Description

يقوم بتجميع جميع التغييرات في مستودع git الحالي، وإنشاء التزام بالعنوان المحدد، ودفع التغييرات إلى المستودع البعيد origin. يقوم تلقائياً بإعداد تتبع المنبع (upstream tracking) إذا لزم الأمر.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | عنوان رسالة الالتزام المراد استخدامه |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

إنشاء التزام برسالة مخصصة "إضافة ميزة المصادقة الجديدة"

### Example 2

```powershell
commit "Hotfix for login issue"
```

أنشئ commit باستخدام الاسم المستعار 'commit' مع رسالة افتراضية.

## Parameter Details

### `-Title <String>`

> عنوان رسالة الالتزام المراد استخدامه

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/PermanentlyDeleteGitFolders.md)
