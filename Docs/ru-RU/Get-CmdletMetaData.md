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
| `-Name` | String | ✅ | — | 0 | — | Имя командлета для получения метаданных |
| `-Language` | String | — | — | 1 | — | ru-RU |
| `-TranslationInstructions` | String | — | — | 2 | — | Пользовательские инструкции для модели перевода ИИ. Переопределяет инструкции перевода, учитывающие метаданные командлетов, по умолчанию. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
