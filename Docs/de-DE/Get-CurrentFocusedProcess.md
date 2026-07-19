# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft das Prozessobjekt des Fensters ab, das gerade den Tastaturfokus hat.

## Description

* Dieses Cmdlet verwendet Windows-API-Aufrufe über P/Invoke, um das Process-Objekt zu identifizieren und zurückzugeben, das dem aktuell fokussierten Fenster zugeordnet ist.
* Es nutzt die User32.dll-Funktionen GetForegroundWindow und GetWindowThreadProcessId, um zu bestimmen, welches Fenster den Fokus hat, und dessen zugehörige Prozess-ID zu erhalten.

## Syntax

```powershell
Get-CurrentFocusedProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host "Active window process: $($focusedProcess.ProcessName)"
```

Ruft das Prozessobjekt für das Fenster ab, das aktuell den Tastaturfokus besitzt.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
