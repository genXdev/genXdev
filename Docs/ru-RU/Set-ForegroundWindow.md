# Set-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Переводит указанное окно на передний план и делает его активным окном.

## Description

* Делает окно окном переднего плана, используя несколько методов Win32 API для
  максимальной надежности.
* Сначала пытается использовать API SwitchToThisWindow, затем переходит к
  SetForegroundWindow при необходимости.

## Syntax

```powershell
Set-ForegroundWindow [-WindowHandle] <IntPtr> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WindowHandle` | IntPtr | ✅ | — | 0 | `0` | Дескриптор окна, которое нужно установить в качестве активного окна |

## Examples

### Example 1

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow -WindowHandle $hwnd
```

Выводит окно Блокнота на передний план, используя дескриптор окна.

### Example 2

```powershell
$hwnd = (Get-Process notepad).MainWindowHandle
Set-ForegroundWindow $hwnd
```

Использует позиционный параметр для краткого синтаксиса.

## Related Links

- [Set-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
