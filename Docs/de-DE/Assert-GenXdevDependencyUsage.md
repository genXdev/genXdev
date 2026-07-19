# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> Validiert die Abhängigkeitsnutzung zwischen GenXdev-Modulen, um sicherzustellen, dass die korrekte Modulhierarchie eingehalten wird.

## Description

Diese Funktion analysiert GenXdev-Module, um sicherzustellen, dass sie die korrekte Abhängigkeitshierarchie einhalten. Sie überprüft, ob Module nur auf Abhängigkeiten verweisen, die in ihrem RequiredModules-Manifest aufgeführt sind, und verhindert zirkuläre Abhängigkeiten, indem sie validiert, dass Module nicht auf Module verweisen, die später in der Abhängigkeitskette kommen.

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filter, der auf Modulnamen angewendet werden soll 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | In Skriptdateien statt in Moduldateien suchen |

## Examples

### Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"

```powershell
Assert-GenXdevDependencyUsage -ModuleName "GenXdev.Coding"
```

### checkgenxdevdependencies "GenXdev*" -FromScripts

```powershell
checkgenxdevdependencies "GenXdev*" -FromScripts
```

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
