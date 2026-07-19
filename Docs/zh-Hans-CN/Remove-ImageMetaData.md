# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> 从图像目录中移除图像元数据文件。

## Description

Remove-ImageMetaData 函数用于删除与图像关联的配套 JSON 元数据文件。它可以有选择地仅删除关键词 (description.json)、人物数据 (people.json)、对象数据 (objects.json) 或场景数据 (scenes.json)，如果未提供特定开关，则删除所有元数据文件。通过指定 Language 参数可以删除特定语言的元数据文件，使用 AllLanguages 开关可以删除所有语言变体。

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

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

删除多个目录及其所有子目录中图像的所有元数据文件。

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

仅从默认系统目录及其子目录中删除 description.json 文件。

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

仅从MyPhotos目录中删除people.json文件。

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

从默认目录中递归删除英文和西班牙文描述文件。

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

对所有支持的语言使用别名来删除关键字文件。

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
