# Set-VLCPlayerFocused

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `showvlc`, `vlcf`, `fvlc`

## Synopsis

> 将焦点设置到 VLC 媒体播放器窗口。

## Description

查找正在运行的 VLC 媒体播放器实例，并将其窗口置于前台，使其成为活动窗口。如果 VLC 未运行，则静默继续，不报错。使用 Windows API 调用来操作窗口焦点。

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayerLyrics.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VlcMediaPlayerRepeat.md)
