# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes`

## Synopsis

> ينشر ملاحظات الإصدار غير المكتملة من README.md إلى بيان الوحدة النمطية.

## Description

يقرأ قسم "ملاحظات الإصدار" من ملف README.md، ويجمع جميع ملاحظات الإصدار غير المكتملة (الأسطر التي تبدأ بـ - ☐)، ويكتبها في حقل ReleaseNotes في ملف GenXdev.psd1، ويضع علامة عليها كمكتملة (☐ → ☒) في ملف README. يتم تحديث كلا الملفين بشكل ذري في عملية واحدة.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | استخدم ملف README في دليل ملف تعريف PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | استخدم ملف README في دليل OneDrive |
| `-ManifestPath` | String | — | — | 0 | — | المسار إلى ملف بيان الوحدة النمطية .psd1 |

## Examples

### Publish-ReleaseNotesToManifest

```powershell
Publish-ReleaseNotesToManifest
```

### Publish-ReleaseNotesToManifest -ManifestPath ".\MyModule.psd1"

```powershell
Publish-ReleaseNotesToManifest -ManifestPath ".\MyModule.psd1"
```

## Parameter Details

### `-UseHomeREADME`

> استخدم ملف README في دليل ملف تعريف PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseOneDriveREADME`

> استخدم ملف README في دليل OneDrive

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ManifestPath <String>`

> المسار إلى ملف بيان الوحدة النمطية .psd1

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
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-SourceFileInIde.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/VSCode.md)
