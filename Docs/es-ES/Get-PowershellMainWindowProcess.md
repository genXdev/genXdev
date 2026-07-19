# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Devuelve el objeto de proceso para la ventana que aloja el terminal de PowerShell.

## Description

* Recorre el árbol de procesos comenzando desde el proceso actual de PowerShell para localizar la ventana principal responsable de alojar la terminal.
* Si el proceso principal inmediato no tiene un identificador de ventana principal, busca procesos similares que sí tengan ventanas principales.
* Útil para identificar el proceso de ventana de terminal real (como Windows Terminal, ConHost, etc.) que contiene la sesión de PowerShell.

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

Devuelve el proceso que aloja la sesión actual de PowerShell y muestra su nombre.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
