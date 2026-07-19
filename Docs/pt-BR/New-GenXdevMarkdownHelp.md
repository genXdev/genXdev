# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Gera arquivos de ajuda Markdown ricos para qualquer módulo PowerShell.

## Description

Gera um site de ajuda abrangente em Markdown para qualquer módulo do PowerShell:
um arquivo .md por cmdlet com todas as seções de metadados, além de um README.md
índice com tabelas por sub-módulo vinculando a cada arquivo de cmdlet.

A descoberta de sub-módulos é portátil: diretórios de ponto-fonte .psm1 para
cmdlets de script, namespaces .NET para cmdlets compilados, com uma cadeia
de fallback em camadas para módulos sem estrutura de sub-módulo.

## Syntax

```powershell
New-GenXdevMarkdownHelp -ModuleName <String> [-Force] [-Language <String>] [-LinkPrefix <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | O nome do módulo do PowerShell para o qual gerar ajuda |
| `-OutputPath` | String | — | — | Named | — | Diretório personalizado para saída de arquivos .md. Padrão é <moduleRoot>\Docs\<idioma>. |
| `-Language` | String | — | — | Named | `'en-US'` | pt-BR |
| `-Force` | SwitchParameter | — | — | Named | — | Sobrescrever arquivos .md existentes sem solicitar confirmação |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | Prefixo de URL para links de índice do README (ex.: https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Você é um assistente prestativo, projetado para gerar JSON. |

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Gera a pasta Docs\ com um .md por cmdlet do Pester + índice README.md.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Gera a ajuda traduzida para o holandês em markdown, sobrescrevendo os arquivos existentes.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Gera ajuda com links absolutos do GitHub no índice do README.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
