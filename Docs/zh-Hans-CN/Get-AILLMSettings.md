# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 获取设置的LLM查询类型 |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support json_schema response format |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | The endpoint does not support image upload functionality. |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | 该端点是否不支持工具调用功能 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 在检索之前清除会话设置（全局变量） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 跳过会话设置，仅从偏好或默认值中获取 |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
