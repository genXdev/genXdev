# Set-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 设置用于 GenXdev.AI 操作的人脸图像文件目录。

## Description

此函数配置GenXdev.AI模块用于各种人脸识别和AI操作的全局人脸目录。设置可以持久存储在偏好设置中（默认），仅存储在当前会话中（使用-SessionOnly），或从会话中清除（使用-ClearSession）。

## Syntax

```powershell
Set-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | 人脸图像文件的目录路径 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |

## Examples

### Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\Faces"
```

在首选项中持久设置人脸目录。

### Set-AIKnownFacesRootpath "C:\FacePictures"

```powershell
Set-AIKnownFacesRootpath "C:\FacePictures"
```

在首选项中持久设置人脸目录。

### Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly

```powershell
Set-AIKnownFacesRootpath -FacesDirectory "C:\TempFaces" -SessionOnly
```

为当前会话设置人脸目录（全局变量）。

### Set-AIKnownFacesRootpath -ClearSession

```powershell
Set-AIKnownFacesRootpath -ClearSession
```

清除会话人脸目录设置（全局变量），不影响持久性偏好。

## Related Links

- [Set-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
