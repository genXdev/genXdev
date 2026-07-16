# Assert-GenXdevDependencyUsage

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `checkgenxdevdependencies

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevDependencyUsage [[-ModuleName] <String[]>] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filter om toe te passen op modulenamen 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Doorzoek scriptbestanden in plaats van modulebestanden |

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
