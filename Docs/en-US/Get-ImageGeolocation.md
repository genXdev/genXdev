# Get-ImageGeolocation

> **Module:** GenXdev.Media | **Type:** Cmdlet | **Aliases:** —

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
Get-ImageGeolocation -ImagePath <String> [<CommonParameters>]
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

## Parameter Details

### `-ImagePath <String>`

> Path to the image file to analyze

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Switch-VlcMediaPlayerRepeat.md)
