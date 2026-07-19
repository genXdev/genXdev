# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Comprueba si la ruta de archivo especificada es un archivo de imagen válido con un formato compatible.

## Description

Esta función valida que un archivo exista en la ruta especificada y tenga una extensión de archivo de imagen compatible. Comprueba formatos de imagen comunes, incluidos archivos PNG, JPG, JPEG, GIF, BMP, WebP, TIFF y TIF. La función lanza excepciones para rutas no válidas o formatos de archivo no compatibles.

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | La ruta del archivo de imagen que se va a probar |

## Examples

### Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"

```powershell
Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"
```

### Test-DeepLinkImageFile "C:\Images\logo.png"

```powershell
Test-DeepLinkImageFile "C:\Images\logo.png"
```

## Related Links

- [Test-DeepLinkImageFile on GitHub](https://github.com/genXdev/genXdev)
