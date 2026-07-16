# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | 用于处理图像元数据移除的目录路径数组。如果未指定，则使用默认系统目录。 |
| `-Language` | String | — | — | 1 | — | 用于删除特定语言元数据文件的语言。 |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | 偏好数据文件的数据库路径 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 递归目录。 |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | 只删除people.json文件（人脸识别数据）。 |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Only remove objects.json files (object detection data). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Only remove scenes.json files (scene classification data). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | 移除所有支持语言的元数据文件。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
