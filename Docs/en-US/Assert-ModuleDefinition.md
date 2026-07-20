# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Assists in refactoring PowerShell source code files using AI assistance.

## Description

This function automates the process of refactoring PowerShell code using AI.
It manages prompt templates, detects the active IDE (VS Code or Visual Studio),
and orchestrates the refactoring workflow through keyboard automation.
The function can handle both module manifest (.psd1) and module script (.psm1)
files.

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the module |
| `-Prompt` | String | — | — | Named | — | The AI prompt |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Parameter Details

### `-ModuleName <String>`

> The name of the module

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> The AI prompt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EditPrompt`

> Switch to only edit the AI prompt

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
