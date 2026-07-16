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
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Filtro a ser aplicado aos nomes dos módulos 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Pesquisar em arquivos de script em vez de arquivos de módulo |

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
