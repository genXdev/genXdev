# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bringt das angegebene Fenster in den Vordergrund und macht es zum aktiven Fenster.

## Description

* Macht ein Fenster zum Vordergrundfenster unter Verwendung mehrerer Win32-API-Methoden für maximale Zuverlässigkeit.
* Zuerst wird die SwitchToThisWindow-API versucht, dann fällt es auf SetForegroundWindow zurück, falls nötig.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | Fensterhandle, das als Vordergrundfenster festgelegt werden soll |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

Bringt ein Notepad-Fenster mithilfe des Fensterhandles in den Vordergrund.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

Verwendet Positionsparameter für eine prägnante Syntax.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
