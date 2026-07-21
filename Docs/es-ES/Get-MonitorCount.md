# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtiene el número total de monitores conectados al sistema.

## Description

* Utiliza la clase auxiliar Screen de Windows Presentation Foundation (WPF) para
  determinar con precisión el número de monitores de visualización físicos
  conectados actualmente al sistema.
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

Devuelve el número total de monitores conectados (p. ej., 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Devuelve el recuento de monitores con salida detallada que muestra el proceso de detección.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-CpuAvx.md)
