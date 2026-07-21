# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 设置用于 GenXdev.Data 操作的首选项的数据库路径。

## Description

* 配置 GenXdev.Data 模块用于各种偏好存储和数据操作的全局数据库路径。
* 设置存储在当前会话中（使用全局变量），并且可以从会话中清除（使用 -ClearSession）。

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 偏好数据文件所在的数据库路径 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用会话中存储的替代设置来处理数据首选项，如语言、数据库路径等 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 指定后，仅将设置存储在当前会话（全局变量）中，不持久化到首选项。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 当指定此参数时，仅清除会话设置（全局变量），而不影响持久化首选项。 |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

设置当前会话中的数据库路径（全局变量）。

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

使用位置参数设置数据库路径。

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

仅设置当前会话的路径，而不进行持久化。

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

清除数据库路径的全局变量。

## Parameter Details

### `-PreferencesDatabasePath <String>`

> 偏好数据文件所在的数据库路径

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 不要使用会话中存储的替代设置来处理数据首选项，如语言、数据库路径等

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 指定后，仅将设置存储在当前会话（全局变量）中，不持久化到首选项。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> 当指定此参数时，仅清除会话设置（全局变量），而不影响持久化首选项。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevPreference.md)
