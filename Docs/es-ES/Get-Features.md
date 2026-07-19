# Get-Features

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `features

## Synopsis

> Muestra las características de un archivo README.md.

## Description

Muestra todas las características de la sección "## Características" de un archivo README.md. Puede usar el README en la ubicación actual, el directorio de perfil de PowerShell o el directorio de OneDrive.

## Syntax

```powershell
Get-Features [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | 0 | `0` | Limitar la salida a las primeras N líneas |

## Examples

### Features -UseHomeREADME

```powershell
Features -UseHomeREADME
```

## Related Links

- [Get-Features on GitHub](https://github.com/genXdev/genXdev)
