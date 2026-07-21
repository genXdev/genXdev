# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> ينشئ تقريرًا مفصلاً عن عمليات إعادة الهيكلة وحالتها.

## Description

يحلل ويبلغ عن تقدم عمليات إعادة الهيكلة من خلال فحص حالتها الحالية، وحالة الإنجاز، والدوال المتأثرة. يوفر مخرجات إما بتنسيق جدول تجزئة منظم أو أعمدة نصية محاذية قابلة للقراءة البشرية. يتضمن التقرير اسم إعادة الهيكلة، مفتاح المطالبة، الأولوية، الحالة، عدد الدوال ونسبة الإنجاز.

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | اسم إعادة الهيكلة، يقبل أحرف البدل 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | يحدد المسار إلى ملف قاعدة بيانات التفضيلات. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | إذا تم التعيين، استخدم فقط ذاكرة التخزين المؤقت للجلسة لبيانات إعادة الهيكلة. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | إذا تم التعيين، امسح ذاكرة التخزين المؤقت للجلسة قبل التشغيل. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | إذا تم التعيين، فتخطى تحميل ذاكرة التخزين المؤقت للجلسة. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | إخراج التقرير بتنسيق نص بدلاً من Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

ينشئ تقريرًا نصيًا لعوامل إعادة الهيكلة المطابقة لـ "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

ينشئ تقرير جدول تجزئة لجميع عمليات إعادة التشكيل باستخدام الاسم المستعار.

## Parameter Details

### `-Name <String[]>`

> اسم إعادة الهيكلة، يقبل أحرف البدل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> يحدد المسار إلى ملف قاعدة بيانات التفضيلات.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> إذا تم التعيين، استخدم فقط ذاكرة التخزين المؤقت للجلسة لبيانات إعادة الهيكلة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> إذا تم التعيين، امسح ذاكرة التخزين المؤقت للجلسة قبل التشغيل.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> إذا تم التعيين، فتخطى تحميل ذاكرة التخزين المؤقت للجلسة.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> إخراج التقرير بتنسيق نص بدلاً من Hashtable

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

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/VSCode.md)
