# Start-VlcMediaPlayerNextInPlaylist

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcnext`

## Synopsis

> Advances VLC Media Player to the next item in the current playlist.

## Description

This function sends the 'n' keystroke to VLC Media Player to skip to the next
track or media item in the currently loaded playlist. It focuses the VLC window,
sends the next command, and restores focus to the PowerShell console. The
function includes ShouldProcess support for confirmation prompts when needed.

## Syntax

```powershell
Start-VlcMediaPlayerNextInPlaylist [<CommonParameters>]
```

## Examples

### Start-VlcMediaPlayerNextInPlaylist

```powershell
Start-VlcMediaPlayerNextInPlaylist
```

### vlcnext

```powershell
vlcnext
```

## Related Links

- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-VlcMediaPlayerLyrics.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Switch-VlcMediaPlayerRepeat.md)
