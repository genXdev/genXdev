# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula y devuelve el número total de núcleos de CPU lógicos en el sistema.

## Description

Consulta el hardware del sistema a través de Instrumentación de Administración de Windows (WMI) para determinar el número total de núcleos lógicos de la CPU. La función contabiliza el hyperthreading multiplicando el recuento de núcleos físicos por 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Obtiene el número total de núcleos de CPU lógicos.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
