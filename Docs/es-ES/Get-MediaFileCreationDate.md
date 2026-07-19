# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Extrae la fecha de creación más precisa para archivos multimedia y otros archivos.

## Description

Intenta varias estrategias para determinar una fecha de creación o captura precisa para el archivo especificado. Las estrategias incluyen leer los metadatos EXIF de la imagen, analizar la información de fecha/hora de los nombres de archivo y recurrir a la hora de última modificación del archivo cuando no hay otra información fiable disponible. La función siempre devuelve un [DateTime]; cuando no se puede determinar ninguna fecha, devuelve [DateTime]::MinValue.

## Syntax

```powershell
Get-MediaFileCreationDate -FilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The `-FilePath` parameter. |

## Examples

### Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

```powershell
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'
```

## Related Links

- [Get-MediaFileCreationDate on GitHub](https://github.com/genXdev/genXdev)
