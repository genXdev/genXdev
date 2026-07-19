# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> Obtiene archivos del portapapeles de Windows que se establecieron para operaciones de archivo como copiar/pegar.

## Description

* Esta función recupera rutas de archivo del portapapeles de Windows que se establecieron previamente para operaciones de archivos.
* Maneja automáticamente los modos de subprocesos STA y MTA, garantizando la compatibilidad en diferentes contextos de ejecución de PowerShell.
* La función valida la existencia de los archivos y devuelve solo los archivos/directorios existentes como objetos similares a los de Get-ChildItem o Get-Item.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

Obtener todos los archivos actualmente en el portapapeles como objetos del sistema de archivos.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

Obtener archivos del portapapeles y mostrar sus rutas completas.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

Obtén solo archivos de texto del portapapeles.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
