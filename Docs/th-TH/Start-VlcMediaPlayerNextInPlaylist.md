# Start-VlcMediaPlayerNextInPlaylist

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcnext`

## Synopsis

> ให้ VLC Media Player เลื่อนไปยังรายการถัดไปในเพลย์ลิสต์ปัจจุบัน

## Description

ฟังก์ชันนี้จะส่งการกดแป้น 'n' ไปยัง VLC Media Player เพื่อข้ามไปยังแทร็กถัดไปหรือรายการสื่อถัดไปในเพลย์ลิสต์ที่โหลดอยู่ โดยจะโฟกัสที่หน้าต่าง VLC ส่งคำสั่งถัดไป และคืนค่าโฟกัสกลับไปยังคอนโซล PowerShell ฟังก์ชันนี้รวมถึงการรองรับ ShouldProcess สำหรับการแจ้งเตือนยืนยันเมื่อจำเป็น

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

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/StabilizeVideo.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VlcMediaPlayerRepeat.md)
