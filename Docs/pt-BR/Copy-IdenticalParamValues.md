# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Copia valores de parâmetros de parâmetros associados para uma nova tabela hash baseada nos parâmetros possíveis de outra função.

## Description

* Este cmdlet cria uma nova hashtable contendo apenas os valores de parâmetro que correspondem aos parâmetros definidos na função de destino especificada.
* A hashtable resultante pode então ser usada para invocar a função usando o splatting do PowerShell.
* Os parâmetros de switch só são incluídos no resultado se foram fornecidos explicitamente e definidos como $true nos parâmetros vinculados.
* Parâmetros de switch não presentes são excluídos do resultado para manter a semântica adequada dos parâmetros.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Parâmetros de origem para copiar de |
| `-FunctionName` | String | ✅ | — | 1 | — | Nome da função alvo para filtrar parâmetros |
| `-DefaultValues` | Object | — | — | 2 | — | Valores padrão para parâmetros |

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

Demonstra a cópia de parâmetros associados para uso com splatting.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)
