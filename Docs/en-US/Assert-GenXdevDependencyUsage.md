# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> Validates dependency usage across GenXdev modules to ensure proper module
hierarchy is maintained.

## Description

This function analyzes GenXdev modules to ensure they follow the correct
dependency hierarchy. It checks that modules only reference dependencies
that are listed in their RequiredModules manifest, and prevents circular
dependencies by validating that modules don't reference modules that come
later in the dependency chain.

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filter to apply to module names 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Search in script files instead of module files |

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
