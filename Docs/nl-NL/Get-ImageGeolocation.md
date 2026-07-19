# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Extraheert geolocatiegegevens uit een afbeeldingsbestand.

## Description

* Leest EXIF-metadata uit een afbeeldingsbestand om de breedte- en lengtegraadcoördinaten te extraheren.
* Ondersteunt afbeeldingen die GPS-metadata bevatten in hun EXIF-gegevens.
* Gebruikt de System.Drawing.Image-klasse om de afbeelding te laden en de GPS-coördinaten uit eigenschapselementen te parseren.

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Pad naar het afbeeldingsbestand om te analyseren |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

Extraheert GPS-coördinaten uit een vakantiefoto.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

Gebruikt de pipeline om het afbeeldingspad door te geven.

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
