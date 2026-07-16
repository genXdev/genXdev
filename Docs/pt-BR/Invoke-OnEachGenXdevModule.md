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
| `-Script` | ScriptBlock | ✅ | — | 0 | — | O bloco de script a ser executado para cada módulo GenXdev |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filtro a ser aplicado aos nomes dos módulos 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Exclui módulos de desenvolvimento local do processamento |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Inclui apenas módulos publicados que possuem arquivos LICENSE e README.md |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Processar diretório de scripts em vez de diretórios de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Inclui o diretório scripts além dos módulos regulares |

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
