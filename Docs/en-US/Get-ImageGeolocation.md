# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Extracts geolocation data from an image file.

## Description

* Reads EXIF metadata from an image file to extract its latitude and
  longitude coordinates.
* Supports images that contain GPS metadata in their EXIF data.
* Uses the System.Drawing.Image class to load the image and parse the GPS
  coordinates from property items.

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

Extracts GPS coordinates from a vacation photo.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

Uses the pipeline to pass the image path.

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
