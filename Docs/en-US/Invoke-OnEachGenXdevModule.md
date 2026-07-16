# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
