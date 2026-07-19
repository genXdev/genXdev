# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera metadatos de un cmdlet de GenXdev específico, opcionalmente traduciendo el texto de ayuda a otro idioma.

## Description

Extrae y devuelve metadatos completos sobre un cmdlet de GenXdev, incluyendo su sinopsis, descripción, parámetros, ejemplos y otra información de ayuda. Cuando se especifica un idioma de destino mediante el parámetro -Language, el texto de ayuda se puede traducir utilizando servicios de traducción basados en IA. Se pueden proporcionar instrucciones de traducción personalizadas para ajustar el resultado de la traducción.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | El nombre del cmdlet para recuperar metadatos |
| `-Language` | String | — | — | 1 | — | es-ES |
| `-TranslationInstructions` | String | — | — | 2 | — | Custom instructions for the AI translation model. Overrides the default cmdlet-metadata-aware translation instructions. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Recupera los metadatos del cmdlet Find-Item en el idioma predeterminado.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Recupera metagegevens voor de Find-Item cmdlet met Nederlandse vertalingen.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
