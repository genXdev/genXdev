# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat

## Synopsis

> 启动具有AI功能的交互式文本聊天会话。

## Description

发起一个具有AI能力的交互式聊天会话，允许用户在对话过程中添加或移除PowerShell函数，并执行PowerShell命令。此功能提供了一个全面的AI驱动对话界面，具有广泛的工具集成和自定义选项。

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | 要发送给模型的查询文本 *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | 模型系统指令 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 要附加的文件路径数组 |
| `-Temperature` | Double | — | — | 3 | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ImageDetail` | String | — | — | Named | `'low'` | 图像细节级别 |
| `-ResponseFormat` | String | — | — | Named | `$null` | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
} |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | 用作工具的 PowerShell 命令定义数组 |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | 只会输出指定类型的标记块 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 内部使用，仅在LLM调用后触发一次聊天模式 *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Names of tool functions that should not require confirmation |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 工具回调响应的最大长度 |
| `-AudioTemperature` | Object | — | — | Named | — | 音频生成的温度 |
| `-TemperatureResponse` | Object | — | — | Named | — | 生成回复的温度参数 |
| `-Language` | Object | — | — | Named | — | Language for the model or output |
| `-CpuThreads` | Object | — | — | Named | — | 要使用的 CPU 线程数 |
| `-SuppressRegex` | Object | — | — | Named | — | 用于抑制输出的正则表达式 |
| `-AudioContextSize` | Object | — | — | Named | — | 用于处理的音频上下文大小 |
| `-SilenceThreshold` | Object | — | — | Named | — | 音频处理的静音阈值 |
| `-LengthPenalty` | Object | — | — | Named | — | 序列生成的长度惩罚 |
| `-EntropyThreshold` | Object | — | — | Named | — | 输出过滤的熵阈值 |
| `-LogProbThreshold` | Object | — | — | Named | — | 用于输出过滤的对数概率阈值 |
| `-NoSpeechThreshold` | Object | — | — | Named | — | 音频检测无语音阈值 |
| `-DontSpeak` | Object | — | — | Named | — | 关闭语音输出 |
| `-DontSpeakThoughts` | Object | — | — | Named | — | 对思想的语音输出停用 |
| `-NoVOX` | Object | — | — | Named | — | 关闭语音激活（VOX） |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | 使用桌面音频捕获 |
| `-NoContext` | Object | — | — | Named | — | Disable context usage |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | 使用束搜索采样策略 |
| `-OnlyResponses` | Object | — | — | Named | — | { "type": "json_schema", "json_schema": { "name": "text_transformation_response", "strict": true, "schema": { "required": ["response"], "properties": { "response": { "type": "string", "description": "The transformed text output" } }, "type": "object" } } } |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Related Links

- [New-LLMTextChat on GitHub](https://github.com/genXdev/genXdev)
