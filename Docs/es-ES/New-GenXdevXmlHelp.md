# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Genera archivos de ayuda MAML XML para cualquier módulo de PowerShell.

## Description

Genera archivos de ayuda MAML XML para cualquier módulo de PowerShell extrayendo metadatos de todos los cmdlets de un módulo mediante Get-CmdletMetaData y produciendo tanto ModuleName.dll-Help.xml (para cmdlets de C#) como ModuleName-help.xml (para

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | El nombre del módulo de PowerShell para el cual generar ayuda |
| `-Language` | String | — | — | Named | `'en-US'` | es-ES |
| `-Force` | SwitchParameter | — | — | Named | — | Sobrescribir archivos XML de ayuda existentes sin preguntar |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | Instrucciones personalizadas para la traducción del LLM (pasadas a Get-TextTranslation) |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Genera un archivo XML de ayuda en inglés para el módulo Pester en en-US.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genera el XML de ayuda en neerlandés para GenXdev, sobrescribiendo los archivos existentes.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Muestra qué archivos se crearían sin escribirlos realmente.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
