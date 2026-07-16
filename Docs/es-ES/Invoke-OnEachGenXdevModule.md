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
| `-Script` | ScriptBlock | ✅ | — | 0 | — | El bloque de script a ejecutar para cada módulo de GenXdev |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filtro para aplicar a nombres de módulos 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Excluye los módulos de desarrollo local del procesamiento |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Incluye solo módulos publicados que tengan archivos LICENSE y README.md |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Procesar directorio de scripts en lugar de directorios de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Incluye el directorio scripts además de los módulos regulares |

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
