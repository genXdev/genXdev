# Get-ImageGeolocation

> **Module:** GenXdev.Media | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> يستخرج بيانات الموقع الجغرافي من ملف صورة.

## Description

* يقرأ بيانات EXIF الوصفية من ملف صورة لاستخراج إحداثيات خطوط الطول والعرض الخاصة به.
* يدعم الصور التي تحتوي على بيانات GPS وصفية في بيانات EXIF الخاصة بها.
* يستخدم فئة System.Drawing.Image لتحميل الصورة وتحليل إحداثيات GPS من عناصر الخصائص.

## Syntax

```powershell
Get-ImageGeolocation -ImagePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | المسار إلى ملف الصورة المراد تحليلها |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

استخراج إحداثيات GPS من صورة عطلة.

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

يستخدم خط الأنابيب لتمرير مسار الصورة.

## Parameter Details

### `-ImagePath <String>`

> المسار إلى ملف الصورة المراد تحليلها

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Switch-VlcMediaPlayerRepeat.md)
