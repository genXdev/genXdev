# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 使用AI视觉功能分析图像内容

## Description

利用AI视觉能力处理图像，分析内容并解答关于图像的疑问。该功能支持多种分析参数，包括控制响应随机性的温度参数以及限制输出长度的令牌数参数。

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | 用于分析图像的查询字符串 |
| `-ImagePath` | String | ✅ | — | 1 | — | 用于分析的图像文件路径 |
| `-Instructions` | String | — | — | 2 | — | 模型系统指令 |
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
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ImageDetail` | String | — | — | Named | `'high'` | 图像细节级别 |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-Functions` | String[] | — | — | Named | — | 指定用于AI操作的函数。 |
| `-ExposedCmdLets` | String[] | — | — | Named | — | 指定AI操作公开的cmdlets。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 指定无需确认的工具函数名称。 |
| `-AudioTemperature` | Double | — | — | Named | — | 用于音频响应的生成温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | 用于生成响应的温度参数。 |
| `-Language` | String | — | — | Named | — | 生成描述和关键词所使用的语言 |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用的CPU线程数。 |
| `-SuppressRegex` | String | — | — | Named | — | 用于抑制输出的正则表达式。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于处理的音频上下文大小。 |
| `-SilenceThreshold` | Double | — | — | Named | — | 音频处理的静音阈值。 |
| `-LengthPenalty` | Double | — | — | Named | — | 序列生成的长度惩罚。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 输出过滤的熵阈值。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 输出过滤的对数概率阈值。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音频检测无语音阈值。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 如果指定了，请不要说出输出。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 如果指定，不要说出模型的思考。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 如果指定，则禁用 VOX。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 如果指定，则使用桌面音频捕获。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 如果指定，则禁用上下文使用。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 如果指定，则使用beam search采样策略。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 如果指定，仅返回响应。 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 如果指定了，不要在历史中添加想法。 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 我是大语言模型，可以帮你解答问题、提供信息。有什么我可以帮你的吗？ |
| `-Speak` | SwitchParameter | — | — | Named | — | 输入 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | I am an AI assistant created by Anthropic. I'm designed to be helpful, harmless, and honest. Currently, I'm thinking about how to best respond to your request while maintaining these values. I consider the context of the conversation, the specific task at hand, and the most appropriate way to provide a useful response. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | markup blocks |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types. |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | { "type": "json_schema", "json_schema": { "name": "text_transformation_response", "strict": true, "schema": { "required": ["response"], "properties": { "response": { "type": "string", "description": "The transformed text output" } }, "type": "object" } } } |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Disable session caching. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 工具调用的最大回调长度。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置首选项，也要强制显示同意提示以安装ImageSharp包。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意第三方软件安装，并为ImageSharp包设置持久标志。 |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

Analyzes an image with specific temperature and token limits.

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

使用别名和位置参数的简单图像分析。

## Related Links

- [Invoke-QueryImageContent on GitHub](https://github.com/genXdev/genXdev)
