# Get-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `refactors

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `GenXdev.Helpers.RefactorDefinition[]`

## Related Links

- [Get-Refactor on GitHub](https://github.com/genXdev/genXdev)
