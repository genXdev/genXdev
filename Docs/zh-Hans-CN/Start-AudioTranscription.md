# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile, `transcribe

## Synopsis

> Transcribes an audio file, video file, or a recording device to text

## Description

使用 Whisper AI 模型将音频文件、视频文件或录音设备转录为文本。该函数可以处理各种音频和视频格式，将它们转换为适合转录的格式，并可选择将输出翻译成不同的语言。支持 SRT 字幕格式输出以及各种音频处理参数，用于微调转录质量。

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | 要转录的音频或视频文件的路径。如果未提供，则从麦克风录制。 |
| `-AudioDevice` | String | — | — | Named | — | 音频设备名称或 GUID（支持通配符，选择第一个匹配项） |
| `-LanguageIn` | String | — | — | 1 | — | 音频中预期的语言。 |
| `-LanguageOut` | String | — | — | 2 | `$null` | 设置要翻译到的语言。 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Token时间戳的求和阈值，默认为0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | 每个片段的最大令牌数 |
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
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:01,000 --> 00:00:04,000
Hello, world!

2
00:00:05,000 --> 00:00:08,000
This is a sample subtitle. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回对象而非字符串 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 是否使用桌面音频捕获而非麦克风输入 |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | 同时使用台式机和录音设备 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |
| `-VOX` | SwitchParameter | — | — | Named | — | 使用静音检测自动停止录音 |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Related Links

- [Start-AudioTranscription on GitHub](https://github.com/genXdev/genXdev)
