# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera metadados para um cmdlet GenXdev especificado, opcionalmente traduzindo o texto de ajuda para outro idioma.

## Description

Extrai e retorna metadados abrangentes sobre um cmdlet do GenXdev, incluindo seu resumo, descrição, parâmetros, exemplos e outras informações de ajuda. Quando um idioma de destino é especificado por meio do parâmetro -Language, o texto de ajuda pode ser traduzido usando serviços de tradução baseados em IA. Instruções de tradução personalizadas podem ser fornecidas para ajustar o resultado da tradução.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | O nome do cmdlet para recuperar metadados |
| `-Language` | String | — | — | 1 | — | Etiqueta de idioma BCP 47 para traduzir o texto de ajuda (por exemplo, nl-NL, de-DE). Omita para pular a tradução. |
| `-TranslationInstructions` | String | — | — | 2 | — | Instruções personalizadas para o modelo de tradução de IA. Substitui as instruções padrão de tradução com reconhecimento de metadados de cmdlet. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Recupera metadados do cmdlet Find-Item no idioma padrão.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Recupera metadados para o cmdlet Find-Item com traduções em holandês.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
