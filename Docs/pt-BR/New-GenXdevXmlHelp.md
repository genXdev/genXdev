# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
