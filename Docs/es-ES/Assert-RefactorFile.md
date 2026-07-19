# Assert-RefactorFile

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ejecuta una operación de refactorización en un archivo fuente utilizando el IDE y la plantilla de prompt de IA especificados.

## Description

Esta función automatiza el proceso de refactorización al preparar un prompt de IA basado en la definición de refactorización, detectar o seleccionar el IDE apropiado (VS Code o Visual Studio) y abrir el archivo objetivo con el prompt preparado. La función maneja el procesamiento de plantillas de prompt, la detección del IDE y la automatización del flujo de trabajo de refactorización.

## Syntax

```powershell
Assert-RefactorFile -Path <String> [[-RefactorSettings] <GenXdev.Helpers.RefactorSettings>] [-AllowLongRunningTests] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | La ruta al archivo fuente para mejorar |
| `-RefactorSettings` | GenXdev.Helpers.RefactorSettings | — | — | 1 | `[GenXdev.Helpers.RefactorSettings]::new()` | La definición de refactorización que contiene la configuración y la plantilla de prompt |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | The `-AllowLongRunningTests` parameter. |

## Examples

### $refactorDef = Get-RefactorDefinition -Type "Documentation" Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"

```powershell
$refactorDef = Get-RefactorDefinition -Type "Documentation"
Assert-RefactorFile -RefactorDefinition $refactorDef -Path "MyScript.ps1"
```

### Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"

```powershell
Assert-RefactorFile -RefactorDefinition $refactorDef -Path ".\Functions\Test.ps1"
```

## Related Links

- [Assert-RefactorFile on GitHub](https://github.com/genXdev/genXdev)
