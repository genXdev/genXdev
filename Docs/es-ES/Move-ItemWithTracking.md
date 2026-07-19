# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Mueve archivos y directorios preservando enlaces y referencias del sistema de archivos.

## Description

* Utiliza la API MoveFileEx de Windows para mover archivos y directorios con seguimiento de enlaces habilitado, asegurando que se mantengan las referencias del sistema de archivos.
* Si la ruta de origen está bajo control de Git, intenta usar git mv para registrar el cambio de nombre en Git.
* Recurre a MoveFileEx si Git no está disponible o si git mv falla.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Ruta de origen del archivo/directorio a mover |
| `-Destination` | String | ✅ | — | 1 | — | Ruta de destino para mover |
| `-Force` | SwitchParameter | — | — | Named | `False` | Sobrescribir destino si existe |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

Mueve un archivo preservando los enlaces del sistema de archivos y el seguimiento de Git.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

Mueve un directorio, sobrescribiendo el destino si existe.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
