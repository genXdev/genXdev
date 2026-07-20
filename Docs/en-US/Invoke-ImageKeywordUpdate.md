# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration`

## Synopsis

> Updates image metadata with AI-generated descriptions and keywords.

## Description

The Invoke-ImageKeywordUpdate function analyzes images using AI to generate
descriptions, keywords, and other metadata. It creates a companion JSON file for
each image containing this information. The function can process new images only
or update existing metadata, and supports recursive directory scanning.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSupportForJsonSchema <String>] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | The directory paths containing images to process |
| `-Recurse` | SwitchParameter | — | — | Named | — | Process images in specified directory and all subdirectories |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-Language` | String | — | — | Named | — | The language for generated descriptions and keywords |
| `-FacesDirectory` | String | — | — | Named | — | The directory containing face images organized by person folders. If not specified, uses the configured faces directory preference. |
| `-Instructions` | String | — | — | 2 | — | System instructions for the model |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Image detail level |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Indicates that LLM has no support for JSON schemas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | Specifies the functions to use for the AI operation. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Specifies the exposed cmdlets for the AI operation. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Specifies tool function names that do not require confirmation. |
| `-NoContext` | SwitchParameter | — | — | Named | — | If specified, disables context usage. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum callback length for tool calls. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru to return structured objects instead of outputting to console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detects changes in the faces directory and re-registers faces if needed |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Parameter Details

### `-ImageDirectories <String[]>`

> The directory paths containing images to process

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Process images in specified directory and all subdirectories

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyNew`

> Only process images that don't already have face metadata files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailed`

> Will retry previously failed image keyword updates

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

> The language for generated descriptions and keywords

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FacesDirectory <String>`

> The directory containing face images organized by person folders. If not specified, uses the configured faces directory preference.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> System instructions for the model

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> A JSON schema for the requested output format

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
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
| **Default value** | `'high'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> The type of LLM query

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Pictures'` |
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
### `-IncludeThoughts`

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
### `-Functions <String[]>`

> Specifies the functions to use for the AI operation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> Specifies the exposed cmdlets for the AI operation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Specifies tool function names that do not require confirmation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> If specified, disables context usage.

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

> Maximum callback length for tool calls.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> PassThru to return structured objects instead of outputting to console

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoUpdateFaces`

> Detects changes in the faces directory and re-registers faces if needed

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertFrom-CorporateSpeak.md)
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
