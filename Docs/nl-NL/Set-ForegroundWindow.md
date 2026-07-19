# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Brengt het opgegeven venster naar de voorgrond en maakt het het actieve venster.

## Description

* Maakt een venster het voorgrondvenster met behulp van meerdere Win32 API-methoden voor maximale betrouwbaarheid.
* Probeert eerst de SwitchToThisWindow API, en valt terug op SetForegroundWindow indien nodig.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | Vensterhandle om als voorgrondvenster in te stellen |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

Brengt een Kladblok-venster naar de voorgrond met behulp van het vensterhandvat.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

Gebruikt positionele parameter voor beknopte syntax.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
