# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> Afirma y mejora las pruebas unitarias de un cmdlet especificado de GenXdev.

## Description

Esta función ayuda a mantener y mejorar las pruebas unitarias para los cmdlets de GenXdev al:
1. Crear archivos de prueba si no existen
2. Abrir el cmdlet en VS Code
3. Preparar y aplicar indicaciones de IA para la generación/mejora de pruebas
4. Gestionar el flujo de trabajo de ejecución de pruebas

## Syntax

```powershell
Assert-GenXdevCmdletTests -CmdletName <String> [[-Prompt] <String>] [[-PromptKey] <String>] [-AssertFailedTest] [-ContinuationHandled] [-EditPrompt] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the cmdlet to improve unit-tests for |
| `-Prompt` | String | — | — | 1 | `''` | Texto de prompt de IA personalizado para usar |
| `-PromptKey` | String | — | — | 2 | — | La clave de prompt de IA a utilizar para la selección de plantillas |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Switch to only edit the AI prompt |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | Indica para afirmar una prueba fallida |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Buscar en archivos de script en lugar de módulos |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Examples

### Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt

```powershell
Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt
```

### improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest ##############################################################################

```powershell
improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest
##############################################################################
```

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
