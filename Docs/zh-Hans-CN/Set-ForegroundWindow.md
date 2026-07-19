# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 将指定窗口置于前台并使其成为活动窗口。

## Description

* 使用多种 Win32 API 方法将窗口置于前台，以实现最大可靠性。
* 首先尝试使用 SwitchToThisWindow API，若需要则回退到 SetForegroundWindow。

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | 要设置为前台窗口的窗口句柄 |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

使用窗口句柄将记事本窗口带到前台。

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

使用位置参数以实现简洁的语法。

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
