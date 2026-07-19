# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do

## Synopsis

> Executa um bloco de script em cada módulo GenXdev no workspace.

## Description

Esta função itera pelos módulos GenXdev no espaço de trabalho e executa um bloco de script fornecido em cada módulo. Ela pode filtrar módulos por padrão de nome, excluir módulos locais, incluir apenas módulos publicados ou processar scripts em vez de módulos. A função navega automaticamente para o diretório correto do módulo antes de executar o bloco de script.

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

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

GenXdev.Cabochon.Core, GenXdev.Cabochon.Avalonia, GenXdev.Cabochon.Android, GenXdev.Cabochon.iOS, GenXdev.Cabochon.MacCatalyst, GenXdev.Cabochon.WinUI, GenXdev.Cabochon.Linux, GenXdev.Cabochon.Skia, GenXdev.Cabochon.Web, GenXdev.Console, GenXdev.Extensions, GenXdev.Hosting, GenXdev.IO, GenXdev.Native, GenXdev.Networking, GenXdev.NodaTime, GenXdev.Queries, GenXdev.Serialization, GenXdev.System, GenXdev.Web

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Usa alias para listar o conteúdo do diretório do módulo GenXdev.AI.

## Related Links

- [Invoke-OnEachGenXdevModule on GitHub](https://github.com/genXdev/genXdev)
