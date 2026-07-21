# Set-VLCPlayerFocused

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `showvlc`, `vlcf`, `fvlc`

## Synopsis

> Mengatur fokus ke jendela pemutar media VLC.

## Description

Menemukan instans pemutar media VLC yang sedang berjalan dan membawa jendelanya ke latar depan, menjadikannya jendela aktif. Jika VLC tidak berjalan, akan melanjutkan secara diam-diam tanpa kesalahan. Menggunakan panggilan API Windows untuk memanipulasi fokus jendela.

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-VlcMediaPlayerLyrics.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VlcMediaPlayerRepeat.md)
