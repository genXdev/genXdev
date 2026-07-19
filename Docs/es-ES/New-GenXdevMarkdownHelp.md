# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Genera archivos de ayuda Markdown enriquecidos para cualquier módulo de PowerShell.

## Description

Genera un sitio de ayuda completo en Markdown para cualquier módulo de PowerShell:
un archivo .md por cada cmdlet con todas las secciones de metadatos, más un README.md
índice con tablas por submódulo que enlazan a cada archivo de cmdlet.

El descubrimiento de submódulos es portable: directorios de dot-source .psm1 para
cmdlets de script, espacios de nombres .NET para cmdlets compilados, con una cadena
 de respaldo por capas para módulos sin estructura de submódulos.

## Syntax

```powershell
New-GenXdevMarkdownHelp -ModuleName <String> [-Force] [-Language <String>] [-LinkPrefix <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | El nombre del módulo de PowerShell para el cual generar ayuda |
| `-OutputPath` | String | — | — | Named | — | Directorio de salida personalizado para archivos .md. Por defecto: <moduleRoot>\Docs\<language>. |
| `-Language` | String | — | — | Named | `'en-US'` | es-ES |
| `-Force` | SwitchParameter | — | — | Named | — | Sobrescribir los archivos .md existentes sin preguntar |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | Prefijo de URL para enlaces de índice de README (ej., https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Instrucciones de traducción AI personalizadas |

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Genera la carpeta Docs\ con un .md por cmdlet de Pester + README.md índice.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genera markdown de ayuda traducido al español de España, sobrescribiendo archivos existentes.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Genera ayuda con enlaces absolutos de GitHub en el índice del README.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
