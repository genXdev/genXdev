# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 用于存储偏好数据文件的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 当指定时，仅将设置存储在当前会话（全局变量）中，不会持久化到偏好设置。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 指定时，仅清除会话设置（全局变量），不影响持久偏好设置 |

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
