# Invoke-CommandFromToolCall

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Executes a tool call function with validation and parameter filtering.

## Description

This function processes tool calls by validating arguments, filtering parameters,
and executing callbacks with proper confirmation handling. It supports both script
block and command info callbacks.

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Tool call object containing function details and args |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Force output as text |

## Examples

### Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `     -ExposedCmdLets $exposedCmdlets

```powershell
Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `
    -ExposedCmdLets $exposedCmdlets
```

### $result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText

```powershell
$result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText
```

## Parameter Details

### `-ToolCall <Collections.Hashtable>`

> Tool call object containing function details and args

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Array of function definitions

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Array of PowerShell command definitions to use as tools

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Array of command names that don't require confirmation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceAsText`

> Force output as text

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

- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Approve-NewTextFileContent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [EnsureGithubCLIInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGithubCLIInstalled.md)
- [EnsureHuggingFace](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureHuggingFace.md)
- [EnsurePaintNet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePaintNet.md)
- [EnsurePip](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePip.md)
- [EnsurePython](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePython.md)
- [EnsureWinMergeInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureWinMergeInstalled.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AIDefaultLLMSettings.md)
- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AILLMSettings.md)
- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-NumberOfCpuCores.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-VectorSimilarity.md)
- [Invoke-HuggingFaceCli](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-HuggingFaceCli.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMTextTransformation.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-AILLMSettings.md)
- [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevAICommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-GenXdevMCPServer.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-CpuAvx.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-DeepLinkImageFile.md)
