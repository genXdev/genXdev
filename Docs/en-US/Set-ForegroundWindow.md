# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Brings the specified window to the foreground and makes it the active
window.

## Description

* Makes a window the foreground window using multiple Win32 API methods for
  maximum reliability.
* First attempts using SwitchToThisWindow API, then falls back to
  SetForegroundWindow if needed.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | Window handle to set as foreground window |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

Brings a Notepad window to the foreground using the window handle.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

Uses positional parameter for concise syntax.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
