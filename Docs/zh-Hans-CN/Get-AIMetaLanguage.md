# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | 图像元数据操作的默认语言 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
