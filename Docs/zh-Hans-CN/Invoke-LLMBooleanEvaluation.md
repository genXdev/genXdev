# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `equalstrue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | {} |
| `-Instructions` | String | — | — | 1 | `''` | Instructions for the AI model on how to evaluate the statement |
| `-Attachments` | String[] | — | — | 2 | `@()` | 要附加的文件路径数组 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ImageDetail` | String | — | — | Named | `'low'` | 图像细节级别 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 函数定义数组 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 用作工具的 PowerShell 命令定义数组 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 无需确认的命令名称数组 |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the result to clipboard |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 不要将模型思考添加到对话历史中 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | 允许 AI 使用默认工具和能力 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Return only markup blocks in the output |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks |
| `-AudioTemperature` | Double | — | — | Named | — | 音频响应随机性的温度 |
| `-TemperatureResponse` | Double | — | — | Named | — | 生成回复的温度参数 |
| `-Language` | String | — | — | Named | — | zh-Hans-CN |
| `-CpuThreads` | Int32 | — | — | Named | — | 用于处理的 CPU 线程数 |
| `-SuppressRegex` | String | — | — | Named | — | 从输出中排除的正则表达式 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于处理的音频上下文大小 |
| `-SilenceThreshold` | Double | — | — | Named | — | 音频检测的静音阈值 |
| `-LengthPenalty` | Double | — | — | Named | — | 序列生成的长度惩罚 |
| `-EntropyThreshold` | Double | — | — | Named | — | 输出过滤的熵阈值 |
| `-LogProbThreshold` | Double | — | — | Named | — | 用于输出过滤的对数概率阈值 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音频检测无语音阈值 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 关闭语音输出 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 对思想的语音输出停用 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 关闭语音激活（VOX） |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 使用桌面音频捕获作为输入 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 不要在查询中使用上下文 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 使用束搜索采样策略 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 仅返回来自模型的响应 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Outputs

- `Boolean`

## Related Links

- [Invoke-LLMBooleanEvaluation on GitHub](https://github.com/genXdev/genXdev)
