# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | Initial query text to send to the model |
| `-Instructions` | String | — | — | 1 | — | System instructions for the model |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | Whisper model type to use, defaults to LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | Temperature for audio input recognition (0.0-1.0) |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | The temperature parameter for controlling the randomness of the response. |
| `-LanguageIn` | String | — | — | Named | — | Sets the language to detect |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Number of CPU threads to use, defaults to 0 (auto) |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Size of the audio context |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | Silence detect threshold (0..32767 defaults to 30) |
| `-LengthPenalty` | Single | — | — | Named | — | Length penalty |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Single | — | — | Named | — | Log probability threshold |
| `-NoSpeechThreshold` | Single | — | — | Named | — | No speech threshold |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ImageDetail` | String | — | — | Named | `'low'` | Image detail level |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | Will only output markup blocks of the specified types |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-Functions` | ScriptBlock[] | — | — | Named | — | ScriptBlock array of tool functions to expose to the LLM (pass-through to Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array of tool function names that do not require confirmation (pass-through to Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | Chat mode for LLM query (pass-through to Invoke-LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum tool call back length (pass-through to Invoke-LLMQuery) |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable text-to-speech for AI responses |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable text-to-speech for AI thought responses |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Don't use silence detection to automatically stop recording. |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-AudioDevice` | String | — | — | Named | — | Audio device name or GUID (supports wildcards, picks first match) |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Use both desktop and recording device |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Whether to suppress reconized text in the output |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)
