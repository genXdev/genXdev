# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> Pesquisa por um cmdlet do GenXdev e, opcionalmente, abre-o em um IDE para edição.

## Description

Esta função pesquisa cmdlets do GenXdev usando um padrão e opcionalmente abre
o arquivo de origem do cmdlet encontrado no Visual Studio Code ou Visual Studio para
edição. Ela recupera informações do cmdlet e fornece atalhos de teclado para
navegar rapidamente até a definição da função.

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

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
