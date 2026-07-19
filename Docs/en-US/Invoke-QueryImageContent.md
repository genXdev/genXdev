# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Analyzes image content using AI vision capabilities

## Description

Processes images using AI vision capabilities to analyze
content and answer queries about the image. The function supports various
analysis parameters including temperature control for response randomness and
token limits for output length.

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | The query string for analyzing the image |
| `-ImagePath` | String | ✅ | — | 1 | — | Path to the image file for analysis |
| `-Instructions` | String | — | — | 2 | — | System instructions for the model |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Image detail level |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | Specifies the functions to use for the AI operation. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Specifies the exposed cmdlets for the AI operation. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Specifies tool function names that do not require confirmation. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature for audio response generation. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for the response generation. |
| `-Language` | String | — | — | Named | — | The language for generated descriptions and keywords |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use. |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing. |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio processing. |
| `-LengthPenalty` | Double | — | — | Named | — | Length penalty for sequence generation. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropy threshold for output filtering. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for output filtering. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | If specified, do not speak the output. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | If specified, do not speak the model's thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | If specified, disables VOX. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | If specified, use desktop audio capture. |
| `-NoContext` | SwitchParameter | — | — | Named | — | If specified, disables context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | If specified, use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | If specified, only return responses. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | If specified, don't add thoughts to the history. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue the last conversation. |
| `-Speak` | SwitchParameter | — | — | Named | — | Speak the output. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Speak the model's thoughts. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | If specified, only chat once. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Disable session caching. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum callback length for tool calls. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for ImageSharp package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for ImageSharp packages. |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analyzes an image with specific temperature and token limits.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

Simple image analysis using alias and positional parameters.

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)
