# Invoke-LLMQuery

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `qllm, `llm

## Synopsis

> 向兼容OpenAI的大型语言模型聊天补全API发送查询并处理响应。

## Description

该函数向兼容OpenAI的大型语言聊天补全API发送查询并处理响应。支持文本和图像输入，处理工具函数调用，可操作包括文本和音频在内的多种聊天模式。函数提供对LLM交互的全面支持，包括：文本和图像输入处理；工具函数调用与命令执行；交互式聊天模式（文本和音频）；模型初始化与配置；响应格式化与处理；会话管理与缓存；窗口定位与显示控制。

## Syntax

```powershell
Invoke-LLMQuery [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ChatOnce] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-Gpu <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | — | 0 | `''` | 要发送给模型的查询文本 |
| `-Instructions` | String | — | — | 1 | — | 模型系统指令 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 要附加的文件路径数组 |
| `-ResponseFormat` | String | — | — | Named | — | {
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
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 函数定义数组 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | 用作工具的 PowerShell 命令定义数组 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 无需用户确认的工具函数 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 图像细节级别 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-Gpu` | Int32 | — | — | Named | — | The `-Gpu` parameter. |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-AudioTemperature` | Double | — | — | Named | — | 音频生成随机性的温度 |
| `-TemperatureResponse` | Double | — | — | Named | — | 响应随机性的温度（音频聊天） |
| `-Language` | String | — | — | Named | — | 音频聊天的语言代码或名称 |
| `-CpuThreads` | Int32 | — | — | Named | — | 用于音频聊天的 CPU 线程数 |
| `-SuppressRegex` | String | — | — | Named | — | 正则表达式用于抑制音频聊天中的某些输出 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 音频聊天的音频上下文大小 |
| `-SilenceThreshold` | Double | — | — | Named | — | 音频聊天静音阈值 |
| `-LengthPenalty` | Double | — | — | Named | — | 音频聊天回复的长度惩罚 |
| `-EntropyThreshold` | Double | — | — | Named | — | 音频聊天的熵阈值 |
| `-LogProbThreshold` | Double | — | — | Named | — | 音频聊天的对数概率阈值 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音频聊天无语音阈值 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Don't speak audio responses |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 不要说出听觉的想法 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation) for audio chat |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 在音频聊天中使用桌面音频捕获 |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context for audio chat |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 在音频对话中使用波束搜索采样策略 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": ["response"],
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
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 将思维过程从对话历史中排除 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#',
            'python', 'javascript', 'typescript', 'html', 'css', 'yaml',
            'xml', 'bash')` | 只会输出指定类型的标记块 |
| `-ChatMode` | String | — | — | Named | — | Chat mode enabled. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | 内部使用，仅在LLM调用后触发一次聊天模式 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | `100000` | 工具回调输出的最大字符长度。超出此长度的输出将被截断并显示警告消息。默认值为100000个字符。 |

## Examples

### Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7

```powershell
Invoke-LLMQuery -Query "What is 2+2?" -Model "qwen" -Temperature 0.7
```

向 qwen 模型发送一个简单的数学查询，并指定温度参数。

### qllm "What is 2+2?" -Model "qwen"

```powershell
qllm "What is 2+2?" -Model "qwen"
```

使用别名发送查询，使用默认参数。

### Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"

```powershell
Invoke-LLMQuery -Query "Analyze this image" -Attachments @("image.jpg") -Model "qwen"
```

发送一条附带图片的查询以便分析。

### llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"

```powershell
llm "Start a conversation" -ChatMode "textprompt" -Model "qwen"
```

开始与指定模型进行交互式文本聊天会话。

## Related Links

- [Invoke-LLMQuery on GitHub](https://github.com/genXdev/genXdev)
