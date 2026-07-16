# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | 用于处理图像元数据更新的目录路径数组 |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | 将重试之前失败的图像元数据更新 |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have metadata files |
| `-Recurse` | SwitchParameter | — | — | Named | — | 如果指定，则递归处理子目录中的图像 |
| `-Force` | SwitchParameter | — | — | Named | — | 即使元数据已存在也强制重建 |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return structured objects instead of outputting to console |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用会话中存储的替代设置来处理AI偏好，例如语言、图像集合等 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
