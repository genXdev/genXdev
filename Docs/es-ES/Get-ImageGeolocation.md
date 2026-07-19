# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Extrae datos de geolocalización de un archivo de imagen.

## Description

* Lee los metadatos EXIF de un archivo de imagen para extraer sus coordenadas de latitud y longitud.
* Soporta imágenes que contienen metadatos GPS en sus datos EXIF.
* Utiliza la clase System.Drawing.Image para cargar la imagen y analizar las coordenadas GPS de los elementos de propiedad.

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Ruta al archivo de imagen a analizar |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

Extrae las coordenadas GPS de una foto de vacaciones.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

Utiliza el pipeline para pasar la ruta de la imagen.

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
