# Get-TextTranslation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `translate

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TextTranslation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearCache] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Model <String>] [-NoCache] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The text to translate |
| `-Instructions` | String | — | — | 1 | — | Additional instructions to guide the AI model in translation style and context |
| `-Attachments` | String[] | — | — | 2 | `@()` | Array of file paths to attach |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | Image detail level |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the enhanced text to clipboard |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Allow the use of default AI tools during processing |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature for audio response randomness (passed to LLM) |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response generation (passed to LLM) |
| `-Language` | String | — | — | Named | — | BCP 47 language tag for translation (e.g., nl-NL, de-DE, en-US) |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use (passed to LLM) |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress output (passed to LLM) |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing (passed to LLM) |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio detection (passed to LLM) |
| `-LengthPenalty` | Double | — | — | Named | — | Length penalty for sequence generation (passed to LLM) |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropy threshold for output filtering (passed to LLM) |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for output filtering (passed to LLM) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection (passed to LLM) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output (passed to LLM) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable speech output for thoughts (passed to LLM) |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) (passed to LLM) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture (passed to LLM) |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage (passed to LLM) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Enable beam search sampling strategy (passed to LLM) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses (passed to LLM) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Output only markup blocks (passed to LLM) |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | Skip the translation cache; always call the LLM API |
| `-ClearCache` | SwitchParameter | — | — | Named | — | Clear the entire translation cache for all languages |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)
