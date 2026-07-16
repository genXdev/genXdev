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
| `-ModuleName` | String | ✅ | — | 0 | — | El nombre del módulo de PowerShell para recuperar metadatos de cmdlets |
| `-Language` | String | — | — | Named | — | es-ES |
| `-TranslationInstructions` | String | — | — | Named | — | Instrucciones de traducción AI personalizadas |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
