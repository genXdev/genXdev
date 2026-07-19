# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> Executes a script block on each GenXdev module in the workspace.

## Description

This function iterates through GenXdev modules in the workspace and executes
a provided script block against each module. It can filter modules by name
pattern, exclude local modules, include only published modules, or process
scripts instead of modules. The function automatically navigates to the
correct module directory before executing the script block.

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | The script block to execute for each GenXdev module |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filter to apply to module names 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Excludes local development modules from processing |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Includes only published modules that have LICENSE and README.md files |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Process scripts directory instead of module directories |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Includes the scripts directory in addition to regular modules |

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

Lists all GenXdev module names.

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Uses alias to list contents of the GenXdev.AI module directory.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
