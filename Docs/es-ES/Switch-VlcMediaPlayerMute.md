# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmute`, `vlcunmute`

## Synopsis

> Alterna el estado de silencio del Reproductor multimedia VLC.

## Description

Esta función envía la tecla 'm' a VLC Media Player para alternar entre los estados de audio silenciado y no silenciado. La función enfoca VLC, envía el comando de silenciar/no silenciar, y luego restaura el enfoque a la ventana previamente activa.

## Syntax

```powershell
Switch-VlcMediaPlayerMute [<CommonParameters>]
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

Alterna el estado de silencio del Reproductor Multimedia VLC utilizando el nombre completo de la función.

### vlcmute

```powershell
vlcmute
```

Alterna el estado de silencio de VLC Media Player usando el alias corto.

## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Switch-VlcMediaPlayerRepeat.md)
