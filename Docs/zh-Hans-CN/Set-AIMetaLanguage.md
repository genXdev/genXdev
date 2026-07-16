# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | 图像元数据操作的默认语言 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
