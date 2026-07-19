# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Generates subtitle files for audio and video files using OpenAI Whisper.

## Description

Recursively searches for media files in the specified directory and uses a local
OpenAI Whisper model to generate subtitle files in SRT format. The function
supports multiple audio/video formats and can optionally translate subtitles to
a different language using a LLM Query. File naming follows a standardized pattern
with language codes (e.g., video.mp4.en.srt).

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | The directory path to search for media files |
| `-LanguageIn` | String | — | — | 1 | — | The language to expect in the audio. |
| `-LanguageOut` | String | — | — | 2 | — | Sets the language to translate to. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Sum threshold for token timestamps, defaults to 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | Maximum number of tokens per segment |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Maximum duration of silence before automatically stopping recording |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Silence detect threshold (0..32767 defaults to 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Number of CPU threads to use, defaults to 0 (auto) |
| `-Temperature` | Single | — | — | Named | `0.5` | Temperature for speech recognition |
| `-TemperatureInc` | Single | — | — | Named | — | Temperature increment |
| `-Prompt` | String | — | — | Named | — | Prompt to use for the model |
| `-SuppressRegex` | String | — | — | Named | `$null` | Regex to suppress tokens from the output |
| `-AudioContextSize` | Int32 | — | — | Named | — | Size of the audio context |
| `-MaxDuration` | Object | — | — | Named | — | Maximum duration of the audio |
| `-Offset` | Object | — | — | Named | — | Offset for the audio |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Maximum number of last text tokens |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Maximum segment length |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Start timestamps at this moment |
| `-LengthPenalty` | Single | — | — | Named | — | Length penalty |
| `-EntropyThreshold` | Single | — | — | Named | — | Entropy threshold |
| `-LogProbThreshold` | Single | — | — | Named | — | Log probability threshold |
| `-NoSpeechThreshold` | Single | — | — | Named | — | No speech threshold |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Whether to include token timestamps in the output |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Whether to split on word boundaries |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Whether to ignore silence (will mess up timestamps) |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Whether to show progress |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Whether to NOT suppress blank lines |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Whether to use single segment only |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Whether to print special tokens |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy |
| `-ModelType` | String | — | — | Named | — | Whisper model type to use, defaults to LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | Returns objects instead of strings |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Whether to use desktop audio capture instead of microphone input |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Examples

### Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"

```powershell
Save-Transcriptions -DirectoryPath "C:\Videos" -LanguageIn "English"
```

### Save-Transcriptions "C:\Media" "Japanese" "English"

```powershell
Save-Transcriptions "C:\Media" "Japanese" "English"
```

## Related Links

- [Save-Transcriptions on GitHub](https://github.com/genXdev/genXdev)
