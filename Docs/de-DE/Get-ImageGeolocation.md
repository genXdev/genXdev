# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Extrahiert Geolokalisierungsdaten aus einer Bilddatei.

## Description

* Liest EXIF-Metadaten aus einer Bilddatei aus, um deren Breiten- und Längengradkoordinaten zu extrahieren.
* Unterstützt Bilder, die GPS-Metadaten in ihren EXIF-Daten enthalten.
* Verwendet die System.Drawing.Image-Klasse, um das Bild zu laden und die GPS-Koordinaten aus Eigenschaftselementen zu parsen.

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Path to the image file to analyze |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

Extrahiert GPS-Koordinaten aus einem Urlaubsfoto.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

Verwendet die Pipeline, um den Bildpfad zu übergeben.

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
