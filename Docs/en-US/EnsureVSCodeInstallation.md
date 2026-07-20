# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Installs and configures Visual Studio Code with recommended extensions.

## Description

Checks if Visual Studio Code is installed and if not, installs it using WinGet.
Configures user settings, keybindings, and installs recommended extensions from
the workspace configuration. Also sets up PSGallery as a trusted repository and
configures specific extension settings.

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Parameter Details

### `-Force`

> The `-Force` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Todoos.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Publish-ReleaseNotesToManifest.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/VSCode.md)
