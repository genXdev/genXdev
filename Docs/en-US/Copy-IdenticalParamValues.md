# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Copies parameter values from bound parameters to a new hashtable based on
another function's possible parameters.

## Description

* This cmdlet creates a new hashtable containing only the parameter values
  that match the parameters defined in the specified target function.
* The resulting hashtable can then be used to invoke the function using
  PowerShell splatting.
* Switch parameters are only included in the result if they were explicitly
  provided and set to $true in the bound parameters.
* Non-present switch parameters are excluded from the result to maintain
  proper parameter semantics.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Source bound parameters to copy from |
| `-FunctionName` | String | ✅ | — | 1 | — | Target function name to filter parameters |
| `-DefaultValues` | Object | — | — | 2 | — | Default values for parameters |

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

Demonstrates copying bound parameters for use with splatting.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)
