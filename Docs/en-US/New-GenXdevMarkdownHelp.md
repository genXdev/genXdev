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
| `-ModuleName` | String | ✅ | — | 0 | — | The name of the PowerShell module to generate help for |
| `-OutputPath` | String | — | — | Named | — | Custom output directory for .md files. Defaults to <moduleRoot>\Docs\<language>. |
| `-Language` | String | — | — | Named | `'en-US'` | BCP 47 language tag for the generated help (e.g., en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | Overwrite existing .md files without prompting |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | URL prefix for README index links (e.g., https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Custom AI translation instructions |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
