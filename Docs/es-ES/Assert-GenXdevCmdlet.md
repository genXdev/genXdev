# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> Mejora la documentación e implementación de cmdlets de GenXdev mediante asistencia de IA.

## Description

Esta función mejora los cmdlets de GenXdev analizando y perfeccionando su código mediante indicaciones de IA. Puede integrar cmdlets en módulos, actualizar la documentación y verificar la implementación adecuada. La función admite plantillas de indicaciones personalizadas y puede abrir archivos en Visual Studio Code o Visual Studio.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Patrón de búsqueda para filtrar cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | Nombres de módulos GenXdev a buscar 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | La clave de prompt de IA a utilizar para la selección de plantillas |
| `-Prompt` | String | — | — | 2 | `''` | Texto de prompt de IA personalizado para usar |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Omitir versiones de módulos locales |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only include published versions |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Buscar en archivos de script |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | @{json_schema=; type=json_schema} *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | Integrar cmdlet en el módulo |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
