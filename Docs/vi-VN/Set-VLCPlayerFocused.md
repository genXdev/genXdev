# Set-VLCPlayerFocused

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `showvlc`, `vlcf`, `fvlc`

## Synopsis

> Đặt tiêu điểm vào cửa sổ trình phát đa phương tiện VLC.

## Description

Định vị một phiên bản đang chạy của trình phát đa phương tiện VLC và đưa cửa sổ của nó lên phía trước, biến nó thành cửa sổ hoạt động. Nếu VLC không chạy, tiếp tục âm thầm mà không báo lỗi. Sử dụng các lệnh gọi API Windows để thao tác tiêu điểm cửa sổ.

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-VlcMediaPlayerLyrics.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Switch-VlcMediaPlayerRepeat.md)
