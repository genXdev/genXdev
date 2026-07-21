# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo`

## Synopsis

> Añade un elemento de tarea pendiente al archivo README.md.

## Description

Agrega un elemento de tarea con marca de tiempo a la sección "## Todoos" de un archivo README.md.
Los elementos de tarea se pueden marcar como realizados y la sección modificada se puede mostrar.
Cada nuevo elemento de tarea recibe automáticamente una marca de tiempo a menos que se marque como realizado.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | El texto del elemento de la lista de tareas pendientes para agregar |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir README en Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    Muestra la información de la versión del equipo.
.DESCRIPTION
    El cmdlet Get-Version obtiene información detallada sobre la versión del sistema operativo del equipo local.
.PARAMETER ComputerName
    Especifica el equipo para el que se recupera la información de la versión. El valor predeterminado es el equipo local.
.EXAMPLE
    Get-Version
    Este comando muestra la información de la versión del equipo local.
.EXAMPLE
    Get-Version -ComputerName "Server01"
    Este comando muestra la información de la versión del equipo denominado Server01. |
| `-Done` | SwitchParameter | — | — | Named | — | Marcar elemento de la lista de tareas como completado |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Usar LÉAME en el directorio del perfil de PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Usar el archivo LÉAME en el directorio de OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridad para ordenar (más alto = se muestra primero, predeterminado 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | Named | `0` | Limit -Muestra la salida solo las primeras N líneas |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Parameter Details

### `-Line <String>`

> El texto del elemento de la lista de tareas pendientes para agregar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Abrir README en Visual Studio Code

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Show`

> .SYNOPSIS
    Muestra la información de la versión del equipo.
.DESCRIPTION
    El cmdlet Get-Version obtiene información detallada sobre la versión del sistema operativo del equipo local.
.PARAMETER ComputerName
    Especifica el equipo para el que se recupera la información de la versión. El valor predeterminado es el equipo local.
.EXAMPLE
    Get-Version
    Este comando muestra la información de la versión del equipo local.
.EXAMPLE
    Get-Version -ComputerName "Server01"
    Este comando muestra la información de la versión del equipo denominado Server01.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Done`

> Marcar elemento de la lista de tareas como completado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseHomeREADME`

> Usar LÉAME en el directorio del perfil de PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseOneDriveREADME`

> Usar el archivo LÉAME en el directorio de OneDrive

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> Prioridad para ordenar (más alto = se muestra primero, predeterminado 1)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SortByDate`

> Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Ascending`

> Invertir el orden de clasificación (ascendente en lugar de descendente)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-First <Int32>`

> Limit -Muestra la salida solo las primeras N líneas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-ReleaseNoteLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/VSCode.md)
