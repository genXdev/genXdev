# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Invokes PowerShell Script Analyzer to analyze PowerShell scripts for compliance
and best practices.

## Description

This function provides a wrapper around PSScriptAnalyzer to analyze PowerShell
scripts for compliance issues, best practices violations, and potential bugs.
It supports both file-based analysis and string-based script analysis with
customizable rules and settings.

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Specifies the path to the script file. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Specifies the script definition as a string. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Specifies that the tool should exit on error. |
| `-Fix` | SwitchParameter | — | — | Named | — | Enables automatic fixing of violations. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recursively process files. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Reports a summary after analysis. |

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Parameter Details

### `-ScriptFilePath <String>`

> Specifies the path to the script file.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Path`, `FullName` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Path |

<hr/>
### `-ScriptDefinition <String>`

> Specifies the script definition as a string.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Script |

<hr/>
### `-EnableExit`

> Specifies that the tool should exit on error.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fix`

> Enables automatic fixing of violations.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Recursively process files.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReportSummary`

> Reports a summary after analysis.

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
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ModuleCmdletMetaData.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-RefactorReport.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-GenXdevPSFormatter.md)
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
