# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmute`, `vlcunmute`

## Synopsis

> Attiva/disattiva lo stato di muto del VLC Media Player.

## Description

Questa funzione invia il tasto 'm' a VLC Media Player per attivare/disattivare lo stato audio muto e non muto. La funzione mette a fuoco VLC, invia il comando di muto/disattiva muto, e poi ripristina la messa a fuoco sulla finestra precedentemente attiva.

## Syntax

```powershell
Switch-VlcMediaPlayerMute [<CommonParameters>]
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

Attiva/disattiva lo stato di silenziamento di VLC Media Player utilizzando il nome completo della funzione.

### vlcmute

```powershell
vlcmute
```

Attiva/disattiva lo stato di muto di VLC Media Player utilizzando l'alias breve.

## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Switch-VlcMediaPlayerRepeat.md)
