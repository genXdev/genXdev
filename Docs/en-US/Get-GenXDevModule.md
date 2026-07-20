# Get-GenXDevModule

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves all GenXDev modules from a specified path.

## Description

This function searches through a directory structure for GenXdev modules,
excluding any with '.local' in the name. For each valid module found, it returns
the most recent version folder (1.x) that contains a valid module manifest
(.psd1) file.

## Syntax

```powershell
Get-GenXDevModule [[-Path] <String>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | — | — | 0 | — | The root path to search for GenXdev modules |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModule -Path "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule -Path "C:\PowerShell\Modules"
```

### Get-GenXDevModule "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule "C:\PowerShell\Modules"
```

## Parameter Details

### `-Path <String>`

> The root path to search for GenXdev modules

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `RootPath`, `FullPath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeLocal`

> The `-IncludeLocal` parameter.

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

- [Add-MissingGenXdevUnitTests](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-MissingGenXdevUnitTests.md)
- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-ModuleDefinition.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Assert-RefactorFile.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-CmdletMetaData.md)
- [Get-GenXdevCmdletUsageAnalysis](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXdevCmdletUsageAnalysis.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ModuleCmdletMetaData.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-RefactorReport.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-ModuleXmlHelp.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-Refactor.md)
- [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-GenXdevCmdletsContainingClipboardTextInIde.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-Refactor.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdLetInIde.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-NextRefactor.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-RefactorLLMSelection.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Update-Refactor.md)
