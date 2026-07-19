# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Gera arquivos de ajuda MAML para qualquer módulo do PowerShell.

## Description

Gera arquivos de ajuda XML MAML para qualquer módulo PowerShell extraindo metadados de todos os cmdlets em um módulo usando Get-CmdletMetaData e produzindo tanto ModuleName.dll-Help.xml (para cmdlets C#) quanto ModuleName-help.xml

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | O nome do módulo do PowerShell para o qual gerar ajuda |
| `-Language` | String | — | — | Named | `'en-US'` | pt-BR |
| `-Force` | SwitchParameter | — | — | Named | — | Sobrescrever arquivos XML de ajuda existentes sem avisar |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | Instruções personalizadas para a tradução do LLM (passadas para Get-TextTranslation) |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Gera XML de ajuda em inglês para o módulo Pester em en-US.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Gera XML de ajuda em holandês para GenXdev, sobrescrevendo arquivos existentes.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Mostra quais arquivos seriam criados sem realmente escrevê-los.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
