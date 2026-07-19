# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the handle of the currently active foreground window.

## Description

* This cmdlet retrieves the window handle (HWND) of the window that is
  currently in the foreground and has keyboard focus.
* It uses Windows API functions through P/Invoke to interact with the
  User32.dll library.

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

Retrieves and returns the IntPtr handle of the currently active window.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

Stores the foreground window handle in a variable and displays it.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
