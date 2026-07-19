# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera los metadatos de todos los cmdlets en un módulo de PowerShell.

## Description

Recupera los metadatos completos de cmdlet (sinopsis, descripción, parámetros, ejemplos, salidas y alias) para cada cmdlet en el módulo especificado, agregando las propiedades SubModuleName y CmdletType a cada resultado.

La asignación de submódulos utiliza dos rutas independientes:

- Cmdlets de script (.ps1): archivo fuente emparejado con las asignaciones de directorio de dot-source .psm1 (Functions\<SubModuleName>\FileName.ps1).
- Cmdlets compilados (.dll): espacio de nombres de ImplementationType.Namespace (p. ej., GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | El nombre del módulo de PowerShell para recuperar metadatos de cmdlets |
| `-Language` | String | — | — | Named | — | es-ES |
| `-TranslationInstructions` | String | — | — | Named | — | Instrucciones de traducción AI personalizadas |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Devuelve los metadatos de todos los cmdlets del módulo GenXdev.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retourneert in het Nederlands vertaalde metadata voor alle GenXdev cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
