# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Padrão de pesquisa para filtrar cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | Nomes de módulos GenXdev para pesquisar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Pular pesquisa em caminhos de módulo local |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Limitar busca apenas a caminhos de módulos publicados |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Pesquisar em arquivos de script em vez de arquivos de módulo |
| `-Code` | SwitchParameter | — | — | Named | — | Abra o cmdlet encontrado no Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abra o cmdlet encontrado no Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Também abre o arquivo no editor após encontrar |

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
