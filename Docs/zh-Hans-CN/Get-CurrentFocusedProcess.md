# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 检索当前拥有键盘焦点的窗口的进程对象。

## Description

* 此 cmdlet 通过 P/Invoke 调用 Windows API 来识别并返回与当前聚焦窗口关联的 Process 对象。
* 它利用 User32.dll 中的 GetForegroundWindow 和 GetWindowThreadProcessId 函数来确定哪个窗口拥有焦点，并获取其关联的进程 ID。

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

检索当前拥有键盘焦点的窗口的进程对象。

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
