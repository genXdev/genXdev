# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Testeert of het opgegeven bestandspad een geldig afbeeldingsbestand is met een ondersteund formaat.

## Description

Deze functie valideert dat een bestand bestaat op het opgegeven pad en een ondersteunde bestandsextensie voor afbeeldingen heeft. Het controleert veelvoorkomende afbeeldingsformaten, waaronder PNG, JPG, JPEG, GIF, BMP, WebP, TIFF en TIF-bestanden. De functie genereert uitzonderingen voor ongeldige paden of niet-ondersteunde bestandsformaten.

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | Het bestandspad naar het afbeeldingsbestand dat moet worden getest |

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
