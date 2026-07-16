# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 人脸图像文件的目录路径 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 在检索之前清除会话设置（全局变量） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
