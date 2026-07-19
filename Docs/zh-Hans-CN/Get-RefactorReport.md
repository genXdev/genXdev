# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> 重构操作详细报告及状态

生成一份关于重构操作及其状态的详细报告。

## Description

通过检查当前状态、完成进度及受影响的函数，分析并报告重构操作的进展。以结构化哈希表或人类可读的对齐文本列形式输出报告。报告内容包括重构名称、提示键、优先级、状态、函数数量及完成百分比。

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

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Refactoring report for refactors matching "DatabaseRefactor":

No refactors found matching "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

生成所有使用别名的重构的哈希表报告。

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
