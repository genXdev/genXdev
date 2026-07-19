# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> Converts diplomatic or tactful language into direct, clear, and
straightforward language.

## Description

This function takes diplomatic speak and translates it to reveal the true
meaning behind polite or politically correct language. It uses AI language
models to transform euphemistic expressions into direct statements, making
communication unambiguous and easy to understand. The function is particularly
useful for analyzing political statements, business communications, or any text
where the real meaning might be obscured by diplomatic language.

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The text to convert from diplomatic speak |
| `-Instructions` | String | — | — | 1 | `''` | Additional instructions for the AI model |
| `-Temperature` | Double | — | — | Named | `0.0` | Temperature for response randomness (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the transformed text to clipboard |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object[] | — | — | Named | — | Attachments to include in the AI operation. |
| `-ImageDetail` | String | — | — | Named | — | Level of image detail for AI processing. |
| `-Functions` | Object[] | — | — | Named | — | Functions to expose to the AI model. |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets to expose to the AI model. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Tool function names that do not require confirmation. |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Do not add thoughts to the AI history. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from the last AI operation. |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Speak thoughts aloud during AI processing. |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Disable session caching for this operation. |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Allow use of default tools in AI operation. |
| `-AudioTemperature` | Double | — | — | Named | — | Audio temperature for AI audio generation. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for AI response generation. |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use for AI operation. |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for AI audio processing. |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for AI audio processing. |
| `-LengthPenalty` | Double | — | — | Named | — | Length penalty for AI sequence generation. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropy threshold for AI output. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for AI output. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for AI audio processing. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Do not speak the AI output. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Do not speak AI thoughts. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX for AI audio output. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture for AI audio. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Do not use context for AI operation. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for AI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses from AI. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks from AI. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types in AI output. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum callback length for tool calls. |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)
