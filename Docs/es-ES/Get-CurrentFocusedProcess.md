# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera el objeto de proceso de la ventana que actualmente tiene el foco del teclado.

## Description

* Este cmdlet utiliza llamadas a la API de Windows a través de P/Invoke para identificar y
  devolver el objeto Process asociado a la ventana actualmente enfocada.
* Utiliza las funciones GetForegroundWindow y
  GetWindowThreadProcessId de User32.dll para determinar qué ventana tiene el foco y obtener
  su ID de proceso asociado.

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

Recupera el objeto del proceso de la ventana que actualmente tiene el foco del teclado.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
