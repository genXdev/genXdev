# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Amène la fenêtre spécifiée au premier plan et en fait la fenêtre active.

## Description

* Rend une fenêtre en fenêtre de premier plan en utilisant plusieurs méthodes de l'API Win32 pour une fiabilité maximale.
* Tente d'abord d'utiliser l'API SwitchToThisWindow, puis revient à SetForegroundWindow si nécessaire.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | Handle de fenêtre à définir comme fenêtre de premier plan |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

Amène une fenêtre Bloc-notes au premier plan en utilisant le descripteur de fenêtre.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

Utilise un paramètre positionnel pour une syntaxe concise.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
