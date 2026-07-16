# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Array of movie titles to analyze for similarities |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Opens IMDB searches for each result |
| `-Language` | String | — | — | Named | — | Language for IMDB search or browser session |
| `-Monitor` | Int32 | — | — | Named | `-1` | Monitor index or name for browser window placement |
| `-Width` | Int32 | — | — | Named | `-1` | Width of the browser window in pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Height of the browser window in pixels |
| `-AcceptLang` | String | — | — | Named | — | Accept-Language HTTP header for browser session |
| `-Private` | SwitchParameter | — | — | Named | — | Open browser in private/incognito mode |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome for browser session |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use Chromium for browser session |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Mozilla Firefox for browser session |
| `-Left` | Int32 | — | — | Named | — | Left position of the browser window in pixels |
| `-Right` | Int32 | — | — | Named | — | Right position of the browser window in pixels |
| `-Bottom` | Int32 | — | — | Named | — | Bottom position of the browser window in pixels |
| `-Centered` | SwitchParameter | — | — | Named | — | Open browser window centered on screen |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Open browser in full screen mode |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Open browser in application mode (minimal UI) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Disable browser extensions for session |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable popup blocker in browser session |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the browser window after opening |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore focus to previous window after closing browser |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Open each IMDB result in a new browser window |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Return the URL after opening IMDB search |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Return only the URL without opening browser |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Send Escape key to browser after opening |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus in browser after sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter when sending keys to browser |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay in milliseconds between sending keys to browser |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Open browser window without borders |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Open browser windows side by side for each result |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Instructions` | String | — | — | Named | — | Instructions for the AI model on how to generate the string list |
| `-Attachments` | String[] | — | — | Named | — | Array of file paths to attach |
| `-ImageDetail` | String | — | — | Named | — | Image detail level for image processing. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array of function definitions that can be called by the AI model during processing. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array of PowerShell command definitions to use as tools that the AI can invoke. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array of command names that don't require confirmation before execution. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperature for audio generation. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperature for response generation. |
| `-CpuThreads` | Int32 | — | — | Named | — | Number of CPU threads to use. |
| `-SuppressRegex` | String | — | — | Named | — | Regular expression to suppress certain outputs. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Audio context size for processing. |
| `-SilenceThreshold` | Double | — | — | Named | — | Silence threshold for audio processing. |
| `-LengthPenalty` | Double | — | — | Named | — | Length penalty for sequence generation. |
| `-EntropyThreshold` | Double | — | — | Named | — | Entropy threshold for output filtering. |
| `-LogProbThreshold` | Double | — | — | Named | — | Log probability threshold for output filtering. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | No speech threshold for audio detection. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Disable speech output. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable thought speech output. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use desktop audio capture. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | When specified, copies the resulting string list back to the system clipboard after processing. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Don't add model's thoughts to conversation history |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Continue from last conversation |
| `-Speak` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI responses |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Don't store session in session cache |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Enable default tools for the AI model. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum callback length for tool calls. |

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
