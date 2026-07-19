# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Establece un fondo de pantalla aleatorio desde un directorio especificado.

## Description

* Selecciona un archivo de imagen aleatorio del directorio especificado y lo establece como fondo de pantalla del escritorio de Windows.
* Soporta formatos de imagen JPG/JPEG y configura el fondo de pantalla en modo "ajustar" por defecto.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Path to the directory containing the wallpaper images |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Buscar en todas las unidades disponibles |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | No recurse en subdirectorios |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Establece un fondo de pantalla aleatorio del directorio C:\Wallpapers.

### Example 2

```powershell
nextbg
```

Establece un fondo de pantalla aleatorio desde el directorio predeterminado usando el alias.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
