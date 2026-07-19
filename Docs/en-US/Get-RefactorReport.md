# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> Generates a detailed report of refactoring operations and their status.

## Description

Analyzes and reports on the progress of refactoring operations by examining their current state, completion status, and affected functions. Provides output in either structured hashtable format or human-readable aligned text columns. The report includes refactor name, prompt key, priority, status, function count and completion percentage.

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the refactor, accepts wildcards 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Specifies the path to the preferences database file. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | If set, only use the session cache for refactor data. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | If set, clear the session cache before running. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | If set, skip loading session cache. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Generates a text report for refactors matching "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Generates hashtable report for all refactors using alias.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
