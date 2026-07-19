# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取 GenXdev.Data 操作中使用的偏好数据文件的配置数据库路径。

## Description

* 检索 GenXdev.Data 模块用于各种偏好存储和数据操作的全局数据库路径。
* 首先检查全局变量（除非指定了 SkipSession），然后回退到持久化偏好设置，最后使用系统默认值。

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 可选的数据库路径覆盖 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 使用存储在会话中的替代设置进行数据偏好设置，如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

从全局变量或首选项中检索数据库路径。

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

跳过会话变量，使用持久化偏好设置。

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

在检索路径之前清除会话设置。

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
