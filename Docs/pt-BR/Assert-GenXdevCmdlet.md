# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> Melhora a documentação e implementação do cmdlet GenXdev por meio de assistência de IA.

## Description

Esta função aprimora os cmdlets do GenXdev analisando e melhorando seu código por meio de prompts de IA. Ela pode integrar cmdlets em módulos, atualizar documentação e verificar a implementação adequada. A função suporta modelos de prompt personalizados e pode abrir arquivos no Visual Studio Code ou Visual Studio.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Padrão de pesquisa para filtrar cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Nomes de módulos GenXdev para pesquisar 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | A chave de prompt de IA a ser usada para a seleção de modelo |
| `-Prompt` | String | — | — | 2 | `''` | Texto de prompt de IA personalizado para usar |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Pular versões de módulos locais |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Incluir apenas versões publicadas |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Pesquisar em arquivos de script |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Você é um assistente prestativo projetado para gerar JSON. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Integrar cmdlet no módulo |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
