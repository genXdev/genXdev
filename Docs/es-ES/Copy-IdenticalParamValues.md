# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Copia los valores de los parámetros de parámetros enlazados a una nueva tabla hash basada en los parámetros posibles de otra función.

## Description

* Este cmdlet crea una nueva tabla hash que contiene solo los valores de los parámetros que coinciden con los parámetros definidos en la función de destino especificada.
* La tabla hash resultante se puede usar para invocar la función mediante el splatting de PowerShell.
* Los parámetros de tipo switch solo se incluyen en el resultado si se proporcionaron explícitamente y se establecieron en $true en los parámetros enlazados.
* Los parámetros switch no presentes se excluyen del resultado para mantener una semántica de parámetros adecuada.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Parámetros de origen desde los cuales copiar |
| `-FunctionName` | String | ✅ | — | 1 | — | Nombre de la función objetivo para filtrar parámetros |
| `-DefaultValues` | Object | — | — | 2 | — | Valores predeterminados para parámetros |

## Examples

### Example 1

```powershell
function Test-Function {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string] $Path,
        [Parameter(Mandatory = $false)]
        [switch] $Recurse
    )

    $params = GenXdev\Copy-IdenticalParamValues `
        -BoundParameters $PSBoundParameters `
        -FunctionName 'Get-ChildItem'

    Get-ChildItem @params
}
```

Demuestra la copia de parámetros enlazados para su uso con splatting.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)
