# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
