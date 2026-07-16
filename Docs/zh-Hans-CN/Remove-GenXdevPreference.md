# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要移除的偏好名称 |
| `-RemoveDefault` | SwitchParameter | — | — | 1 | `False` | 同时从默认设置中移除偏好 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 使用存储在会话中的替代设置进行数据偏好设置，如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
