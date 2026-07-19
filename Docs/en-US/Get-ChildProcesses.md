# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retrieves all processes that are descendants of the current PowerShell
process.

## Description

* Examines all running processes and identifies those that have the current
  PowerShell process as an ancestor in their parent process chain.
* This includes both direct child processes and their descendants
  (grandchildren, etc.).

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Get all child processes of the current PowerShell session.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

Get child processes with verbose output showing detailed process detection
information.

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
