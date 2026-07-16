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
| `-ModuleName` | String | ✅ | — | 0 | — | Имя модуля PowerShell, для которого нужно получить метаданные командлетов |
| `-Language` | String | — | — | Named | — | ru-RU |
| `-TranslationInstructions` | String | — | — | Named | — | Пользовательские инструкции по ИИ-переводу |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
