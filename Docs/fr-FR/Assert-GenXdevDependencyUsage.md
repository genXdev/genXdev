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
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filtre à appliquer aux noms de modules 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Chercher dans les fichiers de script au lieu des fichiers de module |

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
