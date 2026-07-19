# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 设置 GenXdev.Data 操作中使用的首选项数据库路径。

## Description

* 配置 GenXdev.Data 模块用于各种偏好存储和数据操作的全局数据库路径。
* 设置存储在当前会话中（使用全局变量），可以通过 -ClearSession 从会话中清除。

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

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

在当前会话中设置数据库路径（全局变量）。

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

通过位置参数设置数据库路径。

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

仅设置当前会话的路径，不进行持久化。

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

清除数据库路径的全局变量。

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
