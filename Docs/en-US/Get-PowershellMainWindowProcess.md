# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Returns the process object for the window hosting the PowerShell terminal.

## Description

* Traverses up the process tree starting from the current PowerShell
  process to locate the parent window responsible for hosting the terminal.
* If the immediate parent process doesn't have a main window handle, it
  searches for similar processes that do have main windows.
* Useful for identifying the actual terminal window process (like Windows
  Terminal, ConHost, etc.) that contains the PowerShell session.

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

Returns the process hosting the current PowerShell session and displays its
name.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
