# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> 从 GenXdev 偏好设置中检索一个偏好值。

## Description

实现一个两级偏好检索系统。首先检查本地存储中的偏好值。如果未找到，则回退到默认存储。如果仍然未找到，则返回提供的默认值。

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要检索首选项的名称 |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | 未找到偏好时的默认值 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 使用存储在会话中的替代设置进行数据偏好设置，如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

获取“主题”偏好，若未设置则默认使用“深色”。

### Example 2

```powershell
getPreference "Theme" "Dark"
```

使用别名和位置参数。

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
