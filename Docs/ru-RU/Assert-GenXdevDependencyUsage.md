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
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | `@('GenXdev*')` | Фильтр для применения к именам модулей 🌐 *Supports wildcards* |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах скриптов вместо файлов модулей |

## Related Links

- [Assert-GenXdevDependencyUsage on GitHub](https://github.com/genXdev/genXdev)
