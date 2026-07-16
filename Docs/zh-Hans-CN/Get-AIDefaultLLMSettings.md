# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | 获取设置的LLM查询类型 |
| `-Model` | String | — | — | Named | — | 按模型标识符或模式筛选配置 |
| `-ApiEndpoint` | String | — | — | Named | — | 按API端点URL过滤配置 |
| `-ApiKey` | String | — | — | Named | — | 通过 API 密钥过滤配置 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 在检索之前清除会话设置（全局变量） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 跳过会话设置，仅从偏好或默认值中获取 |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
