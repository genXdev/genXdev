# Get-ImageMetadata

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Extrae metadatos completos de un archivo de imagen.

## Description

Esta función lee metadatos EXIF, IPTC y otros de un archivo de imagen. Extrae una amplia gama de información que incluye detalles de la cámara, configuraciones de exposición, coordenadas GPS, fechas, información de derechos de autor y más. Es compatible con imágenes que contienen metadatos en sus datos EXIF (JPEG, TIFF), así como con metadatos PNG.

## Syntax

```powershell
Get-ImageMetadata -ImagePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | — | 0 | — | Ruta al archivo de imagen a analizar |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for ImageSharp package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Aceptar automáticamente la instalación de software de terceros y establecer el indicador persistente para los paquetes ImageSharp. |

## Examples

### Get-ImageMetadata -ImagePath "C:\Pictures\vacation.jpg"

```powershell
Get-ImageMetadata -ImagePath "C:\Pictures\vacation.jpg"
```

### "C:\Pictures\vacation.jpg" | Get-ImageMetadata

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageMetadata
```

### Get-ImageMetadata -ImagePath "C:\Pictures\photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Get-ImageMetadata -ImagePath "C:\Pictures\photo.webp" -ConsentToThirdPartySoftwareInstallation
```

## Outputs

- `Collections.Hashtable
Returns a hashtable containing all available metadata categories including:
- Basic (dimensions, format, etc.)
- Camera (make, model, etc.)
- Exposure (aperture, shutter speed, ISO, etc.)
- GPS (latitude, longitude, etc.)
- DateTime (when taken, modified, etc.)
- Author (artist, copyright, etc.)
- Additional (software, comments, etc.)`
- `GenXdev.Helpers.ImageSearchResultMetadata`

## Related Links

- [Get-ImageMetadata on GitHub](https://github.com/genXdev/genXdev)
