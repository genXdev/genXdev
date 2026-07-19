# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves metadata for all cmdlets in a PowerShell module.

## Description

Retrieves full cmdlet metadata (synopsis, description, parameters,
examples, outputs, and aliases) for every cmdlet in the specified
module, adding SubModuleName and CmdletType properties to each result.

Sub-module assignment uses two independent paths:

- Script cmdlets (.ps1): source file matched against .psm1 dot-source
  directory mappings (Functions\<SubModuleName>\FileName.ps1).
- Compiled cmdlets (.dll): namespace from ImplementationType.Namespace
  (e.g., GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | The name of the PowerShell module to retrieve cmdlet metadata for |
| `-Language` | String | — | — | Named | — | BCP 47 language tag for translation (e.g., nl-NL, de-DE) |
| `-TranslationInstructions` | String | — | — | Named | — | Custom AI translation instructions |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Returns metadata for all cmdlets in the GenXdev module.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Returns Dutch-translated metadata for all GenXdev cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
