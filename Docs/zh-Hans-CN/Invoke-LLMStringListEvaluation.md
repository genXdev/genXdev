# Invoke-LLMStringListEvaluation

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `getlist, `getstring

## Synopsis

> 使用AI分析从输入文本中提取或生成相关字符串列表。

## Description

此函数利用AI模型分析输入文本，提取或生成相关字符串列表。它能够处理文本以识别关键点、提取列表中的项目或生成相关概念。输入可以通过参数直接提供、来自管道或来自系统剪贴板。函数返回字符串数组，并可选择将结果复制到剪贴板。

## Syntax

```powershell
Invoke-LLMStringListEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | {
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
| `-Instructions` | String | — | — | 1 | `''` | Instructions for the AI model on how to generate the string list |
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
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Copy the result to clipboard |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 不要将模型的思考添加到对话历史中 |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | 为AI模型启用默认工具 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | The `-OutputMarkdownBlocksOnly` parameter. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-AudioTemperature` | Double | — | — | Named | — | 音频响应随机性的温度参数。 |
| `-TemperatureResponse` | Double | — | — | Named | — | 文本响应随机性的温度参数。 |
| `-Language` | String | — | — | Named | — | 响应语言代码或标识符。 |
| `-CpuThreads` | Int32 | — | — | Named | — | 使用的CPU线程数。 |
| `-SuppressRegex` | String | — | — | Named | — | 用于抑制某些输出的正则表达式。 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 用于处理的音频上下文大小。 |
| `-SilenceThreshold` | Double | — | — | Named | — | 音频检测的静音阈值。 |
| `-LengthPenalty` | Double | — | — | Named | — | 序列生成的长度惩罚。 |
| `-EntropyThreshold` | Double | — | — | Named | — | 输出过滤的熵阈值。 |
| `-LogProbThreshold` | Double | — | — | Named | — | 输出过滤的对数概率阈值。 |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 音频检测无语音阈值。 |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 禁用语音输出。 |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | 对思考过程禁用语音输出。 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Disable VOX (voice activation). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 使用桌面音频捕获。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | Disable context usage. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 使用束搜索采样策略。 |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | {
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
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 工具调用的最大回调长度。 |

## Examples

### PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +     "pipeline, integrated scripting environment, backwards compatibility, " +     "and enterprise management.") Returns: @("Object-based pipeline", "Integrated scripting environment",          "Backwards compatibility", "Enterprise management")

```powershell
PS> Invoke-LLMStringListEvaluation -Text ("PowerShell features: object-based " +
    "pipeline, integrated scripting environment, backwards compatibility, " +
    "and enterprise management.")
Returns: @("Object-based pipeline", "Integrated scripting environment",
         "Backwards compatibility", "Enterprise management")
```

### PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |     Invoke-LLMStringListEvaluation Returns: @("Keyboard", "Mouse", "Monitor", "Headset")

```powershell
PS> "Make a shopping list with: keyboard, mouse, monitor, headset" |
    Invoke-LLMStringListEvaluation
Returns: @("Keyboard", "Mouse", "Monitor", "Headset")
```

### PS> getlist "List common PowerShell commands for file operations" -SetClipboard Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",                                   "Remove-Item", "Set-Content", "Get-Content") ##############################################################################

```powershell
PS> getlist "List common PowerShell commands for file operations" -SetClipboard
Returns and copies to clipboard: @("Get-ChildItem", "Copy-Item", "Move-Item",
                                  "Remove-Item", "Set-Content", "Get-Content")
##############################################################################
```

## Outputs

- `String[]`

## Related Links

- [Invoke-LLMStringListEvaluation on GitHub](https://github.com/genXdev/genXdev)
