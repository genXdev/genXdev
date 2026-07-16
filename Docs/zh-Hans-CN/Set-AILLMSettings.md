# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | The type of LLM query |
| `-Model` | String | — | — | 1 | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | 7 | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | 8 | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support json_schema response format |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | The endpoint does not support image upload functionality. |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | 该端点是否不支持工具调用功能 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
