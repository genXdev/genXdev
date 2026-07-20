# New-ModuleMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generates rich Markdown help files for any PowerShell module.

## Description

Generates a comprehensive Markdown help site for any PowerShell module:
one .md file per cmdlet with all metadata sections, plus a README.md
index with per-sub-module tables linking to each cmdlet file.

Sub-module discovery is portable: .psm1 dot-source directories for
script cmdlets, .NET namespaces for compiled cmdlets, with a layered
fallback chain for modules without sub-module structure.

## Syntax

```powershell
New-ModuleMarkdownHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | The name of the PowerShell module to generate help for |
| `-OutputPath` | String | — | — | Named | — | Custom output directory for .md files. Defaults to <moduleRoot>\Docs\<language>. |
| `-Language` | String | — | — | Named | `'en-US'` | BCP 47 language tag for the generated help (e.g., en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | Overwrite existing .md files without prompting |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI translations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI translations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI translations |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indicates that LLM has no support for JSON schemas |
| `-LinkPrefix` | String | — | — | Named | — | URL prefix for README index links (e.g., https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Custom AI translation instructions |

## Examples

### New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Generates Docs\ folder with one .md per Pester cmdlet + README.md index.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Generates Dutch-translated markdown help, overwriting existing files.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Generates help with absolute GitHub links in the README index.

## Parameter Details

### `-ModuleName <String>`

> The name of the PowerShell module to generate help for

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> Custom output directory for .md files. Defaults to <moduleRoot>\Docs\<language>.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> BCP 47 language tag for the generated help (e.g., en-US, nl-NL, de-DE)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'en-US'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Overwrite existing .md files without prompting

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> Skip LLM translation; keep help in source language

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> The model identifier or pattern to use for AI translations

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> The API endpoint URL for AI translations

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> The API key for authenticated AI translations

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Indicates that LLM has no support for JSON schemas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LinkPrefix <String>`

> URL prefix for README index links (e.g., https://github.com/org/repo/Docs/)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> Custom AI translation instructions

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

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
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-ModuleXmlHelp.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-Refactor.md)
- [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-GenXdevCmdletsContainingClipboardTextInIde.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-Refactor.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdLetInIde.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-NextRefactor.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-RefactorLLMSelection.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Update-Refactor.md)
