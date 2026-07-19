# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt metadata op voor alle cmdlets in een PowerShell-module.

## Description

Haalt volledige cmdlet-metadata op (samenvatting, beschrijving, parameters, voorbeelden, uitvoer en aliassen) voor elke cmdlet in de opgegeven module, waarbij SubModuleName- en CmdletType-eigenschappen aan elk resultaat worden toegevoegd.

Sub-moduletoewijzing gebruikt twee onafhankelijke paden:

- Script-cmdlets (.ps1): bronbestand komt overeen met .psm1 dot-source directory-toewijzingen (Functions\<SubModuleName>\FileName.ps1).
- Gecompileerde cmdlets (.dll): naamruimte van ImplementationType.Namespace (bijv. GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | De naam van de PowerShell-module om cmdlet-metadata op te halen |
| `-Language` | String | — | — | Named | — | nl-NL |
| `-TranslationInstructions` | String | — | — | Named | — | Custom AI translation instructions |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Retourneert metadata voor alle cmdlets in de GenXdev-module.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retourneert Nederlands-vertaalde metadata voor alle GenXdev cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
