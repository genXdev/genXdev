# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Query text to send to the model *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | System instructions for the model |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | 3 | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Image detail level |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array of PowerShell command definitions to use as tools |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | Will only output markup blocks of the specified types |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Used internally, to only invoke chat mode once after the llm invocation *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Names of tool functions that should not require confirmation |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum length for tool callback responses |
| `-AudioTemperature` | Object | — | — | Named | — | Temperature for audio generation |
| `-TemperatureResponse` | Object | — | — | Named | — | Temperature for response generation |
| `-Language` | Object | — | — | Named | — | Language for the model or output |
| `-CpuThreads` | Object | — | — | Named | — | Number of CPU threads to use |
| `-SuppressRegex` | Object | — | — | Named | — | Regular expression to suppress output |
| `-AudioContextSize` | Object | — | — | Named | — | Audio context size for processing |
| `-SilenceThreshold` | Object | — | — | Named | — | Silence threshold for audio processing |
| `-LengthPenalty` | Object | — | — | Named | — | Length penalty for sequence generation |
| `-EntropyThreshold` | Object | — | — | Named | — | Entropy threshold for output filtering |
| `-LogProbThreshold` | Object | — | — | Named | — | Log probability threshold for output filtering |
| `-NoSpeechThreshold` | Object | — | — | Named | — | No speech threshold for audio detection |
| `-DontSpeak` | Object | — | — | Named | — | Disable speech output |
| `-DontSpeakThoughts` | Object | — | — | Named | — | Disable speech output for thoughts |
| `-NoVOX` | Object | — | — | Named | — | Disable VOX (voice activation) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | Use desktop audio capture |
| `-NoContext` | Object | — | — | Named | — | Disable context usage |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | Use beam search sampling strategy |
| `-OnlyResponses` | Object | — | — | Named | — | Return only responses |

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)
