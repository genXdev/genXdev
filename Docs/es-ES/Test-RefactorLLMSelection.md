# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Evalúa los archivos fuente para determinar su idoneidad para refactorización mediante análisis LLM.

## Description

Utiliza el análisis del Modelo de Aprendizaje de Lenguajes (LLM) para determinar si un archivo de código fuente debe ser seleccionado para refactorización según criterios especificados. La función procesa el contenido del archivo a través de una consulta LLM y devuelve una respuesta booleana.

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | La definición de refactorización que contiene configuraciones de LLM |
| `-Path` | String | ✅ | — | 1 | — | La ruta al archivo fuente a evaluar |

## Examples

### Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"

```powershell
Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"
```

### $def | Test-RefactorLLMSelection -Path source.ps1

```powershell
$def | Test-RefactorLLMSelection -Path source.ps1
```

## Related Links

- [Test-RefactorLLMSelection on GitHub](https://github.com/genXdev/genXdev)
