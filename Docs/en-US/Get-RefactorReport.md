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
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the refactor, accepts wildcards 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Specifies the path to the preferences database file. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | If set, only use the session cache for refactor data. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | If set, clear the session cache before running. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | If set, skip loading session cache. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
