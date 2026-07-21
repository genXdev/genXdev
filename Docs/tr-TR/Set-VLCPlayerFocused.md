# Set-VLCPlayerFocused

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `showvlc`, `vlcf`, `fvlc`

## Synopsis

> Odağı VLC medya oynatıcı penceresine ayarlar.

## Description

Çalışan bir VLC medya oynatıcı örneğini bulur ve penceresini öne getirerek etkin pencere haline getirir. VLC çalışmıyorsa, hata vermeden sessizce devam eder. Pencere odağını yönetmek için Windows API çağrılarını kullanır.

## Syntax

```powershell
Set-VLCPlayerFocused [<CommonParameters>]
```

## Examples

### Set-VLCPlayerFocused Brings the VLC player window to front and gives it focus

```powershell
Set-VLCPlayerFocused
Brings the VLC player window to front and gives it focus
```

### vlcf Same operation using the short alias

```powershell
vlcf
Same operation using the short alias
```

## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-VlcMediaPlayerLyrics.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Switch-VlcMediaPlayerRepeat.md)
