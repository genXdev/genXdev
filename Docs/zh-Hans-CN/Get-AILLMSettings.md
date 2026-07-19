# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 获取GenXdev.AI中AI操作的LLM设置。

## Description

此函数用于获取 GenXdev.AI 模块在各种 AI 操作中使用的 LLM（大型语言模型）设置。设置按优先级从会话变量、持久化偏好设置或默认设置 JSON 文件中获取。该函数支持基于可用系统内存资源的自动配置选择。

内存选择策略根据提供的 Gpu 和 Cpu 参数自动确定：
- 如果同时指定了 Gpu 和 Cpu 参数：使用 CPU + GPU 组合内存
- 如果仅指定了 Gpu 参数：优先使用 GPU 内存（回退到系统 RAM）
- 如果仅指定了 Cpu 参数：仅使用系统 RAM
- 如果未指定任何参数：使用 CPU + GPU 组合内存（默认）

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

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

获取 SimpleIntelligence 查询类型（默认）的 LLM 设置。

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

获取Coding查询类型的LLM设置。

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

仅从偏好或默认设置中获取LLM设置，忽略会话设置。

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
