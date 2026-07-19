# Receive-RealTimeSpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 使用Whisper AI模型将实时音频输入转换为文本。

## Description

该Cmdlet从麦克风或桌面捕获音频，并利用Whisper AI模型实时将其转录为文本。它支持多种音频源、静音检测以及多种用于语音识别的配置选项。

## Syntax

```powershell
Receive-RealTimeSpeechToText [-ModelFileDirectoryPath <string>] [-UseDesktopAudioCapture] [-UseDesktopAndRecordingDevice] [-AudioDevice <string>] [-Passthru] [-WithTokenTimestamps] [-TokenTimestampsSumThreshold <float>] [-SplitOnWord] [-MaxTokensPerSegment <int>] [-IgnoreSilence] [-MaxDurationOfSilence <timespan>] [-SilenceThreshold <int>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-WithTranslate] [-Prompt <string>] [-SuppressRegex <string>] [-WithProgress] [-AudioContextSize <int>] [-DontSuppressBlank] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-SingleSegmentOnly] [-PrintSpecialTokens] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-NoSpeechThreshold <float>] [-NoContext] [-WithBeamSearchSamplingStrategy] [-ModelType <GgmlType>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | 模型文件的路径 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | `False` | 是否使用桌面音频采集而非麦克风 |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | `False` | 是否同时使用桌面音频捕获和录音设备 |
| `-AudioDevice` | String | — | — | Named | — | 同时使用台式机和录音设备 |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 返回对象而非字符串 |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | 是否包含令牌时间戳 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Token时间戳的求和阈值，默认为0.5 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | 是否按单词边界拆分 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 每个片段的最大令牌数 |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | `False` | 是否忽略静音（会导致时间戳混乱） |
| `-MaxDurationOfSilence` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 自动停止录音前的最大静音时长 |
| `-SilenceThreshold` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 静音检测阈值（0..32767，默认为30） |
| `-LanguageIn` | String | — | — | Named | — | 设置要检测的输入语言，默认为'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 设置输出语言 |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 语音检测的温度 |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 温度增量 |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-Prompt` | String | — | — | Named | — | Prompt to use for the model |
| `-SuppressRegex` | String | — | — | Named | — | 用于从输出中抑制令牌的正则表达式 |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | 是否显示进度 |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音频上下文的大小 |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | 是否禁止空行的补充说明 |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音频的最大时长 |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音频偏移 |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最后文本令牌的最大数量 |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | 是否仅使用单个片段 |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | 是否打印特殊标记 |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最大段长度 |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 从此刻开始记录时间戳 |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 长度惩罚 |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 熵阈值 |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 对数概率阈值 |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 无语音阈值 |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | 使用束搜索采样策略 |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | 要使用的Whisper模型类型，默认为Small |

## Examples

### Example 1

```powershell
Receive-RealTimeSpeechToText
```

麦克风基本用法。

### Example 2

```powershell
Receive-RealTimeSpeechToText -UseDesktopAudioCapture
```

正在使用桌面音频捕获。

### Example 3

```powershell
Receive-RealTimeSpeechToText -AudioDevice "Microphone*"
```

使用特定的音频设备。

### Example 4

```powershell
Receive-RealTimeSpeechToText -MaxDurationOfSilence "00:00:05"
```

带静音检测。

## Related Links

- [Receive-RealTimeSpeechToText on GitHub](https://github.com/genXdev/genXdev)
