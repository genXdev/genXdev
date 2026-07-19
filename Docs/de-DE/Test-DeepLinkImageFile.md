# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Prüft, ob der angegebene Dateipfad eine gültige Bilddatei mit einem unterstützten Format ist.

## Description

Diese Funktion validiert, dass eine Datei im angegebenen Pfad existiert und eine unterstützte Bilddateierweiterung hat. Sie prüft gängige Bildformate wie PNG, JPG, JPEG, GIF, BMP, WebP, TIFF und TIF-Dateien. Die Funktion löst Ausnahmen für ungültige Pfade oder nicht unterstützte Dateiformate aus.

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | Der Dateipfad zur zu testenden Bilddatei |

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
