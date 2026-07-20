# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause`, `vlcplay`

## Synopsis

> Toggles the pause/play state of the VLC Media Player.

## Description

This function sends a space key to VLC Media Player to toggle between paused
and playing states. It automatically restores focus to the original window
after sending the key command.

## Syntax

```powershell
Switch-VLCMediaPlayerPaused [<CommonParameters>]
```

## Examples

### Switch-VLCMediaPlayerPaused

```powershell
Switch-VLCMediaPlayerPaused
```

Toggles the pause/play state of VLC Media Player.

### vlcpause

```powershell
vlcpause
```

Uses the alias to toggle the pause/play state.

### vlcplay

```powershell
vlcplay
```

Uses the alternate alias to toggle the pause/play state.

## Related Links

- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayerLyrics.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VlcMediaPlayerMute.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VlcMediaPlayerRepeat.md)
