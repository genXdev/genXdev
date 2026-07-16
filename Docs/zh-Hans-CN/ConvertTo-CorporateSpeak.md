# ConvertTo-CorporateSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `corporatize

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ConvertTo-CorporateSpeak [[-Text] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | We are excited to announce that we are implementing a new initiative designed to optimize our operational efficiencies and leverage our core competencies to drive synergistic value across the organization. This strategic pivot will enable us to more effectively align our deliverables with our key performance indicators, ensuring that we are maximizing stakeholder engagement and fostering a culture of continuous improvement. As we move forward, we encourage all team members to embrace this paradigm shift and actively participate in the ideation process to ensure a seamless integration into our existing workflows. Thank you for your commitment to excellence and your dedication to our shared vision. |
| `-Attachments` | String[] | — | — | 2 | `@()` | 要附加的文件路径数组 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ImageDetail` | String | — | — | Named | `'low'` | 图像细节级别 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 函数定义数组 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 用作工具的 PowerShell 命令定义数组 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 无需确认的命令名称数组 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
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
| `-AudioTemperature` | Double | — | — | Named | — | 音频响应随机性的温度（传递给LLMQuery） |
| `-TemperatureResponse` | Double | — | — | Named | — | 响应生成的温度（传递给LLMQuery） |
| `-Language` | String | — | — | Named | — | 用于处理的语言代码或名称（传递给LLMQuery） |
| `-CpuThreads` | Int32 | — | — | Named | — | 要使用的 CPU 线程数（传递给 LLMQuery） |
| `-SuppressRegex` | String | — | — | Named | — | 正则表达式用于抑制输出（传递给 LLMQuery） |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于处理的音频上下文大小（传递给LLMQuery） |
| `-SilenceThreshold` | Double | — | — | Named | — | 音频检测的静音阈值（传递给LLMQuery） |
| `-LengthPenalty` | Double | — | — | Named | — | 序列生成的长度惩罚（传递给LLMQuery） |
| `-EntropyThreshold` | Double | — | — | Named | — | 输出过滤的熵阈值（传递给LLMQuery） |
| `-LogProbThreshold` | Double | — | — | Named | — | 输出过滤的对数概率阈值（传递给LLMQuery） |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 无语音检测的语音阈值（已传递给LLMQuery） |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 禁用语音输出（传递给LLMQuery） |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 禁用对思考过程（传递给LLMQuery）的语音输出 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 使用桌面音频捕获（传递到LLMQuery） |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage (passed to LLMQuery) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 启用束搜索采样策略（传递给LLMQuery） |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 你好，今天怎么样？ |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types (passed to LLMQuery) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 最大工具回调长度（传递给 LLMQuery） |

## Outputs

- `String`

## Related Links

- [ConvertTo-CorporateSpeak on GitHub](https://github.com/genXdev/genXdev)
