# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault

## Synopsis

> 在 GenXdev 偏好设置存储中设置默认偏好值。

## Description

* 管理 GenXdev 偏好系统中的默认偏好。
* 处理值存储、在值为空时移除偏好，并确保更改在整个系统中同步。
* 支持空值，在这种情况下完全移除该偏好。

## Syntax

```powershell
Set-GenXdevDefaultPreference [-Name] <string> [[-Value] <string>] [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | 要在默认设置中设定的首选项名称 |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | 要存储的首选项值 |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | 偏好数据文件的数据库路径 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 使用存储在会话中的替代设置进行数据偏好设置，如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

将默认主题偏好设置为“深色”。

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

在默认设置中使用别名禁用电子邮件通知。

## Related Links

- [Set-GenXdevDefaultPreference on GitHub](https://github.com/genXdev/genXdev)
