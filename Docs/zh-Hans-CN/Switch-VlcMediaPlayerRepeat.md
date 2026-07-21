# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcrepeat`

## Synopsis

> 在VLC媒体播放器中切换重复模式。

## Description

此函数向 VLC 媒体播放器发送 'r' 键命令，以在不同重复模式（无重复、重复当前、重复全部）之间切换。如果 VLC 尚未运行，该函数会打开它，并在发送命令后将焦点恢复到之前的窗口。

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VLCMediaPlayerPaused.md)
