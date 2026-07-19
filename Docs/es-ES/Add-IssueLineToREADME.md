# Add-IssueLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issue

## Synopsis

> Añade un elemento de incidencia al archivo README.md.

## Description

Adds a timestamped issue to the "## Issues" section of a README.md file.
Can display the modified section and open in Visual Studio Code.

## Syntax

```powershell
Add-IssueLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | El texto del problema para agregar |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir README en Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Mostra la secció modificada |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridad para ordenar (más alto = se muestra primero, predeterminado 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | Named | `0` | Límite - Mostrar salida solo a las primeras N líneas |

## Examples

### Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME

```powershell
Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME
```

### issue "Server connection fails" -Show

```powershell
issue "Server connection fails" -Show
```

## Related Links

- [Add-IssueLineToREADME on GitHub](https://github.com/genXdev/genXdev)
