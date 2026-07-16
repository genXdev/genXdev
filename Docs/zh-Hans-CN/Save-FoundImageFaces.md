# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | 将与所有可能的元数据类型匹配。 |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | 要查找的描述文本，允许使用通配符。 |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | 要寻找的人，允许使用通配符。 |
| `-Objects` | String[] | — | — | Named | `@()` | 要查找的对象，允许使用通配符。 |
| `-Scenes` | String[] | — | — | Named | `@()` | 要查找的场景，允许使用通配符。 |
| `-PictureType` | String[] | — | — | Named | `@()` | 用于筛选的图片类型，支持通配符。 |
| `-StyleType` | String[] | — | — | Named | `@()` | 按样式类型筛选，支持通配符。 |
| `-OverallMood` | String[] | — | — | Named | `@()` | 用于筛选的整体情绪，支持通配符。 |
| `-DatabaseFilePath` | String | — | — | Named | — | SQLite 数据库文件的路径。 |
| `-Language` | String | — | — | Named | — | 描述和关键词的语言。 |
| `-PathLike` | String[] | — | — | Named | `@()` | 按路径筛选图片的目录路径类搜索字符串数组（SQL LIKE 模式，例如 '%\2024\%'） |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | 接收之前通过 -PassThru 调用生成的搜索结果以重新生成视图。 |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | 用于保存裁剪人脸图像的目录。 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | 过滤包含露骨内容的图像。 |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | 筛选不含露骨内容的图像。 |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | 强制重建图像索引数据库。 |
| `-GeoLocation` | Double[] | — | — | Named | — | 要搜索的附近地理坐标 [纬度, 经度]。 |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | 从地理位置搜索图像的最大距离（以米为单位） |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | 同时将检测到的未知人员作为对象保存。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
