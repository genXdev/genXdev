# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> 更新指定目录中图像文件的对象检测元数据。

## Description

此函数利用人工智能处理指定目录中的图像以检测对象。它会创建包含检测到的对象、其位置、置信度分数和标签的JSON元数据文件。该函数支持批量处理，可配置置信度阈值，并可以选择跳过已有的元数据文件或重试之前检测失败的图像。

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 包含待处理图像的目录路径 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 处理指定目录及其所有子目录中的图像 |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | 只处理那些还没有人脸元数据文件的图像 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 将重试之前失败的图像关键字更新 |
| `-Language` | String | — | — | Named | — | 生成描述和关键词所使用的语言 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | 用于AI操作的模型标识符或模式 |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 操作超时秒数 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

此示例使用0.5置信度阈值的默认设置处理C:\Photos和D:\Pictures及其所有子目录中的图像。

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

该示例仅处理新图片，并使用位置参数语法重试之前失败的图片，支持多个目录。

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

此示例使用GPU加速，并采用更高的置信度阈值0.7，以获得更准确但更少的目标检测结果。

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
