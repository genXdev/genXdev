# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures pip is installed and functional for the specified Python installation.

## Description

Verifies that pip is available and functional for the given Python executable.
If pip is not available, attempts to install it using ensurepip. Validates
pip functionality by checking version and basic operations. Returns $true if
pip is ready; throws Write-Error on failure.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Path to Python executable |
| `-Timeout` | Int32 | — | — | Named | `300` | Timeout in seconds for pip installation |
| `-Force` | SwitchParameter | — | — | Named | — | Forces reinstallation/upgrade of pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

Ensures pip is available for the default Python installation.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

Forces pip installation for a specific Python executable.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

Ensures pip for a specific Python installation returned by EnsurePython.

## Parameter Details

### `-PythonPath <String>`

> Path to Python executable

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Timeout <Int32>`

> Timeout in seconds for pip installation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Forces reinstallation/upgrade of pip

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
