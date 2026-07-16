# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | O nome do módulo PowerShell do qual recuperar metadados de cmdlet |
| `-Language` | String | — | — | Named | — | pt-BR |
| `-TranslationInstructions` | String | — | — | Named | — | Você é um assistente prestativo, projetado para gerar JSON. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Ignore a tradução baseada em LLM |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
