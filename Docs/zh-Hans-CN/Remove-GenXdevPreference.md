# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> 从GenXdev偏好存储中移除一个偏好值。

## Description

* 从本地存储中移除偏好值，并可选择同时从默认存储中移除。
* 提供两组参数——一组仅用于本地移除，另一组用于同时从本地和默认存储中移除。
* 在修改默认存储时确保适当的同步。

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要移除的偏好名称 |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | 同时从默认设置中移除偏好 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 使用存储在会话中的替代设置进行数据偏好设置，如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

仅从本地存储中移除“主题”偏好。

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

从本地存储和默认存储中移除“主题”偏好设置。

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
