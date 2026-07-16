# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
