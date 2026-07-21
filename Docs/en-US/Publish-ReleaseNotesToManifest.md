# Publish-ReleaseNotesToManifest

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `pubrelnotes`

## Synopsis

> Publishes uncompleted release notes from README.md to the module manifest.

## Description

Reads the "## Release notes" section from a README.md file, collects all
uncompleted release notes (lines starting with - ☐), writes them into the
ReleaseNotes field of GenXdev.psd1, and marks them as completed (☐ → ☒)
in the README. Both files are updated atomically in one operation.

## Syntax

```powershell
Publish-ReleaseNotesToManifest [[-ManifestPath] <String>] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-ManifestPath` | String | — | — | 0 | — | Path to the .psd1 module manifest |

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

> Use README in PowerShell profile directory

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

> Use README in OneDrive directory

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

> Path to the .psd1 module manifest

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

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-SourceFileInIde.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/VSCode.md)
