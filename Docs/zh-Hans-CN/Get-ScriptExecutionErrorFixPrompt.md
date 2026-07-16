# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | 要执行并分析错误的脚本 |
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 函数定义数组 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | 用作工具的 PowerShell 命令定义数组 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 无需确认的命令名称数组 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 继续上次对话 |
| `-Speak` | SwitchParameter | — | — | Named | — | 启用AI响应的文本转语音功能 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Enable text-to-speech for AI thought responses |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 不要将会话存储在会话缓存中 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-Attachments` | Object | — | — | Named | — | Attachments to include in the LLM query. |
| `-ImageDetail` | Object | — | — | Named | — | LLM查询的图像细节级别。 |
| `-TTLSeconds` | Object | — | — | Named | — | LLM 查询的生存时间（秒）。 |
| `-IncludeThoughts` | Object | — | — | Named | — | {
  "thoughts": "The user requested translation of text to zh-Hans-CN. The input is a JSON schema definition for a text transformation response. Since the user specified to include model thoughts in the LLM response, I have added a 'thoughts' field in the output. However, the schema only allows a 'response' field. To comply with the schema, I will output the thoughts as part of the response string.",
  "response": "{\"type\":\"json_schema\",\"json_schema\":{\"name\":\"text_transformation_response\",\"strict\":true,\"schema\":{\"required\":[\"response\"],\"properties\":{\"response\":{\"type\":\"string\",\"description\":\"转换后的文本输出\"}},\"type\":\"object\"}}}"
} |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | Here is the requested text transformed according to your instructions.

This is a sample output. |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | Filter for markup block types in the LLM response. |
| `-ChatOnce` | Object | — | — | Named | — | Run chat only once for the LLM query. |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | LLM 查询的最大工具回调长度。 |
| `-AudioTemperature` | Object | — | — | Named | — | 音频生成的温度参数（控制随机性） |
| `-TemperatureResponse` | Object | — | — | Named | — | 用于生成响应的温度参数。 |
| `-Language` | Object | — | — | Named | — | Language for LLM query. |
| `-CpuThreads` | Object | — | — | Named | — | 使用的CPU线程数。 |
| `-SuppressRegex` | Object | — | — | Named | — | 用于抑制输出的正则表达式。 |
| `-AudioContextSize` | Object | — | — | Named | — | 用于LLM查询的音频上下文大小。 |
| `-SilenceThreshold` | Object | — | — | Named | — | 音频处理的静音阈值。 |
| `-LengthPenalty` | Object | — | — | Named | — | Length penalty for LLM output. |
| `-EntropyThreshold` | Object | — | — | Named | — | 熵阈值用于大语言模型输出。 |
| `-LogProbThreshold` | Object | — | — | Named | — | LLM 输出的对数概率阈值。 |
| `-NoSpeechThreshold` | Object | — | — | Named | — | 音频处理没有语音阈值。 |
| `-DontSpeak` | Object | — | — | Named | — | 请勿播放音频输出。 |
| `-DontSpeakThoughts` | Object | — | — | Named | — | translate the following text into Chinese |
| `-NoVOX` | Object | — | — | Named | — | Disable VOX for audio output. |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | 使用桌面音频捕获。 |
| `-NoContext` | Object | — | — | Named | — | Do not use context for LLM query. |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | 使用束搜索采样策略。 |
| `-OnlyResponses` | Object | — | — | Named | — | User
Translate the following text into zh-Hans-CN. IMPORTANT TRANSLATION RULES:
1. Analyze the input format first - it could be code, markup, structured data, or plain text.
2. Preserve all syntax, structure, and technical elements like programming keywords, tags, or data format specific elements.
3. Only translate human-readable text portions like comments, string values, documentation, or natural language content.
4. Maintain exact formatting, indentation, and line breaks.
5. Never translate identifiers, function names, variables, or technical keywords.

You are a helpful assistant designed to output JSON.

## Response Format

Reply with JSON object ONLY.

===== CRITICAL JSON OUTPUT REQUIREMENT =====
You MUST respond with ONLY valid json. NO other text is allowed.
Do NOT include any explanation, commentary, or text before or after the json.
Your response must be parseable json that conforms EXACTLY to this schema:
{
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
}

Example response format: {"response":"your actual response here"}
===== END REQUIREMENT ===== |

## Outputs

- `Object[]`

## Related Links

- [Get-ScriptExecutionErrorFixPrompt on GitHub](https://github.com/genXdev/genXdev)
