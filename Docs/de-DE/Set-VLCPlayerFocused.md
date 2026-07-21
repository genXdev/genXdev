# Set-VLCPlayerFocused

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `showvlc`, `vlcf`, `fvlc`

## Synopsis

> Setzt den Fokus auf das Fenster des VLC Media Players.

## Description

Sucht eine laufende Instanz des VLC Media Players und bringt deren Fenster in den Vordergrund, sodass es das aktive Fenster wird. Wenn VLC nicht ausgeführt wird, wird ohne Fehler still fortgesetzt. Verwendet Windows-API-Aufrufe, um den Fensterfokus zu steuern.

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-VlcMediaPlayerLyrics.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/de-DE/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/de-DE/Switch-VlcMediaPlayerRepeat.md)
