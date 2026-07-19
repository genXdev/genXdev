# Save-Transcriptions

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 使用OpenAI Whisper为音频和视频文件生成字幕文件。

## Description

递归搜索指定目录中的媒体文件，并使用本地OpenAI Whisper模型生成SRT格式的字幕文件。该函数支持多种音频/视频格式，并可选地通过LLM查询将字幕翻译为不同语言。文件命名遵循带有语言代码的标准模式（例如，video.mp4.en.srt）。

## Syntax

```powershell
Save-Transcriptions [[-DirectoryPath] <String>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DirectoryPath` | String | — | — | 0 | `'.\'` | 用于搜索媒体文件的目录路径 |
| `-LanguageIn` | String | — | — | 1 | — | 音频中预期的语言。 |
| `-LanguageOut` | String | — | — | 2 | — | 设置要翻译到的语言。 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Token时间戳的求和阈值，默认为0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | `20` | 每个片段的最大令牌数 |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | 自动停止录音前的最大静音时长 |
| `-SilenceThreshold` | Int32 | — | — | Named | — | 静音检测阈值（0..32767，默认为30） |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 使用的CPU线程数，默认为0（自动） |
| `-Temperature` | Single | — | — | Named | `0.5` | 语音识别的温度 |
| `-TemperatureInc` | Single | — | — | Named | — | 温度增量 |
| `-Prompt` | String | — | — | Named | — | Prompt to use for the model |
| `-SuppressRegex` | String | — | — | Named | `$null` | 用于从输出中抑制令牌的正则表达式 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 音频上下文的大小 |
| `-MaxDuration` | Object | — | — | Named | — | 音频的最大时长 |
| `-Offset` | Object | — | — | Named | — | 音频偏移 |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | 最后文本令牌的最大数量 |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | 最大段长度 |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | 从此刻开始记录时间戳 |
| `-LengthPenalty` | Single | — | — | Named | — | 长度惩罚 |
| `-EntropyThreshold` | Single | — | — | Named | — | 熵阈值 |
| `-LogProbThreshold` | Single | — | — | Named | — | 对数概率阈值 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 无语音阈值 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | 是否在输出中包含令牌时间戳 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | 是否按单词边界拆分 |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | 是否忽略静音（会导致时间戳混乱） |
| `-WithProgress` | SwitchParameter | — | — | Named | — | 是否显示进度 |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | 是否禁止空行的补充说明 |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | 是否仅使用单个片段 |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | 是否打印特殊标记 |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 使用束搜索采样策略 |
| `-ModelType` | String | — | — | Named | — | 要使用的Whisper模型类型，默认为LargeV3Turbo |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回对象而非字符串 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 是否使用桌面音频捕获而非麦克风输入 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

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
