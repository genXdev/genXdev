# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Gets all available default LLM settings configurations for AI operations in
GenXdev.AI.

## Description

Retrieves the complete set of default Large Language Model (LLM) settings
configured for AI operations. Results can be filtered by query type, model
identifier, API endpoint, or API key. Supports both session-based and
persistent preference-based retrieval, with options to clear session state
or bypass it entirely to read directly from stored preferences.

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | The type of LLM query to get settings for |
| `-Model` | String | — | — | Named | — | Filter configurations by model identifier or pattern |
| `-ApiEndpoint` | String | — | — | Named | — | Filter configurations by API endpoint URL |
| `-ApiKey` | String | — | — | Named | — | Filter configurations by API key |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indicates that LLM has no support for JSON schemas |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Skip session settings and get from preferences or defaults only |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Gets all available default configurations for Coding query type.

## Parameter Details

### `-LLMQueryType <String>`

> The type of LLM query to get settings for

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Filter configurations by model identifier or pattern

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

> Filter configurations by API endpoint URL

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

> Filter configurations by API key

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
### `-SessionOnly`

> Use alternative settings stored in session for AI preferences like Language, Image collections, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Clear the session setting (Global variable) before retrieving

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Database path for preference data files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Skip session settings and get from preferences or defaults only

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable[]`

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
