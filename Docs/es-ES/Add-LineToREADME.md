# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Agrega una línea a un archivo markdown README.md en una sección específica.

## Description

Busca y modifica un archivo README.md añadiendo una nueva línea a una sección especificada.
Puede crear la sección si no existe. Admite el formateo de líneas como bloques
de código y la visualización de la sección modificada.

Buscará primero en el directorio actual y luego subirá por los directorios para encontrar la ubicación del README.
Si no lo encuentra, usará el README en el directorio de perfil de PowerShell.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 0 | — | La sección a la que agregar la línea |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio Code después de modificar |
| `-Show` | SwitchParameter | — | — | Named | — | Mostra la secció modificada |
| `-Done` | SwitchParameter | — | — | Named | — | Mark the item as completed |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Prioridad para ordenar (más alto = se muestra primero, predeterminado 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Ordenar líneas por fecha (prefijo yyyyMMdd) en lugar de prioridad |
| `-Ascending` | SwitchParameter | — | — | Named | — | Invertir el orden de clasificación (ascendente en lugar de descendente) |
| `-First` | Int32 | — | — | Named | `0` | Límite - Mostrar salida solo a las primeras N líneas |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
