# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Determina si hay una GPU compatible con CUDA y con suficiente memoria disponible.

## Description

Comprueba si el sistema tiene GPUs compatibles con CUDA con al menos 4 GB de RAM de video. Utiliza Instrumentación de Administración de Windows (WMI) para consultar los controladores de video instalados y verificar su capacidad de memoria. Esta comprobación es esencial para cargas de trabajo de IA que requieren una cantidad significativa de memoria de GPU.

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

Comprueba si el sistema tiene una GPU compatible con CUDA con suficiente memoria.

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
