# Get-SpeechToText

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs


## Related Links

- [Get-SpeechToText on GitHub](https://github.com/genXdev/genXdev)
