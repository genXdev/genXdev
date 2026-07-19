# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Получает дескриптор активного окна переднего плана.

## Description

* Этот командлет получает дескриптор окна (HWND) окна, которое находится на переднем плане и имеет фокус ввода.
* Он использует функции Windows API через P/Invoke для взаимодействия с библиотекой User32.dll.

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

Извлекает и возвращает дескриптор IntPtr активного в данный момент окна.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

Сохраняет дескриптор окна переднего плана в переменной и отображает его.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
