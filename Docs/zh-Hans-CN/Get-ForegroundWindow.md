# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 获取当前活动前台窗口的句柄。

## Description

* 此 cmdlet 检索当前位于前台并具有键盘焦点的窗口的窗口句柄 (HWND)。
* 它通过 P/Invoke 使用 Windows API 函数与 User32.dll 库进行交互。

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

检索并返回当前活动窗口的 IntPtr 句柄。

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

将前景窗口句柄存储在一个变量中并显示它。

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
