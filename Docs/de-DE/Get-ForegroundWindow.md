# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft das Handle des aktuell aktiven Vordergrundfensters ab.

## Description

* Dieses Cmdlet ruft das Fensterhandle (HWND) des Fensters ab, das sich
  aktuell im Vordergrund befindet und den Tastaturfokus besitzt.
* Es verwendet Windows-API-Funktionen über P/Invoke, um mit der
  User32.dll-Bibliothek zu interagieren.

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

Ruft das IntPtr-Handle des aktuell aktiven Fensters ab und gibt es zurück.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

Speichert das Handle des Vordergrundfensters in einer Variablen und zeigt es an.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
