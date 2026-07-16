# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | The text to convert from diplomatic speak |
| `-Instructions` | String | — | — | 1 | `''` | AI 模型的附加说明 |
| `-Temperature` | Double | — | — | Named | `0.0` | 响应随机性的温度参数（0.0-1.0） |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the transformed text to clipboard |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-Attachments` | Object[] | — | — | Named | — | 要在AI操作中包含的附件。 |
| `-ImageDetail` | String | — | — | Named | — | 用于 AI 处理的图像细节级别。 |
| `-Functions` | Object[] | — | — | Named | — | 向AI模型暴露的函数。 |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | 用于暴露给AI模型的Cmdlets。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 无需确认的工具函数名称 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 不要在AI历史中添加想法。 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | {
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
          "description": "转换后的文本输出"
        }
      },
      "type": "object"
    }
  }
} |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | 在AI处理过程中大声说出思考内容。 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 为此操作禁用会话缓存。 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | 允许在AI操作中使用默认工具。 |
| `-AudioTemperature` | Double | — | — | Named | — | AI音频生成的音频温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | AI响应生成的温度。 |
| `-CpuThreads` | Int32 | — | — | Named | — | 用于AI操作的CPU线程数。 |
| `-SuppressRegex` | String[] | — | — | Named | — | Regex to suppress in AI output. |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于AI音频处理的音频上下文大小。 |
| `-SilenceThreshold` | Double | — | — | Named | — | AI音频处理的静音阈值 |
| `-LengthPenalty` | Double | — | — | Named | — | AI 序列生成的长度惩罚。 |
| `-EntropyThreshold` | Double | — | — | Named | — | AI输出的熵阈值。 |
| `-LogProbThreshold` | Double | — | — | Named | — | AI输出的对数概率阈值。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | AI音频处理无语音阈值。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 不要说出AI的输出。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 不要像AI那样思考。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 为AI音频输出禁用VOX。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 使用桌面音频采集进行AI音频处理。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 不要在AI操作中使用上下文。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use beam search sampling strategy for AI. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Return only responses from AI. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for markup block types in AI output. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 工具调用的最大回调长度。 |

## Outputs

- `String`

## Related Links

- [ConvertFrom-DiplomaticSpeak on GitHub](https://github.com/genXdev/genXdev)
