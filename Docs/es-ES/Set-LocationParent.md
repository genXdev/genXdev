# Set-LocationParent

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `..

## Synopsis

> Cambia la ubicación actual al directorio padre y lista su contenido.

## Description

* Navega un nivel hacia arriba en la jerarquía del sistema de archivos.
* Muestra el contenido del nuevo directorio actual.
* Proporciona un alias conveniente '..' para una navegación rápida entre directorios.

## Syntax

```powershell
Set-LocationParent [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-LocationParent
```

Cambia al directorio padre y lista su contenido.

### Example 2

```powershell
..
```

Usa el alias para cambiar al directorio padre.

## Related Links

- [Set-LocationParent on GitHub](https://github.com/genXdev/genXdev)
