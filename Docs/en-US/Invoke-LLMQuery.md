# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | Query text to send to the model |
| `-Instructions` | String | — | — | 1 | — | System instructions for the model |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-ResponseFormat` | String | — | — | Named | — | A JSON schema for the requested output format |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Tool functions that don't require user confirmation |
| `-ImageDetail` | String | — | — | Named | `'low'` | Image detail level |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature for audio generation randomness |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response randomness (audio chat) |
| `-Language` | String | — | — | Named | — | Language code or name for audio chat |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use for audio chat |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress certain outputs in audio chat |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for audio chat |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio chat |
| `-LengthPenalty` | Double | — | — | Named | — | Length penalty for audio chat responses |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropy threshold for audio chat |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for audio chat |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio chat |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Do not speak audio responses |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Do not speak audio thoughts |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) for audio chat |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture for audio chat |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context for audio chat |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for audio chat |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses (no intermediate output) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Exclude thought processes from conversation history |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | Will only output markup blocks of the specified types |
| `-ChatMode` | String | — | — | Named | — | Enable chat mode |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | Used internally, to only invoke chat mode once after the llm invocation |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | Maximum length of tool callback output in characters. Output exceeding this length will be trimmed with a warning message. Default is 100000 characters. |

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)
