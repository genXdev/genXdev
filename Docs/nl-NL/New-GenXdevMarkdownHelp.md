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
| `-ModuleName` | String | ✅ | — | 0 | — | De naam van de PowerShell-module waarvoor help moet worden gegenereerd |
| `-OutputPath` | String | — | — | Named | — | Aangepaste uitvoermap voor .md-bestanden. Standaard ingesteld op <moduleRoot>\Docs\<taal>. |
| `-Language` | String | — | — | Named | `'en-US'` | nl-NL |
| `-Force` | SwitchParameter | — | — | Named | — | Bestaande .md-bestanden overschrijven zonder te vragen |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | URL-voorvoegsel voor README-indexkoppelingen (bijv. https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Custom AI translation instructions |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
