# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 获取 GenXdev.AI 中所有可用的默认 LLM 设置配置，用于 AI 操作。

## Description

检索为AI操作配置的完整默认大型语言模型（LLM）设置。可以通过查询类型、模型标识符、API端点或API密钥来过滤结果。支持基于会话和基于持久偏好的检索，并提供清除会话状态或完全绕过会话以直接从存储的偏好设置中读取的选项。

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

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

获取编码查询类型的所有可用默认配置。

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
