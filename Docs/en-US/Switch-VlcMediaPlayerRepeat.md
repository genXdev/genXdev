# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat`

## Synopsis

> Toggles the repeat mode in VLC Media Player.

## Description

This function sends the 'r' key command to VLC Media Player to toggle between
different repeat modes (no repeat, repeat current, repeat all). The function
opens VLC if it's not already running and restores focus to the previous
window after sending the command.

## Syntax

```powershell
Switch-VlcMediaPlayerRepeat [<CommonParameters>]
```

## Examples

### Switch-VlcMediaPlayerRepeat

```powershell
Switch-VlcMediaPlayerRepeat
```

### vlcrepeat

```powershell
vlcrepeat
```

## Related Links

- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayerLyrics.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VLCMediaPlayerPaused.md)
