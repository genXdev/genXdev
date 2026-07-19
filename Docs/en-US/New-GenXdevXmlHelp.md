# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generates MAML XML help files for any PowerShell module.

## Description

Generates MAML XML help files for any PowerShell module by extracting
metadata from all cmdlets in a module using Get-CmdletMetaData and producing
both ModuleName.dll-Help.xml (for C# cmdlets) and ModuleName-help.xml (for

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | The name of the PowerShell module to generate help for |
| `-Language` | String | — | — | Named | `'en-US'` | BCP 47 language tag for the generated help (e.g., en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | Overwrite existing help XML files without prompting |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | Custom instructions for the LLM translation (passed to Get-TextTranslation) |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Generates English help XML for the Pester module in en-US\.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Generates Dutch help XML for GenXdev, overwriting existing files.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Shows what files would be created without actually writing them.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
