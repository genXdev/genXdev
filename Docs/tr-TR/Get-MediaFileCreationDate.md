# Get-MediaFileCreationDate

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** —

## Synopsis

> Medya ve diğer dosyalar için en iyi çaba tarihini ayıklar.

## Description

Belirtilen dosya için doğru bir oluşturma veya yakalama tarihi belirlemek amacıyla birden çok strateji dener. Stratejiler, görüntü EXIF meta verilerini okumayı, dosya adlarından tarih/saat bilgilerini ayrıştırmayı ve başka güvenilir bilgi olmadığında dosyanın son yazma zamanına geri dönmeyi içerir. İşlev her zaman bir [DateTime] döndürür; tarih belirlenemediğinde [DateTime]::MinValue döndürür.

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

## Parameter Details

### `-FilePath <String>`

> The `-FilePath` parameter.

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageMetadata.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerRepeat.md)
