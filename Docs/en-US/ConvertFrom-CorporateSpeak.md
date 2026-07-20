# ConvertFrom-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `uncorporatize`

## Synopsis

> Converts polite, professional corporate speak into direct, clear language using AI.

## Description

This function processes input text to transform diplomatic, corporate
communications into more direct and clear language. It can accept input directly
through parameters, from the pipeline, or from the system clipboard. The function
leverages AI models to analyze and rephrase text while preserving the original
intent.

## Syntax

```powershell
ConvertFrom-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The text to convert from corporate speak |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Image detail level |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indicates that LLM has no support for JSON schemas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the enhanced text to clipboard |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Allow the use of default AI tools during processing |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature for audio response randomness (passed to LLMQuery) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response generation (passed to LLMQuery) |
| `-Language` | String | — | — | Named | — | Language code or name for processing (passed to LLMQuery) |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use (passed to LLMQuery) |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress output (passed to LLMQuery) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing (passed to LLMQuery) |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio detection (passed to LLMQuery) |
| `-LengthPenalty` | Double | — | — | Named | — | Length penalty for sequence generation (passed to LLMQuery) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropy threshold for output filtering (passed to LLMQuery) |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for output filtering (passed to LLMQuery) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection (passed to LLMQuery) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output (passed to LLMQuery) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts (passed to LLMQuery) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) (passed to LLMQuery) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture (passed to LLMQuery) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage (passed to LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Enable beam search sampling strategy (passed to LLMQuery) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses (passed to LLMQuery) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks (passed to LLMQuery) |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum tool callback length (passed to LLMQuery) |

## Examples

### ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard

```powershell
ConvertFrom-CorporateSpeak -Text "I would greatly appreciate your timely response" -SetClipboard
```

### "We should circle back" | uncorporatize ###############################################################################

```powershell
"We should circle back" | uncorporatize
###############################################################################
```

## Parameter Details

### `-Text <String>`

> The text to convert from corporate speak

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> Array of file paths to attach

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperature for response randomness (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Image detail level

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
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
### `-LLMQueryType <String>`

> The type of LLM query

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> The model identifier or pattern to use for AI operations

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

> The API endpoint URL for AI operations

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

> The API key for authenticated AI operations

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
### `-TimeoutSeconds <Int32>`

> The timeout in seconds for AI operations

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
### `-SetClipboard`

> Copy the enhanced text to clipboard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> Include model's thoughts in output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> Continue from last conversation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Enable text-to-speech for AI responses

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> Enable text-to-speech for AI thought responses

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> Don't store session in session cache

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> Allow the use of default AI tools during processing

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

> Use alternative settings stored in session for AI preferences

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

> Clear alternative settings stored in session for AI preferences

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Store settings only in persistent preferences without affecting session

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> Temperature for audio response randomness (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> Temperature for response generation (passed to LLMQuery)

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

> Language code or name for processing (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Number of CPU threads to use (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Regular expression to suppress output (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Audio context size for processing (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> Silence threshold for audio detection (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> Length penalty for sequence generation (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> Entropy threshold for output filtering (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> Log probability threshold for output filtering (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> No speech threshold for audio detection (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> Disable speech output (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> Disable speech output for thoughts (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> Disable VOX (voice activation) (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Use desktop audio capture (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Disable context usage (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Enable beam search sampling strategy (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> Return only responses (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> Output only markup blocks (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> Filter for markup block types (passed to LLMQuery)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Maximum tool callback length (passed to LLMQuery)

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

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-EmoticonsToText.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageScenesUpdate.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Update-AllImageMetaData.md)
