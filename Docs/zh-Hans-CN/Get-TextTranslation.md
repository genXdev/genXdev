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
| `-Text` | String | — | ✅ (ByValue) | 0 | — | 你是一位设计用于输出 JSON 的助手。 |
| `-Instructions` | String | — | — | 1 | — | 用于指导AI模型翻译风格和上下文的附加说明 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 要附加的文件路径数组 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ImageDetail` | String | — | — | Named | `'low'` | 图像细节级别 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 函数定义数组 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 用作工具的 PowerShell 命令定义数组 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 无需确认的命令名称数组 |
| `-LLMType` | String | — | — | Named | `'TextTranslation'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the enhanced text to clipboard |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | 在处理过程中允许使用默认的AI工具 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-AudioTemperature` | Double | — | — | Named | — | 音频响应随机性的温度参数（传递给大语言模型） |
| `-TemperatureResponse` | Double | — | — | Named | — | 响应生成的温度（传递给LLM） |
| `-Language` | String | — | — | Named | — | zh-Hans-CN |
| `-CpuThreads` | Int32 | — | — | Named | — | CPU 线程数（传递给 LLM） |
| `-SuppressRegex` | String | — | — | Named | — | 用于抑制输出的正则表达式（传递给LLM） |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于处理的音频上下文大小（传递给 LLM） |
| `-SilenceThreshold` | Double | — | — | Named | — | 音频检测的静音阈值（传递给LLM） |
| `-LengthPenalty` | Double | — | — | Named | — | 序列生成长度惩罚（传递给LLM） |
| `-EntropyThreshold` | Double | — | — | Named | — | 输出过滤的熵阈值（传递给LLM） |
| `-LogProbThreshold` | Double | — | — | Named | — | 输出过滤的对数概率阈值（传递给LLM） |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 没有用于音频检测的语音阈值（传递给LLM） |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 禁用语音输出（传递给LLM） |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 禁用对（传递给大语言模型的）思考过程的语音输出 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 禁用VOX（语音激活）（传递给LLM） |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 使用桌面音频捕获（传递给LLM） |
| `-NoContext` | SwitchParameter | — | — | Named | — | 禁用上下文使用（传递给LLM） |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 启用波束搜索采样策略（传递给LLM） |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
  "required": ["response"],
  "properties": {
    "response": {
      "type": "string",
      "description": "The transformed text output"
    }
  },
  "type": "object"
} |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Hello! How can I assist you today? |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLM) |
| `-NoCache` | SwitchParameter | — | — | Named | — | 跳过翻译缓存；始终调用LLM API |
| `-ClearCache` | SwitchParameter | — | — | Named | — | 清除所有语言的翻译缓存 |

## Outputs

- `String`

## Related Links

- [Get-TextTranslation on GitHub](https://github.com/genXdev/genXdev)
