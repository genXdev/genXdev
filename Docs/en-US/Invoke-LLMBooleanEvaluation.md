# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> Evaluates a statement using AI to determine if it's true or false.

## Description

This function uses AI models to evaluate statements and determine their truth
value. It can accept input directly through parameters, from the pipeline, or
from the system clipboard. The function returns a boolean result along with
confidence level and reasoning from the AI model.

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The statement to evaluate |
| `-Instructions` | String | — | — | 1 | `''` | Instructions for the AI model on how to evaluate the statement |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Image detail level |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the result to clipboard |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Don't add model thoughts to conversation history |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Allow AI to use default tools and capabilities |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature for audio response randomness |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response generation |
| `-Language` | String | — | — | Named | — | Language code or name for the response |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use for processing |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress from output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio detection |
| `-LengthPenalty` | Double | — | — | Named | — | Length penalty for sequence generation |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropy threshold for output filtering |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for output filtering |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture for input |
| `-NoContext` | SwitchParameter | — | — | Named | — | Do not use context in the query |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses from the model |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)
