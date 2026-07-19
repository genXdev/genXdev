# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula y devuelve el número total de núcleos de CPU lógicos en el sistema.

## Description

Consulta el hardware del sistema a través de Instrumentación de Administración de Windows (WMI) para determinar el número total de núcleos lógicos de la CPU. El cmdlet tiene en cuenta el hyperthreading multiplicando el recuento de núcleos físicos por 2. Esta información es útil para optimizar tareas de procesamiento en paralelo y comprender las capacidades del sistema.

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

Recupera el número total de núcleos de CPU lógicos disponibles en el sistema.

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
