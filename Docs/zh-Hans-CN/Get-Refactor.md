# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> 根据名称模式从 GenXdev 偏好设置中检索重构定义。

## Description

搜索并加载存储在GenXdev偏好设置中的重构定义集。每个重构集都以JSON字符串的形式存储在名称以'refactor_set_'开头的偏好设置中。该函数将匹配到的集合反序列化为对象。

## Syntax

```powershell
Get-Refactor [[-Name] <String[]>] [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | 用于搜索重构定义的模式 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-DefaultValue` | String | — | — | Named | — | 未找到偏好时的默认值 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 使用存储在会话中的替代设置进行数据偏好设置，如语言、数据库路径等 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 在检索之前清除会话设置（全局变量） |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理数据偏好，如语言、数据库路径等 |

## Examples

### Get-Refactor -Name "CodeStyle*" Returns refactor definitions matching pattern "CodeStyle*"

```powershell
Get-Refactor -Name "CodeStyle*"
Returns refactor definitions matching pattern "CodeStyle*"
```

### refactor "UnitTest" Uses alias to find refactor definitions containing "UnitTest"

```powershell
refactor "UnitTest"
Uses alias to find refactor definitions containing "UnitTest"
```

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)
