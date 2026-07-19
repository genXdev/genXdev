# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference

## Synopsis

> 在 GenXdev 偏好存储中设置一个偏好值。

## Description

* 管理 GenXdev 本地存储中的偏好设置。
* 可以设置新偏好、更新现有偏好，或在提供空值/空值时移除偏好。
* 偏好设置以"本地"同步方式存储。

## Syntax

```powershell
Set-GenXdevPreference [-Name] <string> [[-Value] <string>] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要设置的首选项名称 |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | 要存储的首选项值 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 使用存储在会话中的替代设置进行数据偏好设置，如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

将本地存储中的“主题”偏好设置更新为“深色”。

### Example 2

```powershell
setPreference Theme Light
```

使用别名和位置参数来设置主题偏好。

## Related Links

- [Set-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
