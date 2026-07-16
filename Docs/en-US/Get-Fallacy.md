# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Text to parse to find Fallacies in |
| `-Instructions` | String | — | — | 1 | `''` | Instructions for the AI model on how to generate the string list |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ImageDetail` | String | — | — | Named | `'low'` | Image detail level |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Opens IMDB searches for each result |
| `-AudioTemperature` | Double | — | — | Named | — | Controls the temperature for audio generation. |
| `-TemperatureResponse` | Double | — | — | Named | — | Controls the temperature for response generation. |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use for processing. |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress certain outputs. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing. |
| `-SilenceThreshold` | Double | — | — | Named | — | Threshold for detecting silence in audio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalty applied to longer responses. |
| `-EntropyThreshold` | Double | — | — | Named | — | Threshold for entropy in response generation. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for output. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Threshold for detecting no speech in audio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Prevents speaking the response. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Prevents speaking the model\'s thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disables VOX (voice activation). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture for input. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disables context for the request. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Only return responses, no additional data. |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum callback length for tool calls. |

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)
