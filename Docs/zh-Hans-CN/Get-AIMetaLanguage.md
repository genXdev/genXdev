# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> 获取图像元数据操作配置的默认语言。

## Description

* 此 cmdlet 检索 GenXdev.AI 模块用于图像元数据操作的默认语言。
* 它首先检查全局变量（除非指定 SkipSession），然后回退到持久化偏好设置，最后使用系统默认值。

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

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

从全局变量或偏好设置中获取当前配置的语言。

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

从持久化偏好设置中获取已配置的语言，忽略会话设置。

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

清除会话设置并从持久化偏好中获取语言。

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
