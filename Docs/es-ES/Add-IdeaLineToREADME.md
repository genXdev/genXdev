# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea

## Synopsis

> Añade un elemento de idea al archivo README.md.

## Description

Agrega una idea con marca de tiempo a la sección "## Ideas" de un archivo README.md. Puede mostrar la sección modificada y abrirla en Visual Studio Code.

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | El texto de idea a añadir |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir README en Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Mostra la secció modificada |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridad para ordenar (más alto = se muestra primero, predeterminado 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | Named | `0` | Límite - Mostrar salida solo a las primeras N líneas |

## Examples

### Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

```powershell
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show
```

### idea "New feature idea" -UseOneDriveREADME

```powershell
idea "New feature idea" -UseOneDriveREADME
```

## Related Links

- [Add-IdeaLineToREADME on GitHub](https://github.com/genXdev/genXdev)
