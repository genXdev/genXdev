# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature`

## Synopsis

> Adds a feature line to the README file with a timestamp.

## Description

Adds a feature line to the specified README file, prefixed with the current date
in yyyyMMdd format. The line can be formatted as code and optionally displayed.

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The feature description text to add |
| `-Code` | SwitchParameter | — | — | Named | — | Format the line as code |
| `-Show` | SwitchParameter | — | — | Named | — | Display the README after adding the line |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in home directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Priority for sorting (higher = shown first, default 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sort lines by date (yyyyMMdd prefix) instead of priority |
| `-Ascending` | SwitchParameter | — | — | Named | — | Reverse the sort order (ascending instead of descending) |
| `-First` | Int32 | — | — | Named | `0` | Limit -Show output to the first N lines |

## Examples

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Parameter Details

### `-Line <String>`

> The feature description text to add

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Format the line as code

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Show`

> Display the README after adding the line

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseHomeREADME`

> Use README in home directory

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
### `-Priority <Int32>`

> Priority for sorting (higher = shown first, default 1)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
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

> Limit -Show output to the first N lines

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

- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-TodoLineToREADME.md)
- [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureVSCodeInstallation.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Issues.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Todoos.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Publish-ReleaseNotesToManifest.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/VSCode.md)
