# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates and returns the total number of logical CPU cores in the system.

## Description

Queries the system hardware through Windows Management Instrumentation (WMI) to determine the total number of logical CPU cores. The cmdlet accounts for hyperthreading by multiplying the physical core count by 2. This information is useful for optimizing parallel processing tasks and understanding system capabilities.

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

Retrieves the total number of logical CPU cores available on the system.

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
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-VectorSimilarity.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-CommandFromToolCall.md)
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
