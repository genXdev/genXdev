# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generates rich Markdown help files for any PowerShell module.

## Description

Generates a comprehensive Markdown help site for any PowerShell module:
one .md file per cmdlet with all metadata sections, plus a README.md
index with per-sub-module tables linking to each cmdlet file.

Sub-module discovery is portable: .psm1 dot-source directories for
script cmdlets, .NET namespaces for compiled cmdlets, with a layered
fallback chain for modules without sub-module structure.

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

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Generates Docs\ folder with one .md per Pester cmdlet + README.md index.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Generates Dutch-translated markdown help, overwriting existing files.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Generates help with absolute GitHub links in the README index.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
