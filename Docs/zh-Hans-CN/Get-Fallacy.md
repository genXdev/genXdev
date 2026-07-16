# Get-Fallacy

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `dispicetext

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-Fallacy -InputObject <Object> [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Text to parse to find Fallacies in |
| `-Instructions` | String | — | — | 1 | `''` | Instructions for the AI model on how to generate the string list |
| `-Attachments` | String[] | — | — | 2 | `@()` | 要附加的文件路径数组 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 函数定义数组 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 图像细节级别 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 无需确认的命令名称数组 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 用作工具的 PowerShell 命令定义数组 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | 为每个结果打开IMDB搜索 |
| `-AudioTemperature` | Double | — | — | Named | — | 控制音频生成的温度。 |
| `-TemperatureResponse` | Double | — | — | Named | — | 控制生成响应的温度。 |
| `-CpuThreads` | Int32 | — | — | Named | — | 用于处理的CPU线程数。 |
| `-SuppressRegex` | String | — | — | Named | — | 用于抑制某些输出的正则表达式。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于处理的音频上下文大小。 |
| `-SilenceThreshold` | Double | — | — | Named | — | 用于检测音频中静音部分的阈值。 |
| `-LengthPenalty` | Double | — | — | Named | — | 对较长回复施加的惩罚。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 响应生成中熵的阈值。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 输出的对数概率阈值。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 检测音频中无语音的阈值。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 阻止说出回复。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 阻止模型表达其思想。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 禁用 VOX（语音激活）。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 使用桌面音频捕获作为输入。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 禁用请求的上下文。 |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 使用束搜索采样策略。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Your request to only return responses without additional data has been noted. However, as previously mentioned, the output must be a valid JSON object containing a 'response' field. Therefore, I will include only the JSON object as per the specified requirements. |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 工具调用的最大回调长度。 |

## Outputs

- `Object[]`

## Related Links

- [Get-Fallacy on GitHub](https://github.com/genXdev/genXdev)
