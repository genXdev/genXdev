# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
