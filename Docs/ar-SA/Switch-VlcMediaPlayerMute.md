# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmute`, `vlcunmute`

## Synopsis

> يقوم بتبديل حالة كتم الصوت في مشغل وسائط VLC.

## Description

ترسل هذه الدالة المفتاح 'm' إلى مشغل الوسائط VLC للتبديل بين حالات كتم الصوت وإلغاء كتمه. تركز الدالة على VLC، وترسل أمر كتم/إلغاء كتم الصوت، ثم تستعيد التركيز إلى النافذة النشطة سابقًا.

## Syntax

```powershell
Switch-VlcMediaPlayerMute [<CommonParameters>]
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

يقوم بتبديل حالة كتم الصوت في مشغل VLC باستخدام اسم الوظيفة الكامل.

### vlcmute

```powershell
vlcmute
```

يقوم بتبديل حالة كتم الصوت في مشغل VLC باستخدام الاسم المختصر.

## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerRepeat.md)
