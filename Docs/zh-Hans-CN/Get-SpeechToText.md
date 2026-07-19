# Get-SpeechToText

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 使用OpenAI的Whisper语音识别模型将音频文件转换为文本。

## Description

使用Whisper.NET库处理音频文件并将语音转换为文本，该库实现了OpenAI的Whisper自动语音识别（ASR）系统。它支持多种语言、翻译功能以及各种转录质量设置。

## Syntax

```powershell
Get-SpeechToText [-Input] <Object> [-ModelFileDirectoryPath <string>] [-LanguageIn <string>] [-CpuThreads <int>] [-Temperature <float>] [-TemperatureInc <float>] [-NoSpeechThreshold <float>] [-Prompt <string>] [-SuppressRegex <string>] [-TokenTimestampsSumThreshold <float>] [-MaxTokensPerSegment <int>] [-AudioContextSize <int>] [-MaxDuration <timespan>] [-Offset <timespan>] [-MaxLastTextTokens <int>] [-MaxSegmentLength <int>] [-MaxInitialTimestamp <timespan>] [-LengthPenalty <float>] [-EntropyThreshold <float>] [-LogProbThreshold <float>] [-ModelType <GgmlType>] [-Passthru] [-WithTokenTimestamps] [-SplitOnWord] [-WithTranslate] [-WithProgress] [-DontSuppressBlank] [-SingleSegmentOnly] [-PrintSpecialTokens] [-NoContext] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModelFileDirectoryPath` | String | — | — | Named | — | 模型文件目录的路径 |
| `-Input` | Object | ✅ | ✅ (ByValue) | 0 | — | 音频文件路径、FileInfo对象或Whisper支持的任何音频格式。 |
| `-LanguageIn` | String | — | — | Named | — | 设置要检测的输入语言，默认为'en' |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 设置输出语言 |
| `-Temperature` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 语音检测的温度 |
| `-TemperatureInc` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 温度增量 |
| `-NoSpeechThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 无语音阈值 |
| `-Prompt` | String | — | — | Named | — | Prompt to use for the model |
| `-SuppressRegex` | String | — | — | Named | — | 用于从输出中抑制令牌的正则表达式 |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0` | Token时间戳的求和阈值，默认为0.5 |
| `-MaxTokensPerSegment` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 每个片段的最大令牌数 |
| `-AudioContextSize` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音频上下文的大小 |
| `-MaxDuration` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音频的最大时长 |
| `-Offset` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 音频偏移 |
| `-MaxLastTextTokens` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最后文本令牌的最大数量 |
| `-MaxSegmentLength` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 最大段长度 |
| `-MaxInitialTimestamp` | Nullable`1[[System.TimeSpan, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 从此刻开始记录时间戳 |
| `-LengthPenalty` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 长度惩罚 |
| `-EntropyThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 熵阈值 |
| `-LogProbThreshold` | Nullable`1[[System.Single, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | 对数概率阈值 |
| `-ModelType` | Whisper.net.Ggml.GgmlType | — | — | Named | `Tiny` | 要使用的Whisper模型类型，默认为LargeV3Turbo |
| `-Passthru` | SwitchParameter | — | — | Named | `False` | 返回对象而非字符串 |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | `False` | 是否包含令牌时间戳 |
| `-SplitOnWord` | SwitchParameter | — | — | Named | `False` | 是否按单词边界拆分 |
| `-WithTranslate` | SwitchParameter | — | — | Named | `False` | Whether to translate the output |
| `-WithProgress` | SwitchParameter | — | — | Named | `False` | 是否显示进度 |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | `False` | 是否禁止空行的补充说明 |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | `False` | 是否仅使用单个片段 |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | `False` | 是否打印特殊标记 |
| `-NoContext` | SwitchParameter | — | — | Named | `False` | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | `False` | 使用束搜索采样策略 |

## Examples

### Example 1

```powershell
Get-SpeechToText -Input "C:\audio\recording.wav"
```

使用默认设置将音频文件转写为文本。

### Example 2

```powershell
Get-ChildItem "C:\audio\*.wav" | Get-SpeechToText
```

转录目录中的所有WAV文件。

### Example 3

```powershell
Get-SpeechToText -Input "audio.mp3" -LanguageIn "es" -WithTranslate
```

### Example 4

```powershell
Get-SpeechToText -Input "recording.wav" -Passthru -WithTokenTimestamps
```

返回带有精确时间信息的 SegmentData 对象。

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
