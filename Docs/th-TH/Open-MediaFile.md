# Open-MediaFile

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmedia`, `media`, `findmedia`

## Synopsis

> เปิดและเล่นไฟล์มีเดียโดยใช้ VLC media player พร้อมตัวเลือกการกรองและการกำหนดค่าขั้นสูง

## Description

ฟังก์ชันนี้สแกนหาไฟล์มีเดียตามรูปแบบการค้นหา สร้างเพลย์ลิสต์ และเปิดเครื่องเล่น VLC พร้อมตัวเลือกการกำหนดค่าที่ครอบคลุม รองรับวิดีโอ ไฟล์เสียง และรูปภาพ พร้อมติดตั้ง VLC อัตโนมัติหากจำเป็น ฟังก์ชันให้การควบคุมพฤติกรรมการเล่น ตำแหน่งหน้าต่าง การตั้งค่าเสียง/วิดีโอ และการจัดการซับไตเติลอย่างละเอียด

## Syntax

```powershell
Open-MediaFile [[-Name] <String[]>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [-AllDrives] [-AlwaysOnTop] [-Arguments <String>] [-AspectRatio <String>] [-AttributesToSkip <IO.FileAttributes>] [-AudioFilterModules <String[]>] [-AudioFilters <String[]>] [-AudioLanguage <String>] [-AudioVisualization <String>] [-AutoScale] [-Bottom] [-CaseNameMatching <IO.MatchCasing>] [-Centered] [-ClearSession] [-Close] [-Crop <String>] [-Deinterlace <String>] [-DeinterlaceMode <String>] [-DisableAudio] [-DisableSubtitles] [-EnableAudioTimeStretch] [-EnableTimeStretch] [-EnableWallpaperMode] [-Exclude <String[]>] [-FocusWindow] [-FollowSymlinkAndJunctions] [-ForceDolbySurround <String>] [-FullScreen] [-HighPriority] [-HttpProxy <String>] [-HttpProxyPassword <String>] [-IgnoredExtensions <String>] [-IgnoredFileExtensions <String>] [-IncludeAlternateFileStreams] [-IncludeAudio] [-IncludePictures] [-IncludeVideos] [-InputObject <Object>] [-KeysToSend <String[]>] [-Left] [-Loop] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Modules <String[]>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoRecurse] [-OnlyAudio] [-OnlyPictures] [-OnlyVideos] [-PassThru] [-PassThruNoOpen] [-PassThruWindow] [-PlayAndExit] [-PlaylistPath <String>] [-PreferredAudioLanguage <String>] [-PreferredSubtitleLanguage <String>] [-Random] [-Repeat] [-ReplayGainMode <String>] [-ReplayGainPreamp <Single>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-StartPaused] [-SubdirectoryBehavior <String>] [-SubtitleFile <String>] [-SubtitleLanguage <String>] [-SubtitleScale <Int32>] [-TimeoutSeconds <Int32>] [-Top] [-VerbosityLevel <Int32>] [-VideoFilterModules <String[]>] [-VideoFilters <String[]>] [-Visualization <String>] [-VLCPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | `'*'` | ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*' 🌐 *Supports wildcards* |
| `-AllDrives` | SwitchParameter | — | — | Named | — | ค้นหาในไดรฟ์ที่พร้อมใช้งานทั้งหมด |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | อย่ามองหาในโฟลเดอร์ย่อย |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ติดตามลิงก์สัญลักษณ์และจุดเชื่อมต่อระหว่างการข้ามผ่านไดเรกทอรี |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | ความลึกเรียกซ้ำสูงสุดสำหรับค้นหาต่อขึ้นไปตามลำดับชั้นสำหรับการค้นหาแบบสัมพัทธ์ ขณะที่ไม่พบรายการใดๆ 0 หมายถึงปิดการใช้งาน |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์สูงสุดในหน่วยไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่จำกัด |
| `-MinFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์ต่ำสุดเป็นไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่มีค่าต่ำสุด |
| `-ModifiedAfter` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขหลังจากวันที่/เวลา (UTC) นี้ |
| `-ModifiedBefore` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขก่อนวันที่/เวลานี้ (UTC) เท่านั้น |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | คุณสมบัติของไฟล์ที่จะข้าม (เช่น ระบบ, ซ่อนเร้น หรือ ไม่มี) |
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | ชื่อหรือรูปแบบไฟล์ที่จะค้นหาจากอินพุตไปป์ไลน์ ค่าเริ่มต้นคือ "*" 🌐 *Supports wildcards* |
| `-PlaylistPath` | String | — | — | Named | `[System.IO.Path]::GetTempFileName() + '.m3u'` | เส้นทางของเพลย์ลิสต์ที่จะใช้บันทึกไฟล์มีเดีย หากไม่ได้ระบุ เพลย์ลิสต์จะถูกบันทึกในไดเร็กทอรีชั่วคราว |
| `-Width` | Int32 | — | — | 1 | `-1` | ความกว้างเริ่มต้นของหน้าต่าง |
| `-Height` | Int32 | — | — | 2 | `-1` | ความสูงเริ่มต้นของหน้าต่าง |
| `-X` | Int32 | — | — | 3 | `-999999` | ตำแหน่ง X เริ่มต้นของหน้าต่าง |
| `-Y` | Int32 | — | — | 4 | `-999999` | ตำแหน่ง Y เริ่มต้นของหน้าต่าง |
| `-KeysToSend` | String[] | — | ✅ (ByPropertyName) | Named | — | ปุ่มกดที่จะส่งไปยังหน้าต่าง VLC Player โปรดดูเอกสารของ cmdlet GenXdev\Send-Key |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ระดับความขนานสูงสุดสำหรับงานไดเรกทอรี |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | ตัวเลือก: ระยะหมดเวลาการยกเลิกเป็นวินาที |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | ส่งอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์ไปยัง VLC |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ใช้ Shift+Enter แทน Enter เมื่อส่งปุ่มไปยัง VLC |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ความล่าช้าระหว่างสตริงอินพุตต่างๆ เป็นมิลลิวินาทีเมื่อส่งคีย์ไปยัง VLC |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | คงโฟกัสคีย์บอร์ดไว้ที่หน้าต่าง VLC หลังจากส่งแป้นพิมพ์ |
| `-Monitor` | Int32 | — | — | Named | `-2` | จอภาพที่จะใช้, 0 = ค่าเริ่มต้น, -1 = ไม่ใช้ |
| `-AspectRatio` | String | — | — | Named | — | อัตราส่วนภาพต้นฉบับ |
| `-Crop` | String | — | — | Named | — | การตัดต่อวิดีโอ |
| `-SubtitleFile` | String | — | — | Named | — | ใช้ไฟล์คำบรรยาย |
| `-SubtitleScale` | Int32 | — | — | Named | — | ตัวคูณขนาดข้อความคำบรรยาย |
| `-SubtitleLanguage` | String | — | — | Named | — | ภาษาคำบรรยาย |
| `-AudioLanguage` | String | — | — | Named | — | ภาษาเสียง |
| `-PreferredAudioLanguage` | String | — | — | Named | — | ภาษาที่ต้องการสำหรับเสียง |
| `-HttpProxy` | String | — | — | Named | — | พร็อกซี HTTP |
| `-HttpProxyPassword` | String | — | — | Named | — | รหัสผ่านพร็อกซี HTTP |
| `-VerbosityLevel` | Int32 | — | — | Named | — | ระดับความละเอียด |
| `-SubdirectoryBehavior` | String | — | — | Named | — | ลักษณะของไดเรกทอรีย่อย |
| `-IgnoredExtensions` | String | — | — | Named | — | นามสกุลที่ถูกละเว้น |
| `-VLCPath` | String | — | — | Named | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` | เส้นทางไปยังไฟล์ปฏิบัติการของ VLC |
| `-ReplayGainMode` | String | — | — | Named | — | โหมดการปรับเกนรีเพลย์ |
| `-ReplayGainPreamp` | Single | — | — | Named | — | ค่าปรับเกนการเล่นซ้ำ |
| `-ForceDolbySurround` | String | — | — | Named | — | บังคับให้ตรวจจับ Dolby Surround |
| `-AudioFilters` | String[] | — | — | Named | — | ตัวกรองเสียง |
| `-Visualization` | String | — | — | Named | — | การแสดงภาพเสียง |
| `-Deinterlace` | String | — | — | Named | — | ดีอินเทอร์เลซ |
| `-DeinterlaceMode` | String | — | — | Named | — | โหมดดีอินเทอร์เลซ |
| `-VideoFilters` | String[] | — | — | Named | — | โมดูลตัวกรองวิดีโอ |
| `-VideoFilterModules` | String[] | — | — | Named | — | โมดูลกรองวิดีโอ |
| `-Modules` | String[] | — | — | Named | — | โมดูล |
| `-AudioFilterModules` | String[] | — | — | Named | — | โมดูลกรองเสียง |
| `-AudioVisualization` | String | — | — | Named | — | โหมดการแสดงผลเสียง |
| `-PreferredSubtitleLanguage` | String | — | — | Named | — | ภาษาคำบรรยายที่ต้องการ |
| `-IgnoredFileExtensions` | String | — | — | Named | — | นามสกุลไฟล์ที่ไม่สนใจ |
| `-Arguments` | String | — | — | Named | — | อาร์กิวเมนต์เพิ่มเติม |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | รวมสตรีมข้อมูลทางเลือกในผลการค้นหา |
| `-OnlyVideos` | SwitchParameter | — | — | Named | — | รวมเฉพาะไฟล์วิดีโอในเพลย์ลิสต์เท่านั้น |
| `-OnlyAudio` | SwitchParameter | — | — | Named | — | รวมเฉพาะไฟล์เสียงในเพลย์ลิสต์ |
| `-OnlyPictures` | SwitchParameter | — | — | Named | — | รวมเฉพาะรูปภาพในเพลย์ลิสต์ |
| `-IncludeVideos` | SwitchParameter | — | — | Named | — | นอกจากนี้ให้รวมวิดีโอไว้ในเพลย์ลิสต์ด้วย |
| `-IncludeAudio` | SwitchParameter | — | — | Named | — | นอกจากนี้ให้รวมไฟล์เสียงในรายการเล่นด้วย |
| `-IncludePictures` | SwitchParameter | — | — | Named | — | นอกจากนี้ ให้รวมรูปภาพในเพลย์ลิสต์ด้วย |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบของหน้าต่าง |
| `-Left` | SwitchParameter | — | — | Named | — | วางหน้าต่างไว้ที่ด้านซ้ายของหน้าจอ |
| `-Right` | SwitchParameter | — | — | Named | — | วางหน้าต่างไว้ทางด้านขวาของหน้าจอ |
| `-Top` | SwitchParameter | — | — | Named | — | วางหน้าต่างไว้ที่ด้านบนของหน้าจอ |
| `-Bottom` | SwitchParameter | — | — | Named | — | วางหน้าต่างไว้ทางด้านล่างของหน้าจอ |
| `-Centered` | SwitchParameter | — | — | Named | — | วางหน้าต่างให้อยู่ตรงกลางของหน้าจอ |
| `-FullScreen` | SwitchParameter | — | — | Named | — | ส่ง F11 ไปยังหน้าต่าง |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | อยู่ด้านบนสุดเสมอ |
| `-Random` | SwitchParameter | — | — | Named | — | เล่นไฟล์แบบสุ่มตลอดเวลา |
| `-Loop` | SwitchParameter | — | — | Named | — | ทำซ้ำทั้งหมด |
| `-Repeat` | SwitchParameter | — | — | Named | — | ทำซ้ำรายการปัจจุบัน |
| `-StartPaused` | SwitchParameter | — | — | Named | — | เริ่มหยุดชั่วคราว |
| `-PlayAndExit` | SwitchParameter | — | — | Named | — | เล่นและออก |
| `-DisableAudio` | SwitchParameter | — | — | Named | — | ปิดการใช้งานเสียง |
| `-DisableSubtitles` | SwitchParameter | — | — | Named | — | ปิดคำบรรยาย |
| `-AutoScale` | SwitchParameter | — | — | Named | — | การปรับขนาดวิดีโออัตโนมัติ |
| `-HighPriority` | SwitchParameter | — | — | Named | — | เพิ่มลำดับความสำคัญของกระบวนการ |
| `-EnableTimeStretch` | SwitchParameter | — | — | Named | — | เปิดใช้งานการยืดเวลาของเสียง |
| `-NewWindow` | SwitchParameter | — | — | Named | — | เปิดอินสแตนซ์ใหม่ของ VLC mediaplayer |
| `-EnableWallpaperMode` | SwitchParameter | — | — | Named | — | เปิดใช้งานโหมดวอลเปเปอร์วิดีโอ |
| `-EnableAudioTimeStretch` | SwitchParameter | — | — | Named | — | เปิดใช้งานการยืดเวลาของเสียง |
| `-Close` | SwitchParameter | — | — | Named | — | ปิดหน้าต่างโปรแกรมเล่นสื่อ VLC |
| `-SideBySide` | SwitchParameter | — | — | Named | — | จะตั้งค่าหน้าต่างให้เต็มหน้าจอบนจอภาพอื่นที่ไม่ใช่ PowerShell หรือวางเคียงข้างกับ PowerShell บนจอภาพเดียวกัน |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | โฟกัสไปที่หน้าต่าง VLC หลังจากเปิด |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งค่าหน้าต่าง VLC ให้เป็นพื้นหน้าเมื่อเปิด |
| `-Maximize` | SwitchParameter | — | — | Named | — | ขยายหน้าต่างให้ใหญ่สุด |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | คืนโฟกัสหน้าต่าง PowerShell หลังจากเปิด VLC |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | กำหนดหรือรับค่าความไวต่อตัวพิมพ์เล็กใหญ่สำหรับไฟล์และไดเรกทอรี |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ความลึกสูงสุดในการเรียกซ้ำสำหรับการสำรวจไดเรกทอรี 0 หมายถึงไม่จำกัด |
| `-Exclude` | String[] | — | — | Named | `@('*\\.git\\*')` | แยกไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้ (เช่น *.tmp, *\bin\*) |
| `-PassThru` | SwitchParameter | — | — | Named | — | ส่งคืนไฟล์ที่พบจากการค้นหา |
| `-PassThruNoOpen` | SwitchParameter | — | — | Named | — | ส่งคืนไฟล์ที่พบจากการค้นหาโดยไม่ต้องเปิด VLC |
| `-PassThruWindow` | SwitchParameter | — | — | Named | — | ส่งกลับผู้ช่วยหน้าต่างสำหรับแต่ละกระบวนการ |

## Examples

### Open-MediaFile

```powershell
Open-MediaFile
```

เปิดไฟล์มีเดียทั้งหมดในไดเรกทอรีปัจจุบันโดยใช้การตั้งค่า VLC เริ่มต้น

### vlcmedia ~\Pictures -OnlyPictures -Fullscreen

```powershell
vlcmedia ~\Pictures -OnlyPictures -Fullscreen
```

เปิดเฉพาะไฟล์รูปภาพจากโฟลเดอร์ Pictures ในโหมดเต็มหน้าจอโดยใช้นามแฝง 'vlcmedia'

### media ~\Videos -OnlyVideos -Loop

```powershell
media ~\Videos -OnlyVideos -Loop
```

เปิดไฟล์วิดีโอโดยเปิดใช้งานการวนซ้ำโดยใช้นามแฝง 'media'

## Parameter Details

### `-Name <String[]>`

> ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-AllDrives`

> ค้นหาในไดรฟ์ที่พร้อมใช้งานทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> อย่ามองหาในโฟลเดอร์ย่อย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> ติดตามลิงก์สัญลักษณ์และจุดเชื่อมต่อระหว่างการข้ามผ่านไดเรกทอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSearchUpDepth <Int32>`

> ความลึกเรียกซ้ำสูงสุดสำหรับค้นหาต่อขึ้นไปตามลำดับชั้นสำหรับการค้นหาแบบสัมพัทธ์ ขณะที่ไม่พบรายการใดๆ 0 หมายถึงปิดการใช้งาน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxupward` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int64>`

> ขนาดไฟล์สูงสุดในหน่วยไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่จำกัด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `maxlength`, `maxsize` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileSize <Int64>`

> ขนาดไฟล์ต่ำสุดเป็นไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่มีค่าต่ำสุด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `minsize`, `minlength` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedAfter <DateTime>`

> รวมเฉพาะไฟล์ที่ถูกแก้ไขหลังจากวันที่/เวลา (UTC) นี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ma`, `after` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModifiedBefore <DateTime>`

> รวมเฉพาะไฟล์ที่ถูกแก้ไขก่อนวันที่/เวลานี้ (UTC) เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `before`, `mb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributesToSkip <IO.FileAttributes>`

> คุณสมบัติของไฟล์ที่จะข้าม (เช่น ระบบ, ซ่อนเร้น หรือ ไม่มี)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object>`

> ชื่อหรือรูปแบบไฟล์ที่จะค้นหาจากอินพุตไปป์ไลน์ ค่าเริ่มต้นคือ "*"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PlaylistPath <String>`

> เส้นทางของเพลย์ลิสต์ที่จะใช้บันทึกไฟล์มีเดีย หากไม่ได้ระบุ เพลย์ลิสต์จะถูกบันทึกในไดเร็กทอรีชั่วคราว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.Path]::GetTempFileName() + '.m3u'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> ความกว้างเริ่มต้นของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> ความสูงเริ่มต้นของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> ตำแหน่ง X เริ่มต้นของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> ตำแหน่ง Y เริ่มต้นของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> ปุ่มกดที่จะส่งไปยังหน้าต่าง VLC Player โปรดดูเอกสารของ cmdlet GenXdev\Send-Key

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDegreeOfParallelism <Int32>`

> ระดับความขนานสูงสุดสำหรับงานไดเรกทอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `threads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> ตัวเลือก: ระยะหมดเวลาการยกเลิกเป็นวินาที

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `maxseconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> ส่งอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์ไปยัง VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> ใช้ Shift+Enter แทน Enter เมื่อส่งปุ่มไปยัง VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> ความล่าช้าระหว่างสตริงอินพุตต่างๆ เป็นมิลลิวินาทีเมื่อส่งคีย์ไปยัง VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> คงโฟกัสคีย์บอร์ดไว้ที่หน้าต่าง VLC หลังจากส่งแป้นพิมพ์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> จอภาพที่จะใช้, 0 = ค่าเริ่มต้น, -1 = ไม่ใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AspectRatio <String>`

> อัตราส่วนภาพต้นฉบับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Crop <String>`

> การตัดต่อวิดีโอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleFile <String>`

> ใช้ไฟล์คำบรรยาย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleScale <Int32>`

> ตัวคูณขนาดข้อความคำบรรยาย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubtitleLanguage <String>`

> ภาษาคำบรรยาย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioLanguage <String>`

> ภาษาเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredAudioLanguage <String>`

> ภาษาที่ต้องการสำหรับเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxy <String>`

> พร็อกซี HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HttpProxyPassword <String>`

> รหัสผ่านพร็อกซี HTTP

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VerbosityLevel <Int32>`

> ระดับความละเอียด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SubdirectoryBehavior <String>`

> ลักษณะของไดเรกทอรีย่อย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredExtensions <String>`

> นามสกุลที่ถูกละเว้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VLCPath <String>`

> เส้นทางไปยังไฟล์ปฏิบัติการของ VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"${env:ProgramFiles}\VideoLAN\VLC\vlc.exe"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainMode <String>`

> โหมดการปรับเกนรีเพลย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplayGainPreamp <Single>`

> ค่าปรับเกนการเล่นซ้ำ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDolbySurround <String>`

> บังคับให้ตรวจจับ Dolby Surround

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilters <String[]>`

> ตัวกรองเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Visualization <String>`

> การแสดงภาพเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Deinterlace <String>`

> ดีอินเทอร์เลซ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeinterlaceMode <String>`

> โหมดดีอินเทอร์เลซ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilters <String[]>`

> โมดูลตัวกรองวิดีโอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VideoFilterModules <String[]>`

> โมดูลกรองวิดีโอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Modules <String[]>`

> โมดูล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioFilterModules <String[]>`

> โมดูลกรองเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioVisualization <String>`

> โหมดการแสดงผลเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferredSubtitleLanguage <String>`

> ภาษาคำบรรยายที่ต้องการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoredFileExtensions <String>`

> นามสกุลไฟล์ที่ไม่สนใจ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Arguments <String>`

> อาร์กิวเมนต์เพิ่มเติม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAlternateFileStreams`

> รวมสตรีมข้อมูลทางเลือกในผลการค้นหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ads` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyVideos`

> รวมเฉพาะไฟล์วิดีโอในเพลย์ลิสต์เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAudio`

> รวมเฉพาะไฟล์เสียงในเพลย์ลิสต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPictures`

> รวมเฉพาะรูปภาพในเพลย์ลิสต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeVideos`

> นอกจากนี้ให้รวมวิดีโอไว้ในเพลย์ลิสต์ด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeAudio`

> นอกจากนี้ให้รวมไฟล์เสียงในรายการเล่นด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludePictures`

> นอกจากนี้ ให้รวมรูปภาพในเพลย์ลิสต์ด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> ลบขอบของหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> วางหน้าต่างไว้ที่ด้านซ้ายของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> วางหน้าต่างไว้ทางด้านขวาของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Top`

> วางหน้าต่างไว้ที่ด้านบนของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> วางหน้าต่างไว้ทางด้านล่างของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> วางหน้าต่างให้อยู่ตรงกลางของหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FullScreen`

> ส่ง F11 ไปยังหน้าต่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AlwaysOnTop`

> อยู่ด้านบนสุดเสมอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Random`

> เล่นไฟล์แบบสุ่มตลอดเวลา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Shuffle` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Loop`

> ทำซ้ำทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Repeat`

> ทำซ้ำรายการปัจจุบัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StartPaused`

> เริ่มหยุดชั่วคราว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayAndExit`

> เล่นและออก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableAudio`

> ปิดการใช้งานเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisableSubtitles`

> ปิดคำบรรยาย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScale`

> การปรับขนาดวิดีโออัตโนมัติ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HighPriority`

> เพิ่มลำดับความสำคัญของกระบวนการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableTimeStretch`

> เปิดใช้งานการยืดเวลาของเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> เปิดอินสแตนซ์ใหม่ของ VLC mediaplayer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableWallpaperMode`

> เปิดใช้งานโหมดวอลเปเปอร์วิดีโอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnableAudioTimeStretch`

> เปิดใช้งานการยืดเวลาของเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Close`

> ปิดหน้าต่างโปรแกรมเล่นสื่อ VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> จะตั้งค่าหน้าต่างให้เต็มหน้าจอบนจอภาพอื่นที่ไม่ใช่ PowerShell หรือวางเคียงข้างกับ PowerShell บนจอภาพเดียวกัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> โฟกัสไปที่หน้าต่าง VLC หลังจากเปิด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> ตั้งค่าหน้าต่าง VLC ให้เป็นพื้นหน้าเมื่อเปิด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Maximize`

> ขยายหน้าต่างให้ใหญ่สุด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> คืนโฟกัสหน้าต่าง PowerShell หลังจากเปิด VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> กำหนดหรือรับค่าความไวต่อตัวพิมพ์เล็กใหญ่สำหรับไฟล์และไดเรกทอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.MatchCasing]::PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRecursionDepth <Int32>`

> ความลึกสูงสุดในการเรียกซ้ำสำหรับการสำรวจไดเรกทอรี 0 หมายถึงไม่จำกัด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | `md`, `depth`, `maxdepth` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> แยกไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้ (เช่น *.tmp, *\bin\*)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\\.git\\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> ส่งคืนไฟล์ที่พบจากการค้นหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruNoOpen`

> ส่งคืนไฟล์ที่พบจากการค้นหาโดยไม่ต้องเปิด VLC

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThruWindow`

> ส่งกลับผู้ช่วยหน้าต่างสำหรับแต่ละกระบวนการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-MediaFileCreationDate.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VlcMediaPlayerMute.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Switch-VlcMediaPlayerRepeat.md)
