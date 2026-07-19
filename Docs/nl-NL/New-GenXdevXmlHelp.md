# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Genereert MAML XML-helpbestanden voor elke PowerShell-module.

## Description

Genereert MAML XML-helpbestanden voor elke PowerShell-module door metadata uit alle cmdlets in een module te extraheren met behulp van Get-CmdletMetaData en produceert zowel ModuleName.dll-Help.xml (voor C#-cmdlets) als ModuleName-help.xml (voor

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | De naam van de PowerShell-module waarvoor help moet worden gegenereerd |
| `-Language` | String | — | — | Named | `'en-US'` | nl-NL |
| `-Force` | SwitchParameter | — | — | Named | — | Bestaande help XML-bestanden overschrijven zonder te vragen |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | U bent een behulpzame assistent die is ontworpen om JSON uit te voeren. |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Generates English help XML for the Pester module in en-US.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genereert Nederlandse hulp XML voor GenXdev, bestaande bestanden worden overschreven.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Toont aan welke bestanden zouden worden aangemaakt zonder ze daadwerkelijk weg te schrijven.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
