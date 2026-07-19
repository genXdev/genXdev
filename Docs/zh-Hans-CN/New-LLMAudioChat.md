# New-LLMAudioChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmaudiochat

## Synopsis

> 创建一个与大语言模型交互的音频聊天会话。

## Description

发起与语言模型的语音对话，支持音频输入和输出。该函数处理音频录制、转录、模型查询以及文本转语音响应。支持多种语言模型和多种配置选项，包括窗口管理、GPU加速和高级音频处理功能。

## Syntax

```powershell
New-LLMAudioChat [[-Query] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-AudioTemperature <Double>] [-ChatMode <String>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Single>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <ScriptBlock[]>] [-ImageDetail <String>] [-IncludeThoughts] [-LanguageIn <String>] [-LengthPenalty <Single>] [-LLMQueryType <String>] [-LogProbThreshold <Single>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-ModelType <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Single>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SkipSession] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | 要发送给模型的初始查询文本 |
| `-Instructions` | String | — | — | 1 | — | 模型系统指令 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 要附加的文件路径数组 |
| `-ModelType` | String | — | — | Named | `'SmallEn'` | 要使用的Whisper模型类型，默认为LargeV3Turbo |
| `-AudioTemperature` | Double | — | — | Named | `0.5` | 音频输入识别的温度参数（0.0-1.0） |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-TemperatureResponse` | Double | — | — | Named | `0.01` | 用于控制响应随机性的温度参数。 |
| `-LanguageIn` | String | — | — | Named | — | 设置要检测的语言 |
| `-CpuThreads` | Int32 | — | — | Named | `0` | 使用的CPU线程数，默认为0（自动） |
| `-SuppressRegex` | String | — | — | Named | `$null` | 用于从输出中抑制令牌的正则表达式 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 音频上下文的大小 |
| `-SilenceThreshold` | Int32 | — | — | Named | `30` | 静音检测阈值（0..32767，默认为30） |
| `-LengthPenalty` | Single | — | — | Named | — | 长度惩罚 |
| `-EntropyThreshold` | Single | — | — | Named | — | 熵阈值 |
| `-LogProbThreshold` | Single | — | — | Named | — | 对数概率阈值 |
| `-NoSpeechThreshold` | Single | — | — | Named | — | 无语音阈值 |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ImageDetail` | String | — | — | Named | `'low'` | 图像细节级别 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
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
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@(
            'json',
            'powershell',
            'C#',
            'python',
            'javascript',
            'typescript',
            'html',
            'css',
            'yaml',
            'xml',
            'bash'
        )` | 只会输出指定类型的标记块 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 用作工具的 PowerShell 命令定义数组 |
| `-Functions` | ScriptBlock[] | — | — | Named | — | ScriptBlock array of tool functions to expose to the LLM (pass-through to Invoke-LLMQuery) |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array of tool function names that do not require confirmation (pass-through to Invoke-LLMQuery) |
| `-ChatMode` | String | — | — | Named | — | LLM查询的聊天模式（直通Invoke-LLMQuery） |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 最大工具调用返回长度（透传给 Invoke-LLMQuery） |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 禁用AI回答的文本转语音功能 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Disable text-to-speech for AI thought responses |
| `-NoVOX` | SwitchParameter | — | — | Named | — | 不要使用静音检测自动停止录音。 |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 是否使用桌面音频捕获而非麦克风输入 |
| `-AudioDevice` | String | — | — | Named | — | 音频设备名称或 GUID（支持通配符，选择第一个匹配项） |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | 同时使用台式机和录音设备 |
| `-NoContext` | SwitchParameter | — | — | Named | — | Don't use context |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 使用束搜索采样策略 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Whether to suppress recognized text in the output |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Will only output markup block responses |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Examples

### New-LLMAudioChat -Query "Tell me about PowerShell" `     -Model "qwen2.5-14b-instruct" `     -Temperature 0.7

```powershell
New-LLMAudioChat -Query "Tell me about PowerShell" `
    -Model "qwen2.5-14b-instruct" `
    -Temperature 0.7
```

### llmaudiochat "What's the weather?" -DontSpeak

```powershell
llmaudiochat "What's the weather?" -DontSpeak
```

## Related Links

- [New-LLMAudioChat on GitHub](https://github.com/genXdev/genXdev)
