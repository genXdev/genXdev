# Get-GenXDevNewModulesInOrderOfDependency

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft GenXDev-Module in Abhängigkeitsreihenfolge ab.

## Description

Diese Funktion gibt eine Liste von GenXDev-Modulen zurück, die in der korrekten Abhängigkeitsreihenfolge angeordnet sind, um ein ordnungsgemäßes Modulladen zu gewährleisten. Sie ruft zunächst alle Modulinformationen ab und ordnet sie dann basierend auf ihren Abhängigkeiten, beginnend mit Kernmodulen und endend mit abhängigen Modulen. Dadurch wird sichergestellt, dass Module in der richtigen Reihenfolge geladen werden.

## Syntax

```powershell
Get-GenXDevNewModulesInOrderOfDependency [[-ModuleName] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('GenXdev*')` | Ein oder mehrere Modulnamen zum Filtern |

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
