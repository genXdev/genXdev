# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Kopiert Parameterwerte von gebundenen Parametern in eine neue Hashtabelle basierend auf den möglichen Parametern einer anderen Funktion.

## Description

* Dieses Cmdlet erstellt eine neue Hashtabelle, die nur die Parameterwerte enthält, die mit den in der angegebenen Zielfunktion definierten Parametern übereinstimmen.
* Die resultierende Hashtabelle kann dann verwendet werden, um die Funktion mit PowerShell-Splatting aufzurufen.
* Schalterparameter werden nur dann in das Ergebnis aufgenommen, wenn sie explizit angegeben und in den gebundenen Parametern auf $true gesetzt wurden.
* Nicht vorhandene Schalterparameter werden aus dem Ergebnis ausgeschlossen, um die korrekte Parametersemantik beizubehalten.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Quellgebundene Parameter zum Kopieren von |
| `-FunctionName` | String | ✅ | — | 1 | — | Ziel-Funktionsname zum Filtern von Parametern |
| `-DefaultValues` | Object | — | — | 2 | — | Standardwerte für Parameter |

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

Zeigt das Kopieren gebundener Parameter zur Verwendung mit Splatting.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)
