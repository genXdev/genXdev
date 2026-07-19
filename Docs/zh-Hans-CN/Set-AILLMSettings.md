# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 设置GenXdev.AI中AI操作的LLM设置。

## Description

此函数配置GenXdev.AI模块用于各种AI操作的LLM（大型语言模型）设置。设置可以持久存储在首选项中（默认），仅保存在当前会话中（使用-SessionOnly），或从会话中清除（使用-ClearSession）。该函数会验证至少提供了一个设置参数，除非是在清除会话设置的情况下。

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

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

在偏好设置中持久化地为编码查询类型设置LLM参数。

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

仅为当前会话设置 SimpleIntelligence 的 LLM 设置。

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

清除图片查询类型的会话LLM设置，且不影响持久偏好。

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

使用位置参数设置编码查询类型的LLM设置。

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
