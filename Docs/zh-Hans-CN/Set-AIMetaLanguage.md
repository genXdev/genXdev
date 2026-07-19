# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> 设置GenXdev.AI图像元数据操作的默认语言，并可选择设置图像目录。

## Description

此函数配置 GenXdev.AI 模块中图像元数据操作的全局默认语言。可选地，它还可以设置全局图像目录。这两个设置都会持久化存储在模块的偏好存储中，以便跨会话使用。

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

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

将语言和图像目录持久化设置在偏好设置中。

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

在首选项中持久地设置语言。

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

仅为当前会话设置语言（全局变量）。

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

清除会话语言设置（全局变量），不影响持久偏好设置。

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
