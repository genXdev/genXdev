# Get-ImageMetadata

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Extraheert uitgebreide metadata uit een afbeeldingsbestand.

## Description

Deze functie leest EXIF, IPTC en andere metadata uit een afbeeldingsbestand. Het haalt een breed scala aan informatie op, waaronder camera-informatie, belichtingsinstellingen, GPS-coördinaten, datums, copyrightinformatie en meer. Het ondersteunt afbeeldingen die metadata bevatten in hun EXIF-gegevens (JPEG, TIFF) en ook PNG-metadata.

## Syntax

```powershell
Get-ImageMetadata -ImagePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | — | 0 | — | Pad naar het afbeeldingsbestand om te analyseren |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Dwing een toestemmingsprompt af, zelfs als er een voorkeur is ingesteld voor de installatie van het ImageSharp-pakket. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor ImageSharp-pakketten. |

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
