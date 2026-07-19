# Copy-IdenticalParamValues

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Copie les valeurs des paramètres à partir des paramètres liés dans une nouvelle table de hachage basée sur les paramètres possibles d'une autre fonction.

## Description

* Cette cmdlet crée une nouvelle table de hachage contenant uniquement les valeurs de paramètres
  qui correspondent aux paramètres définis dans la fonction cible spécifiée.
* La table de hachage résultante peut ensuite être utilisée pour appeler la fonction en utilisant
  le splatting PowerShell.
* Les paramètres booléens ne sont inclus dans le résultat que s'ils ont été explicitement
  fournis et définis sur $true dans les paramètres liés.
* Les paramètres booléens absents sont exclus du résultat pour maintenir
  une sémantique de paramètres correcte.

## Syntax

```powershell
Copy-IdenticalParamValues [-BoundParameters] <Object[]> [-FunctionName] <string> [[-DefaultValues] <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BoundParameters` | Object[] | ✅ | — | 0 | — | Paramètres source liés à copier |
| `-FunctionName` | String | ✅ | — | 1 | — | Nom de la fonction cible pour filtrer les paramètres |
| `-DefaultValues` | Object | — | — | 2 | — | Valeurs par défaut pour les paramètres |

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

Montre la copie des paramètres liés pour une utilisation avec l'éclatement.

## Related Links

- [Copy-IdenticalParamValues on GitHub](https://github.com/genXdev/genXdev)
