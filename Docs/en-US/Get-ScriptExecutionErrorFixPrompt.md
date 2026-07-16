# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | The script to execute and analyze for errors |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Attachments` | Object | — | — | Named | — | Attachments to include in the LLM query. |
| `-ImageDetail` | Object | — | — | Named | — | Level of image detail for LLM query. |
| `-TTLSeconds` | Object | — | — | Named | — | Time-to-live in seconds for the LLM query. |
| `-IncludeThoughts` | Object | — | — | Named | — | Include model thoughts in the LLM response. |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | Output only markup blocks from the LLM response. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | Filter for markup block types in the LLM response. |
| `-ChatOnce` | Object | — | — | Named | — | Run chat only once for the LLM query. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | Maximum tool call back length for LLM query. |
| `-AudioTemperature` | Object | — | — | Named | — | Temperature for audio generation. |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperature for response generation. |
| `-Language` | Object | — | — | Named | — | Language for LLM query. |
| `-CpuThreads` | Object | — | — | Named | — | Number of CPU threads to use. |
| `-SuppressRegex` | Object | — | — | Named | — | Regular expression to suppress output. |
| `-AudioContextSize` | Object | — | — | Named | — | Audio context size for LLM query. |
| `-SilenceThreshold` | Object | — | — | Named | — | Silence threshold for audio processing. |
| `-LengthPenalty` | Object | — | — | Named | — | Length penalty for LLM output. |
| `-EntropyThreshold` | Object | — | — | Named | — | Entropy threshold for LLM output. |
| `-LogProbThreshold` | Object | — | — | Named | — | Log probability threshold for LLM output. |
| `-NoSpeechThreshold` | Object | — | — | Named | — | No speech threshold for audio processing. |
| `-DontSpeak` | Object | — | — | Named | — | Do not speak audio output. |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Do not speak model thoughts. |
| `-NoVOX` | Object | — | — | Named | — | Disable VOX for audio output. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Use desktop audio capture. |
| `-NoContext` | Object | — | — | Named | — | Do not use context for LLM query. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | Object | — | — | Named | — | Return only responses from LLM. |

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)
