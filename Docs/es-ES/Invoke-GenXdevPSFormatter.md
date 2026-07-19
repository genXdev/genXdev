# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Da formato a los archivos de script de PowerShell usando las reglas de formato de PSScriptAnalyzer.

## Description

Esta función aplica reglas de formato de PowerShell a archivos de script utilizando el cmdlet Invoke-Formatter de PSScriptAnalyzer. Puede procesar archivos individuales o formatear recursivamente múltiples archivos en directorios. La función utiliza configuraciones de formato personalizables y proporciona un registro detallado del proceso de formato.

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Especifica la ruta al archivo de script que se va a formatear. |
| `-Settings` | Object | — | — | Named | — | Una tabla hash de configuración o una ruta a un archivo de datos de PowerShell (.psd1) que contiene los ajustes de formato. |
| `-Range` | Int32[] | — | — | Named | — | The range within which formatting should take place as an array of four integers: starting line number, starting column number, ending line number, ending column number. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Procesa recursivamente archivos en subdirectorios. |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
