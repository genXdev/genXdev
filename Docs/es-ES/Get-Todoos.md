# Get-Todoos

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todoos

## Synopsis

> Muestra elementos de tareas pendientes de un archivo README.md.

## Description

Muestra todos los elementos de la lista de tareas pendientes de la sección "## Todoos" de un archivo README.md. Puede usar el README en la ubicación actual, el directorio de perfil de PowerShell o el directorio de OneDrive.

## Syntax

```powershell
Get-Todoos [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### Todoos -UseHomeREADME

```powershell
Todoos -UseHomeREADME
```

### Todoos -UseOneDriveREADME

```powershell
Todoos -UseOneDriveREADME
```

## Related Links

- [Get-Todoos on GitHub](https://github.com/genXdev/genXdev)
