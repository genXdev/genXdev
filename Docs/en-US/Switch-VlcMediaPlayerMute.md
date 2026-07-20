# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute`, `vlcunmute`

## Synopsis

> Toggles the mute state of the VLC Media Player.

## Description

This function sends the 'm' key to VLC Media Player to toggle between muted
and unmuted audio states. The function focuses VLC, sends the mute/unmute
command, and then restores focus to the previously active window.

## Syntax

```powershell
Switch-VlcMediaPlayerMute [<CommonParameters>]
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

Toggles the mute state of VLC Media Player using the full function name.

### vlcmute

```powershell
vlcmute
```

Toggles the mute state of VLC Media Player using the short alias.

## Related Links

- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayerLyrics.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VlcMediaPlayerRepeat.md)
