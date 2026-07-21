# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取用于 GenXdev.Data 操作的偏好数据文件的已配置数据库路径。

## Description

获取 GenXdev.Data 模块用于各种偏好存储和数据操作的全局数据库路径。
* 首先检查全局变量（除非指定 SkipSession），然后回退到持久化偏好设置，最后使用系统默认值。

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | 可选的数据库路径覆盖 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 使用会话中存储的备用设置来配置数据首选项，例如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 在检索之前清除会话设置（全局变量） |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 不要使用会话中存储的替代设置来处理数据首选项，如语言、数据库路径等 |

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

跳过会话变量，使用持久性首选项。

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

在检索路径前清除会话设置。

## Parameter Details

### `-PreferencesDatabasePath <String>`

> 可选的数据库路径覆盖

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 使用会话中存储的备用设置来配置数据首选项，例如语言、数据库路径等

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

> 在检索之前清除会话设置（全局变量）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-GenXdevPreferenceNames.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-GenXdevPreferencesDatabasePath.md)
