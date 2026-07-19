# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检索当前 PowerShell 进程的所有后代进程。

## Description

检查所有正在运行的进程，识别出在其父进程链中当前PowerShell进程为祖先的进程。这包括直接子进程及其后代（孙进程等）。

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Get-Process -Id (Get-Process -Id $PID).Id | Get-ChildProcess

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

获取子进程，并显示详细输出，展示进程检测的详细信息。

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
