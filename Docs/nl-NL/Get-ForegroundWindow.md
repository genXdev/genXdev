# Get-ForegroundWindow

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt de handle op van het momenteel actieve voorgrondvenster.

## Description

* Deze cmdlet haalt de vensterhandle (HWND) op van het venster dat
  momenteel op de voorgrond staat en toetsenbordfocus heeft.
* Het gebruikt Windows API-functies via P/Invoke om te communiceren met de
  User32.dll-bibliotheek.

## Syntax

```powershell
Get-ForegroundWindow [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ForegroundWindow
```

Haalt de IntPtr-handle van het momenteel actieve venster op en retourneert deze.

### Example 2

```powershell
$windowHandle = Get-ForegroundWindow
Write-Host "Active window handle: $windowHandle"
```

Slaat de handgreep van het voorgrondvenster op in een variabele en geeft deze weer.

## Related Links

- [Get-ForegroundWindow on GitHub](https://github.com/genXdev/genXdev)
