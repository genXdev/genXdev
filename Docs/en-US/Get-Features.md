# Get-Features

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `features`

## Synopsis

> Displays features from a README.md file.

## Description

Shows all features from the "## Features" section of a README.md file. Can use
either the README in the current location, PowerShell profile directory, or
OneDrive directory.

## Syntax

```powershell
Get-Features [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sort lines by date (yyyyMMdd prefix) instead of priority |
| `-Ascending` | SwitchParameter | — | — | Named | — | Reverse the sort order (ascending instead of descending) |
| `-First` | Int32 | — | — | 0 | `0` | Limit output to the first N lines |

## Examples

### Features -UseHomeREADME

```powershell
Features -UseHomeREADME
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
### `-SortByDate`

> Sort lines by date (yyyyMMdd prefix) instead of priority

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Ascending`

> Reverse the sort order (ascending instead of descending)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-First <Int32>`

> Limit output to the first N lines

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `0` |
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
- [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureVSCodeInstallation.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Issues.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Todoos.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Publish-ReleaseNotesToManifest.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/VSCode.md)
