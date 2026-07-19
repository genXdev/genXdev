# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> Añade un elemento de tarea pendiente al archivo README.md.

## Description

Añade un elemento de tarea pendiente con marca de tiempo a la sección "## Todoos" de un archivo README.md.
Los elementos de tarea pendiente se pueden marcar como completados y la sección modificada se puede mostrar.
Cada nuevo elemento de tarea pendiente se marca automáticamente con la hora a menos que se marque como completado.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | El texto del elemento de la lista de tareas a añadir |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir README en Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Mostra la secció modificada |
| `-Done` | SwitchParameter | — | — | Named | — | Marcar elemento de la lista de tareas como completado |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridad para ordenar (más alto = se muestra primero, predeterminado 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | Named | `0` | Límite - Mostrar salida solo a las primeras N líneas |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
