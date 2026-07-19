# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Genereert rijke Markdown-helpbestanden voor elke PowerShell-module.

## Description

Genereert een uitgebreide Markdown-hulpsite voor elke PowerShell-module:
een .md-bestand per cmdlet met alle metadatagedeelten, plus een README.md-index met per submoduletabellen die naar elk cmdletbestand linken.

Submodule-detectie is draagbaar: .psm1-bronnen van dot-source-directories voor script-cmdlets, .NET-naamruimten voor gecompileerde cmdlets, met een gelaagde fallback-keten voor modules zonder submodulestructuur.

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

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Genereert de map Docs\ met één .md per Pester-cmdlet plus een README.md-index.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genereert Nederlands vertaalde markdown-help, bestaande bestanden worden overschreven.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Genereert hulp met absolute GitHub-links in de README-index.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
