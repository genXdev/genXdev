# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> 使用 AI 生成的描述和关键词更新图片元数据。

## Description

Invoke-ImageKeywordUpdate 函数利用 AI 分析图像，生成描述、关键词及其他元数据。它会为每张图像创建一个包含这些信息的配套 JSON 文件。该函数可以仅处理新图像，也可以更新现有元数据，并支持递归目录扫描。

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 包含待处理图像的目录路径 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 处理指定目录及其所有子目录中的图像 |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 只处理那些还没有人脸元数据文件的图像 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 将重试之前失败的图像关键字更新 |
| `-Language` | String | — | — | Named | — | 生成描述和关键词所使用的语言 |
| `-FacesDirectory` | String | — | — | Named | — | 包含按人物文件夹组织的人脸图像的目录。如果未指定，则使用已配置的人脸目录偏好。 |
| `-Instructions` | String | — | — | 2 | — | 模型系统指令 |
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
| `-Temperature` | Double | — | — | Named | `-1` | 响应随机性的温度参数（0.0-1.0） |
| `-ImageDetail` | String | — | — | Named | `'high'` | 图像细节级别 |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-ApiEndpoint` | String | — | — | Named | — | AI操作的API端点URL |
| `-ApiKey` | String | — | — | Named | — | 用于经过身份验证的人工智能操作的API密钥 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-Functions` | String[] | — | — | Named | — | 指定用于AI操作的函数。 |
| `-ExposedCmdLets` | String[] | — | — | Named | — | 指定AI操作公开的cmdlets。 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | 指定无需确认的工具函数名称。 |
| `-NoContext` | SwitchParameter | — | — | Named | — | 如果指定，则禁用上下文使用。 |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 工具调用的最大回调长度。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru 返回结构化对象而非输出到控制台 |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | 检测faces目录的变化，并在需要时重新注册人脸 |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
