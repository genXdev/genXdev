# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Kopieert parameterwaarden van gebonden parameters naar een nieuwe hashtabel op basis van de mogelijke parameters van een andere functie.

## Description

* Met deze cmdlet wordt een nieuwe hashtable gemaakt die alleen de parameterwaarden bevat die overeenkomen met de parameters die zijn gedefinieerd in de opgegeven doelfunctie.
* De resulterende hashtable kan vervolgens worden gebruikt om de functie aan te roepen met PowerShell splatting.
* Switch-parameters worden alleen opgenomen in het resultaat als ze expliciet zijn opgegeven en ingesteld op $true in de gebonden parameters.
* Niet-aanwezige switch-parameters worden uitgesloten van het resultaat om de juiste parametersemantiek te behouden.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Bronparameters om van te kopiëren |
| `-FunctionName` | String | ✅ | — | 1 | — | Doelfunctienaam om parameters te filteren |
| `-DefaultValues` | Object | — | — | 2 | — | Standaardwaarden voor parameters |

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

Demonstreert het kopiëren van gebonden parameters voor gebruik met splatting.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)
