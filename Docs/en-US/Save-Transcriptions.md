# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Generates subtitle files for audio and video files using OpenAI Whisper.

## Description

Recursively searches for media files in the specified directory and uses a local
OpenAI Whisper model to generate subtitle files in SRT format. The function
supports multiple audio/video formats and can optionally translate subtitles to
a different language using a LLM Query. File naming follows a standardized pattern
with language codes (e.g., video.mp4.en.srt).

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | The directory path to search for media files |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | — | Sets the language to translate to. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Sum threshold for token timestamps, defaults to 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | Maximum number of tokens per segment |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Maximum duration of silence before automatically stopping recording |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Silence detect threshold (0..32767 defaults to 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Number of CPU threads to use, defaults to 0 (auto) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperature for speech recognition |
| `-TemperatureInc` | Single | — | — | Named | — | Temperature increment |
| `-Prompt` | String | — | — | Named | — | Prompt to use for the model |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Size of the audio context |
| `-MaxDuration` | Object | — | — | Named | — | Maximum duration of the audio |
| `-Offset` | Object | — | — | Named | — | Offset for the audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Maximum number of last text tokens |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Maximum segment length |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Single | — | — | Named | — | Length penalty |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Single | — | — | Named | — | Log probability threshold |
| `-NoSpeechThreshold` | Single | — | — | Named | — | No speech threshold |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Whether to include token timestamps in the output |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Whether to split on word boundaries |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Whether to ignore silence (will mess up timestamps) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Whether to show progress |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Whether to use single segment only |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Whether to print special tokens |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-ModelType` | String | — | — | Named | — | Whisper model type to use, defaults to LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns objects instead of strings |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Examples

### Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

```powershell
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"
```

### Save-Transcriptions "C:\Media" "Japanese" "English"

```powershell
Save-Transcriptions "C:\Media" "Japanese" "English"
```

## Parameter Details

### `-DirectoryPath <String>`

> The directory path to search for media files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> The language to expect in the audio.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> Sets the language to translate to.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> Sum threshold for token timestamps, defaults to 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> Maximum number of tokens per segment

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> Maximum duration of silence before automatically stopping recording

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Silence detect threshold (0..32767 defaults to 30)

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

> Number of CPU threads to use, defaults to 0 (auto)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> Temperature for speech recognition

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

> Temperature increment

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Prompt to use for the model

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

> Regex to suppress tokens from the output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Size of the audio context

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Object>`

> Maximum duration of the audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Object>`

> Offset for the audio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Int32>`

> Maximum number of last text tokens

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Int32>`

> Maximum segment length

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Object>`

> Start timestamps at this moment

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> Length penalty

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> Entropy threshold

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> Log probability threshold

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> No speech threshold

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
### `-WithTokenTimestamps`

> Whether to include token timestamps in the output

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> Whether to split on word boundaries

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> Whether to ignore silence (will mess up timestamps)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> Whether to show progress

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> Whether to NOT suppress blank lines

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> Whether to use single segment only

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> Whether to print special tokens

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

> Don't use context

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

> Use beam search sampling strategy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Whisper model type to use, defaults to LargeV3Turbo

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

> Returns objects instead of strings

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Whether to use desktop audio capture instead of microphone input

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

> Clear alternative settings stored in session for AI preferences like Language, Image collections, etc

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

> Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Save-FoundImageFaces.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Update-AllImageMetaData.md)
