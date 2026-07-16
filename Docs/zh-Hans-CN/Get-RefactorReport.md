# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 重构的名称，接受通配符 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 指定偏好设置数据库文件的路径。 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | 如果设置，则仅对重构数据使用会话缓存。 |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 如果设置，则在运行前清除会话缓存。 |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 如果设置，则跳过加载会话缓存。 |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
