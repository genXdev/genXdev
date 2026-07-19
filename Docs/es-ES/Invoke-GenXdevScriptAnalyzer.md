# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Invoca el Analizador de scripts de PowerShell para analizar scripts de PowerShell en busca de cumplimiento y mejores prácticas.

## Description

Esta función proporciona un envoltorio alrededor de PSScriptAnalyzer para analizar scripts de PowerShell en busca de problemas de cumplimiento, violaciones de prácticas recomendadas y posibles errores. Admite tanto el análisis basado en archivos como el análisis de scripts basados en cadenas con reglas y configuraciones personalizables.

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Specifies the path to the script file. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Especifica la definición del script como una cadena. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Specifies that the tool should exit on error. |
| `-Fix` | SwitchParameter | — | — | Named | — | Permite la corrección automática de infracciones. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recursively process files. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Informa un resumen después del análisis. |

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
