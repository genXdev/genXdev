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
| `-Name` | String | ✅ | — | 0 | — | De naam van de cmdlet om metadata op te halen |
| `-Language` | String | — | — | 1 | — | nl-NL |
| `-TranslationInstructions` | String | — | — | 2 | — | Aangepaste instructies voor het AI-vertaalmodel. Overschrijft de standaard cmdlet-metadata-bewuste vertaalinstructies. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
