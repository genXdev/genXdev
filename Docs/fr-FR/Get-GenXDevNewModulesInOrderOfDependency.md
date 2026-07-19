# Get-GenXDevNewModulesInOrderOfDependency

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les modules GenXDev dans l'ordre des dépendances.

## Description

Cette fonction retourne une liste des modules GenXDev organisés dans l'ordre de dépendance correct pour assurer un chargement approprié des modules. Elle récupère d'abord toutes les informations des modules, puis les ordonne en fonction de leurs dépendances, en commençant par les modules de base et en terminant par les modules dépendants. Cela garantit que les modules sont chargés dans le bon ordre.

## Syntax

```powershell
Get-GenXDevNewModulesInOrderOfDependency [[-ModuleName] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('GenXdev*')` | Un ou plusieurs noms de modules pour filtrer |

## Examples

### Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"

```powershell
Get-GenXDevNewModulesInOrderOfDependency -ModuleName "GenXdev.Helpers"
```

### "GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency

```powershell
"GenXdev.Console" | Get-GenXDevNewModulesInOrderOfDependency
```

## Related Links

- [Get-GenXDevNewModulesInOrderOfDependency on GitHub](https://github.com/genXdev/genXdev)
