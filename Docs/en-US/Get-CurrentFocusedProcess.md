# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retrieves the process object of the window that currently has keyboard focus.

## Description

* This cmdlet uses Windows API calls through P/Invoke to identify and
  return the Process object associated with the currently focused window.
* It leverages the User32.dll functions GetForegroundWindow and
  GetWindowThreadProcessId to determine which window has focus and obtain
  its associated process ID.

## Syntax

```powershell
Get-CurrentFocusedProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host "Active window process: $($focusedProcess.ProcessName)"
```

Retrieves the process object for the window that currently has keyboard
focus.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
