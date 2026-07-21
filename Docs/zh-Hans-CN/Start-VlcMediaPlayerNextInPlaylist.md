# Start-VlcMediaPlayerNextInPlaylist

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcnext`

## Synopsis

> 将VLC媒体播放器前进到当前播放列表中的下一项。

## Description

此函数向VLC媒体播放器发送'n'按键以跳转到当前加载的播放列表中的下一曲目或媒体项。它会聚焦VLC窗口，发送下一个命令，然后将焦点恢复到PowerShell控制台。该函数包含ShouldProcess支持，以便在需要时提示确认。

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/StabilizeVideo.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Switch-VlcMediaPlayerRepeat.md)
