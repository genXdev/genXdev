# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> Starts a process with a specified priority level.

## Description

* Launches an executable with a customizable priority level and provides
  options for waiting and process handling.
* Wraps Start-Process with additional functionality to control process
  priority and execution behavior.

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Path to the executable to run |
| `-ArgumentList` | String[] | — | — | 1 | — | Arguments to pass to the executable |
| `-Priority` | String | — | — | 2 | — | Process priority level |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Don't wait for process completion |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Return the process object |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Starts Notepad with low priority and returns immediately.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Uses the 'nice' alias to start a process with high priority.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
