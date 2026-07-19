# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene el número total de monitores de visualización conectados al sistema.

## Description

* Usa la clase auxiliar Screen de Windows Presentation Foundation (WPF) para determinar con precisión el número de monitores físicos conectados actualmente al sistema.
* Esto incluye tanto monitores activos como detectados pero deshabilitados.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Devuelve el número total de monitores conectados (ej. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Devuelve el recuento de monitores con salida detallada que muestra el proceso de detección.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
