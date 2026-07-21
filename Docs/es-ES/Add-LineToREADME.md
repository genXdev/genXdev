# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Agrega una línea a un archivo markdown README.md en una sección especificada.

## Description

Busca y modifica un archivo README.md añadiendo una nueva línea a una sección especificada.
Puede crear la sección si no existe. Admite el formateo de líneas como bloques
de código y mostrar la sección modificada.

Primero buscará en el directorio actual, luego subirá por los directorios para encontrar la ubicación
 del README. Si no lo encuentra, usará el README en el directorio de perfil de PowerShell.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | La línea para agregar al README |
| `-Section` | String | ✅ | — | 0 | — | La sección para agregar la línea |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio Code después de modificar |
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
| `-Done` | SwitchParameter | — | — | Named | — | Marcar el elemento como completado |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Usar LÉAME en el directorio del perfil de PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Usar el archivo LÉAME en el directorio de OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridad para ordenar (más alto = se muestra primero, predeterminado 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | Named | `0` | Limit -Muestra la salida solo las primeras N líneas |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Parameter Details

### `-Line <String>`

> La línea para agregar al README

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Section <String>`

> La sección para agregar la línea

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Abrir en Visual Studio Code después de modificar

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

> Marcar el elemento como completado

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
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Add-TodoLineToREADME.md)
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
