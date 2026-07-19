# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 返回托管 PowerShell 终端的窗口的进程对象。

## Description

* 从当前 PowerShell 进程开始，向上遍历进程树，以定位负责托管终端的父窗口。
* 如果直接父进程没有主窗口句柄，则会搜索具有主窗口的类似进程。
* 可用于识别包含 PowerShell 会话的实际终端窗口进程（如 Windows Terminal、ConHost 等）。

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

返回承载当前 PowerShell 会话的进程并显示其名称。

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
