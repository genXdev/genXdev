# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ayuda a refactorizar archivos de código fuente de PowerShell usando asistencia de IA.

## Description

Esta función automatiza el proceso de refactorización de código PowerShell mediante IA.
Gestiona plantillas de prompts, detecta el IDE activo (VS Code o Visual Studio)
y orquesta el flujo de trabajo de refactorización a través de automatización de teclado.
La función puede manejar tanto archivos de manifiesto de módulo (.psd1) como de script de módulo (.psm1).

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | El nombre del módulo |
| `-Prompt` | String | — | — | Named | — | La solicitud de IA |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Related Links

- [Assert-ModuleDefinition on GitHub](https://github.com/genXdev/genXdev)
