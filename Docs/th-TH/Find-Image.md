# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages`, `li`

## Synopsis

> ค้นหาไฟล์ภาพและข้อมูลเมตาในไดเรกทอรีที่ระบุพร้อมความสามารถในการกรองและการแสดงผลแบบแกลเลอรีในเบราว์เซอร์ที่เป็นตัวเลือก

## Description

ค้นหาไฟล์รูปภาพ (jpg, jpeg, png, gif, bmp, webp, tiff, tif) ในไดเรกทอรีที่ระบุและไดเรกทอรีย่อย สำหรับแต่ละรูปภาพ จะตรวจสอบไฟล์ description.json, keywords.json, people.json และ objects.json ที่เกี่ยวข้องเพื่อหาข้อมูลเมตาดาต้า สามารถกรองรูปภาพตามการจับคู่คีย์เวิร์ด การระบุบุคคล และการตรวจจับวัตถุ จากนั้นส่งคืนผลลัพธ์เป็นออบเจกต์ ใช้ -ShowInBrowser เพื่อแสดงผลลัพธ์ในเค้าโครงแบบเมสันรีบนเบราว์เซอร์

ตรรกะพารามิเตอร์:
- ภายในพารามิเตอร์แต่ละประเภท (Keywords, People, Objects ฯลฯ): ใช้ตรรกะ OR
  ตัวอย่าง: -Keywords "cat","dog" ค้นหารูปภาพที่มี EITHER cat OR dog
- ระหว่างพารามิเตอร์ประเภทต่าง ๆ: ใช้ตรรกะ AND
  ตัวอย่าง: -Keywords "cat" -People "John" ค้นหารูปภาพที่มี cat AND John
- พารามิเตอร์ช่วง EXIF: ระบุค่า [min, max] สำหรับการกรองช่วง
- พารามิเตอร์สตริง: รองรับการจับคู่วิลด์การ์ดด้วย * และ ?

ฟังก์ชันนี้จะค้นหาในไดเรกทอรีรูปภาพและตรวจสอบข้อมูลสตรีมสำรองที่มีข้อมูลเมตาดาต้าในรูปแบบ JSON สามารถจับคู่คีย์เวิร์ดโดยใช้รูปแบบวิลด์การ์ด กรองหาบุคคลที่ระบุ และค้นหาวัตถุที่ตรวจจับได้ โดยค่าเริ่มต้น จะส่งคืนออบเจกต์ข้อมูลรูปภาพ ใช้ -ShowInBrowser เพื่อแสดงในเว็บเบราว์เซอร์

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Headless] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | จะตรงกับประเภทข้อมูลเมตาที่เป็นไปได้ทั้งหมด |
| `-Name` | String[] | — | — | 1 | `@('.\')` | อาร์เรย์ของเส้นทางไดเรกทอรีที่ต้องการค้นหารูปภาพ |
| `-Language` | String | — | — | Named | — | ภาษาสำหรับคำอธิบายและคำสำคัญ |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | ข้อความคำอธิบายที่ต้องการค้นหา โดยสามารถใช้อักขระตัวแทน (wildcards) ได้ |
| `-Keywords` | String[] | — | — | Named | `@()` | คำสำคัญที่ต้องค้นหา อนุญาตให้ใช้ไวด์การ์ดได้ |
| `-People` | String[] | — | — | Named | `@()` | ผู้คนที่ต้องการค้นหา สามารถใช้อักขระตัวแทนได้ |
| `-Objects` | String[] | — | — | Named | `@()` | วัตถุที่ต้องการค้นหา อนุญาตให้ใช้ตัวแทนได้ |
| `-Scenes` | String[] | — | — | Named | `@()` | หมวดหมู่ฉากที่ต้องการค้นหา อนุญาตให้ใช้ตัวอักษรแทนได้ |
| `-PictureType` | String[] | — | — | Named | `@()` | "ประเภทภาพที่จะกรอง (เช่น 'daylight', 'evening', 'indoor' ฯลฯ) รองรับไวลด์การ์ด" |
| `-StyleType` | String[] | — | — | Named | `@()` | ประเภทสไตล์ที่จะกรอง (เช่น 'casual', 'formal' ฯลฯ) รองรับไวด์การ์ด |
| `-OverallMood` | String[] | — | — | Named | `@()` | อารมณ์โดยรวมที่ต้องการกรอง (เช่น 'สงบ', 'ร่าเริง', 'เศร้า' ฯลฯ) รองรับการใช้ wildcard. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | กรองตามชื่อยี่ห้อกล้องในข้อมูล EXIF ของรูปภาพ รองรับอักขระตัวแทน (wildcards) |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | กรองตามรุ่นกล้องในข้อมูล EXIF ของภาพ รองรับอักขระตัวแทน |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | กรองตามช่วงละติจูด GPS ในข้อมูล EXIF ของรูปภาพ |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | กรองตามช่วงลองจิจูด GPS ในข้อมูลเมตา EXIF ของภาพ |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | กรองตามช่วงระดับความสูง GPS ในเมทาดาตา EXIF ของภาพ (หน่วยเป็นเมตร) |
| `-GeoLocation` | Double[] | — | — | Named | — | พิกัดทางภูมิศาสตร์ [ละติจูด, ลองจิจูด] เพื่อค้นหาบริเวณใกล้เคียง. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | ระยะทางสูงสุดในหน่วยเมตรจากตำแหน่งทางภูมิศาสตร์เพื่อค้นหารูปภาพ |
| `-MetaExposureTime` | Double[] | — | — | Named | — | กรองตามช่วงเวลาเปิดรับแสงในข้อมูล EXIF ของรูปภาพ (หน่วยเป็นวินาที) |
| `-MetaFNumber` | Double[] | — | — | Named | — | กรองตามช่วงค่า F-number (รูรับแสง) ในข้อมูล EXIF ของภาพ |
| `-MetaISO` | Int32[] | — | — | Named | — | กรองตามช่วงความไวแสง ISO ในข้อมูล EXIF ของภาพ |
| `-MetaFocalLength` | Double[] | — | — | Named | — | กรองตามช่วงความยาวโฟกัสในข้อมูล EXIF ของภาพ (หน่วยเป็น มม.) |
| `-MetaWidth` | Int32[] | — | — | Named | — | กรองตามช่วงความกว้างของภาพเป็นพิกเซลจากข้อมูลเมตา EXIF |
| `-MetaHeight` | Int32[] | — | — | Named | — | กรองตามช่วงความสูงของภาพในพิกเซลจากข้อมูล EXIF metadata |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | กรองตามวันที่ถ่ายจากข้อมูลเมตา EXIF สามารถเป็นช่วงวันที่ได้ |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | ชื่อสำหรับแกลเลอรี |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | คำอธิบายสำหรับแกลเลอรี |
| `-AcceptLang` | String | — | — | Named | `$null` | ตั้งค่าส่วนหัว http accept-lang ของเบราว์เซอร์ |
| `-KeysToSend` | String[] | — | — | Named | — | 'คีย์สโตรกที่จะส่งไปยังหน้าต่างเบราว์เซอร์ โปรดดูเอกสารสำหรับ cmdlet GenXdev\Send-Key' |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | หลีกเลี่ยงอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์ |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | ป้องกันการคืนโฟกัสแป้นพิมพ์กลับไปยัง PowerShell หลังจากส่งคีย์ |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | ใช้ Shift+Enter แทน Enter เมื่อส่งคีย์ |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | ความล่าช้าระหว่างสตริงอินพุตต่างๆ ในหน่วยมิลลิวินาทีเมื่อส่งคีย์ |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | การกำหนดจุดสนใจไปที่หน้าต่างเบราว์เซอร์หลังจากเปิด |
| `-SetForeground` | SwitchParameter | — | — | Named | — | ตั้งค่าหน้าต่างเบราว์เซอร์ให้อยู่เบื้องหน้าหลังจากเปิด |
| `-Maximize` | SwitchParameter | — | — | Named | — | ขยายหน้าต่างให้ใหญ่ที่สุดหลังจากจัดตำแหน่ง |
| `-SetRestored` | SwitchParameter | — | — | Named | — | คืนค่าหน้าต่างสู่สถานะปกติหลังจากจัดตำแหน่ง |
| `-Monitor` | Int32 | — | — | Named | `-2` | มอนิเตอร์ที่จะใช้ 0 = ค่าเริ่มต้น, -1 = ไม่ใช้, -2 = มอนิเตอร์รองที่กำหนดค่าไว้, ค่าเริ่มต้นคือ `Global:DefaultSecondaryMonitor หรือ 2 ถ้าไม่พบ |
| `-Width` | Int32 | — | — | Named | `-1` | ความกว้างเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-Height` | Int32 | — | — | Named | `-1` | ความสูงเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-X` | Int32 | — | — | Named | `-999999` | ตำแหน่ง X เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-Y` | Int32 | — | — | Named | `-999999` | ตำแหน่ง Y เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | ฝังรูปภาพเป็น base64 |
| `-NoFallback` | SwitchParameter | — | — | Named | — | สวิตช์เพื่อปิดการทำงานแบบสำรอง |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | สวิตช์เพื่อข้ามการเริ่มต้นฐานข้อมูลและการสร้างใหม่ |
| `-AllDrives` | SwitchParameter | — | — | Named | — | ค้นหาในไดรฟ์ที่พร้อมใช้งานทั้งหมด |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | อย่ามองหาในโฟลเดอร์ย่อย |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ติดตามลิงก์สัญลักษณ์และจุดเชื่อมต่อระหว่างการข้ามผ่านไดเรกทอรี |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ความลึกสูงสุดในการเรียกซ้ำสำหรับการสำรวจไดเรกทอรี 0 หมายถึงไม่จำกัด |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | ความลึกเรียกซ้ำสูงสุดสำหรับค้นหาต่อขึ้นไปตามลำดับชั้นสำหรับการค้นหาแบบสัมพัทธ์ ขณะที่ไม่พบรายการใดๆ 0 หมายถึงปิดการใช้งาน |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์สูงสุดในหน่วยไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่จำกัด |
| `-MinFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์ต่ำสุดเป็นไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่มีค่าต่ำสุด |
| `-ModifiedAfter` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขหลังจากวันที่/เวลา (UTC) นี้ |
| `-ModifiedBefore` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขก่อนวันที่/เวลานี้ (UTC) เท่านั้น |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | คุณสมบัติของไฟล์ที่จะข้าม (เช่น ระบบ, ซ่อนเร้น หรือ ไม่มี) |
| `-HasNudity` | SwitchParameter | — | — | Named | — | กรองภาพที่มีเนื้อหาลามกอนาจาร |
| `-NoNudity` | SwitchParameter | — | — | Named | — | กรองภาพที่ไม่มีเนื้อหาลามกอนาจาร |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | กรองรูปภาพที่มีเนื้อหาลามกอนาจาร |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | กรองรูปภาพที่ไม่มีเนื้อหาที่ไม่เหมาะสม |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | แสดงผลการค้นหาในรูปแบบแกลเลอรีรูปภาพที่ใช้เบราว์เซอร์ |
| `-PassThru` | SwitchParameter | — | — | Named | — | ส่งคืนข้อมูลรูปภาพเป็นวัตถุ เมื่อใช้กับ '-ShowInBrowser' จะแสดงแกลเลอรีและส่งคืนวัตถุด้วย |
| `-NoBorders` | SwitchParameter | — | — | Named | — | ลบขอบหน้าต่างและแถบชื่อเรื่องเพื่อให้ดูสะอาดขึ้น |
| `-SideBySide` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์และ PowerShell ไว้ข้างกันบนจอมอนิเตอร์เดียวกัน |
| `-Interactive` | SwitchParameter | — | — | Named | — | จะเชื่อมต่อกับเบราว์เซอร์และเพิ่มปุ่มเพิ่มเติม เช่น แก้ไขและลบ จะมีผลเฉพาะเมื่อใช้กับ -ShowInBrowser เท่านั้น |
| `-Private` | SwitchParameter | — | — | Named | — | เปิดในโหมดไม่ระบุตัวตน/การเรียกดูแบบส่วนตัว |
| `-Force` | SwitchParameter | — | — | Named | — | บังคับให้เปิดพอร์ตดีบั๊ก หยุดเบราว์เซอร์ที่มีอยู่หากจำเป็น |
| `-Edge` | SwitchParameter | — | — | Named | — | เปิดใน Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | เปิดใน Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | เปิดใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าบราวเซอร์เริ่มต้นคืออะไร |
| `-Firefox` | SwitchParameter | — | — | Named | — | เปิดใน Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | ใช้เบราว์เซอร์ที่จัดการโดย Playwright แทนเบราว์เซอร์ที่ติดตั้งกับระบบปฏิบัติการ |
| `-Webkit` | SwitchParameter | — | — | Named | — | เปิดเบราว์เซอร์ WebKit ที่จัดการโดย Playwright หมายถึง -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | เรียกใช้เบราว์เซอร์โดยไม่มีหน้าต่างที่มองเห็นได้ |
| `-All` | SwitchParameter | — | — | Named | — | เปิดในเบราว์เซอร์สมัยใหม่ที่ลงทะเบียนทั้งหมด |
| `-FullScreen` | SwitchParameter | — | — | Named | — | เปิดในโหมดเต็มหน้าจอ |
| `-Left` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ทางด้านซ้ายของหน้าจอ |
| `-Right` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ทางด้านขวาของหน้าจอ |
| `-Top` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านบนของหน้าจอ |
| `-Bottom` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านล่างของหน้าจอ |
| `-Centered` | SwitchParameter | — | — | Named | — | วางหน้าต่างเบราว์เซอร์ไว้ที่กึ่งกลางหน้าจอ |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | ซ่อนตัวควบคุมเบราว์เซอร์ |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | ป้องกันการโหลดส่วนขยายของเบราว์เซอร์ |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | ปิดการบล็อกป๊อปอัป |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | คืนค่าโฟกัสหน้าต่าง PowerShell |
| `-NewWindow` | SwitchParameter | — | — | Named | — | อย่าใช้หน้าต่างเบราว์เซอร์ที่มีอยู่แล้วซ้ำ ให้สร้างหน้าต่างใหม่แทน |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | ('เฉพาะส่งคืน HTML ที่สร้างขึ้นแทนที่จะแสดงในเบราว์เซอร์') |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | แสดงเฉพาะรูปภาพในกรอบสี่เหลี่ยมมน ไม่มีข้อความด้านล่าง |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา, คอลเลกชันรูปภาพ ฯลฯ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา, คอลเลกชันรูปภาพ เป็นต้น |
| `-SkipSession` | SwitchParameter | — | — | Named | — | อย่าใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการตั้งค่า AI เช่น ภาษา, คอลเลกชันรูปภาพ ฯลฯ |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | เลื่อนหน้าจออัตโนมัติตามจำนวนพิกเซลต่อวินาทีนี้ (ตั้งค่าเป็น null เพื่อปิดใช้งาน) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | เคลื่อนไหวสี่เหลี่ยมผืนผ้า (วัตถุ/ใบหน้า) ในช่วงที่มองเห็น โดยวนซ้ำทุก 300 มิลลิวินาที |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | บังคับใช้โครงร่างคอลัมน์เดียว (จัดกึ่งกลาง, กว้าง 1/3 ของหน้าจอ) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | คำนำหน้าที่จะเติมหน้าทุกเส้นทางของรูปภาพ (เช่น สำหรับ URL ระยะไกล) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | อัตราส่วนความเชื่อมั่นขั้นต่ำ (0.0-1.0) สำหรับการกรองบุคคล ฉาก และวัตถุตามความเชื่อมั่น จะส่งคืนข้อมูลสำหรับบุคคล ฉาก และวัตถุที่มีความเชื่อมั่นมากกว่าหรือเท่ากับค่านี้เท่านั้น |

## Examples

### Find-Image -Keywords "cat","dog" -Name "C:\Photos\*" Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.

```powershell
Find-Image -Keywords "cat","dog" -Name "C:\Photos\*"
Searches for images containing 'cat' OR 'dog' keywords and returns the image objects.
```

### findimages cat,dog "C:\Photos" Same as above using the alias and positional parameters.

```powershell
findimages cat,dog "C:\Photos"
Same as above using the alias and positional parameters.
```

### Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser Searches for photos containing John OR Jane and displays them in a web gallery.

```powershell
Find-Image -People "John","Jane" -Name "C:\Family\*" -ShowInBrowser
Searches for photos containing John OR Jane and displays them in a web gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*" Searches for images that contain vacation keywords AND John as a person AND beach objects. All three criteria must be met (AND logic between parameter types).

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach" -Name "C:\Photos\*"
Searches for images that contain vacation keywords AND John as a person AND beach objects.
All three criteria must be met (AND logic between parameter types).
```

### Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*" Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8. EXIF parameters use range filtering with [min, max] values.

```powershell
Find-Image -MetaISO 100,800 -MetaFNumber 1.4,2.8 -Name "C:\Photos\*"
Finds images with ISO between 100-800 AND aperture (F-number) between f/1.4-f/2.8.
EXIF parameters use range filtering with [min, max] values.
```

### Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.

```powershell
Find-Image -Objects "car","bicycle" -Name "C:\Photos\*" -ShowInBrowser -PassThru
Searches for images containing detected cars or bicycles, displays them in a gallery, and also returns the objects.
```

### findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.

```powershell
findimages -Language "Spanish" -Keywords "playa","sol" -Name "C:\Vacations\*" -ShowInBrowser
Searches for images with Spanish metadata containing the keywords "playa" (beach) or "sol" (sun) and displays in gallery.
```

### Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*" Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.

```powershell
Find-Image -Keywords "vacation" -People "John" -Objects "beach*" -Name "C:\Photos\*"
Searches for vacation photos with John in them that also contain beach-related objects and returns the data objects.
```

### Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.

```powershell
Find-Image -Scenes "beach","forest","mountain*" -Name "C:\Nature\*" -ShowInBrowser
Searches for images classified as beach, forest, or mountain scenes and displays them in a gallery.
```

### Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.

```powershell
Find-Image -NoNudity -NoExplicitContent -Name "C:\Family\*" -ShowInBrowser
Searches for family-safe images (no nudity or explicit content) and displays them in a gallery.
```

### Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*" Searches for daylight photos with a calm/peaceful mood and returns the image objects.

```powershell
Find-Image -PictureType "daylight" -OverallMood "calm" -Name "C:\Photos\*"
Searches for daylight photos with a calm/peaceful mood and returns the image objects.
```

### findimages -StyleType "casual" -HasNudity -Name "C:\Art\*" Searches for casual style images that contain nudity and returns the data objects.

```powershell
findimages -StyleType "casual" -HasNudity -Name "C:\Art\*"
Searches for casual style images that contain nudity and returns the data objects.
```

### Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*" Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.

```powershell
Find-Image -Scenes "beach" -MinConfidenceRatio 0.75 -Name "C:\Photos\*"
Searches for beach scenes with confidence level of 75% or higher and filters people, scenes, and objects data by confidence.
```

## Parameter Details

### `-Any <String[]>`

> จะตรงกับประเภทข้อมูลเมตาที่เป็นไปได้ทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> อาร์เรย์ของเส้นทางไดเรกทอรีที่ต้องการค้นหารูปภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory`, `ImageDirectories` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ภาษาสำหรับคำอธิบายและคำสำคัญ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> ข้อความคำอธิบายที่ต้องการค้นหา โดยสามารถใช้อักขระตัวแทน (wildcards) ได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> คำสำคัญที่ต้องค้นหา อนุญาตให้ใช้ไวด์การ์ดได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> ผู้คนที่ต้องการค้นหา สามารถใช้อักขระตัวแทนได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> วัตถุที่ต้องการค้นหา อนุญาตให้ใช้ตัวแทนได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> หมวดหมู่ฉากที่ต้องการค้นหา อนุญาตให้ใช้ตัวอักษรแทนได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> "ประเภทภาพที่จะกรอง (เช่น 'daylight', 'evening', 'indoor' ฯลฯ) รองรับไวลด์การ์ด"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> ประเภทสไตล์ที่จะกรอง (เช่น 'casual', 'formal' ฯลฯ) รองรับไวด์การ์ด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> อารมณ์โดยรวมที่ต้องการกรอง (เช่น 'สงบ', 'ร่าเริง', 'เศร้า' ฯลฯ) รองรับการใช้ wildcard.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraMake <String[]>`

> กรองตามชื่อยี่ห้อกล้องในข้อมูล EXIF ของรูปภาพ รองรับอักขระตัวแทน (wildcards)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaCameraModel <String[]>`

> กรองตามรุ่นกล้องในข้อมูล EXIF ของภาพ รองรับอักขระตัวแทน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLatitude <Double[]>`

> กรองตามช่วงละติจูด GPS ในข้อมูล EXIF ของรูปภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSLongitude <Double[]>`

> กรองตามช่วงลองจิจูด GPS ในข้อมูลเมตา EXIF ของภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaGPSAltitude <Double[]>`

> กรองตามช่วงระดับความสูง GPS ในเมทาดาตา EXIF ของภาพ (หน่วยเป็นเมตร)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> พิกัดทางภูมิศาสตร์ [ละติจูด, ลองจิจูด] เพื่อค้นหาบริเวณใกล้เคียง.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> ระยะทางสูงสุดในหน่วยเมตรจากตำแหน่งทางภูมิศาสตร์เพื่อค้นหารูปภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaExposureTime <Double[]>`

> กรองตามช่วงเวลาเปิดรับแสงในข้อมูล EXIF ของรูปภาพ (หน่วยเป็นวินาที)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFNumber <Double[]>`

> กรองตามช่วงค่า F-number (รูรับแสง) ในข้อมูล EXIF ของภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaISO <Int32[]>`

> กรองตามช่วงความไวแสง ISO ในข้อมูล EXIF ของภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaFocalLength <Double[]>`

> กรองตามช่วงความยาวโฟกัสในข้อมูล EXIF ของภาพ (หน่วยเป็น มม.)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaWidth <Int32[]>`

> กรองตามช่วงความกว้างของภาพเป็นพิกเซลจากข้อมูลเมตา EXIF

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaHeight <Int32[]>`

> กรองตามช่วงความสูงของภาพในพิกเซลจากข้อมูล EXIF metadata

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MetaDateTaken <DateTime[]>`

> กรองตามวันที่ถ่ายจากข้อมูลเมตา EXIF สามารถเป็นช่วงวันที่ได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> ชื่อสำหรับแกลเลอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> คำอธิบายสำหรับแกลเลอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `('Hover over images to see face recognition ' +
            'and object detection data')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AcceptLang <String>`

> ตั้งค่าส่วนหัว http accept-lang ของเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | `lang`, `locale` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> 'คีย์สโตรกที่จะส่งไปยังหน้าต่างเบราว์เซอร์ โปรดดูเอกสารสำหรับ cmdlet GenXdev\Send-Key'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> หลีกเลี่ยงอักขระควบคุมและตัวปรับแต่งเมื่อส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> ป้องกันการคืนโฟกัสแป้นพิมพ์กลับไปยัง PowerShell หลังจากส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> ใช้ Shift+Enter แทน Enter เมื่อส่งคีย์

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

> ความล่าช้าระหว่างสตริงอินพุตต่างๆ ในหน่วยมิลลิวินาทีเมื่อส่งคีย์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> การกำหนดจุดสนใจไปที่หน้าต่างเบราว์เซอร์หลังจากเปิด

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

> ตั้งค่าหน้าต่างเบราว์เซอร์ให้อยู่เบื้องหน้าหลังจากเปิด

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

> ขยายหน้าต่างให้ใหญ่ที่สุดหลังจากจัดตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetRestored`

> คืนค่าหน้าต่างสู่สถานะปกติหลังจากจัดตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Monitor <Int32>`

> มอนิเตอร์ที่จะใช้ 0 = ค่าเริ่มต้น, -1 = ไม่ใช้, -2 = มอนิเตอร์รองที่กำหนดค่าไว้, ค่าเริ่มต้นคือ `Global:DefaultSecondaryMonitor หรือ 2 ถ้าไม่พบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-2` |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> ความกว้างเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> ความสูงเริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-X <Int32>`

> ตำแหน่ง X เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Y <Int32>`

> ตำแหน่ง Y เริ่มต้นของหน้าต่างเว็บเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> ฝังรูปภาพเป็น base64

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoFallback`

> สวิตช์เพื่อปิดการทำงานแบบสำรอง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NeverRebuild`

> สวิตช์เพื่อข้ามการเริ่มต้นฐานข้อมูลและการสร้างใหม่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

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
### `-HasNudity`

> กรองภาพที่มีเนื้อหาลามกอนาจาร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> กรองภาพที่ไม่มีเนื้อหาลามกอนาจาร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> กรองรูปภาพที่มีเนื้อหาลามกอนาจาร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> กรองรูปภาพที่ไม่มีเนื้อหาที่ไม่เหมาะสม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowInBrowser`

> แสดงผลการค้นหาในรูปแบบแกลเลอรีรูปภาพที่ใช้เบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `show`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> ส่งคืนข้อมูลรูปภาพเป็นวัตถุ เมื่อใช้กับ '-ShowInBrowser' จะแสดงแกลเลอรีและส่งคืนวัตถุด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> ลบขอบหน้าต่างและแถบชื่อเรื่องเพื่อให้ดูสะอาดขึ้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> วางหน้าต่างเบราว์เซอร์และ PowerShell ไว้ข้างกันบนจอมอนิเตอร์เดียวกัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Interactive`

> จะเชื่อมต่อกับเบราว์เซอร์และเพิ่มปุ่มเพิ่มเติม เช่น แก้ไขและลบ จะมีผลเฉพาะเมื่อใช้กับ -ShowInBrowser เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `i`, `editimages` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Private`

> เปิดในโหมดไม่ระบุตัวตน/การเรียกดูแบบส่วนตัว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `incognito`, `inprivate` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> บังคับให้เปิดพอร์ตดีบั๊ก หยุดเบราว์เซอร์ที่มีอยู่หากจำเป็น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> เปิดใน Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> เปิดใน Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> เปิดใน Microsoft Edge หรือ Google Chrome ขึ้นอยู่กับว่าบราวเซอร์เริ่มต้นคืออะไร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> เปิดใน Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PlayWright`

> ใช้เบราว์เซอร์ที่จัดการโดย Playwright แทนเบราว์เซอร์ที่ติดตั้งกับระบบปฏิบัติการ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pw` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> เปิดเบราว์เซอร์ WebKit ที่จัดการโดย Playwright หมายถึง -PlayWright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Headless`

> เรียกใช้เบราว์เซอร์โดยไม่มีหน้าต่างที่มองเห็นได้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `hl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-All`

> เปิดในเบราว์เซอร์สมัยใหม่ที่ลงทะเบียนทั้งหมด

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

> เปิดในโหมดเต็มหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs`, `f` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> วางหน้าต่างเบราว์เซอร์ไว้ทางด้านซ้ายของหน้าจอ

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

> วางหน้าต่างเบราว์เซอร์ไว้ทางด้านขวาของหน้าจอ

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

> วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านบนของหน้าจอ

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

> วางหน้าต่างเบราว์เซอร์ไว้ที่ด้านล่างของหน้าจอ

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

> วางหน้าต่างเบราว์เซอร์ไว้ที่กึ่งกลางหน้าจอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApplicationMode`

> ซ่อนตัวควบคุมเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `a`, `app`, `appmode` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBrowserExtensions`

> ป้องกันการโหลดส่วนขยายของเบราว์เซอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `de`, `ne`, `NoExtensions` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DisablePopupBlocker`

> ปิดการบล็อกป๊อปอัป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `allowpopups` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> คืนค่าโฟกัสหน้าต่าง PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewWindow`

> อย่าใช้หน้าต่างเบราว์เซอร์ที่มีอยู่แล้วซ้ำ ให้สร้างหน้าต่างใหม่แทน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nw`, `new` |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyReturnHtml`

> ('เฉพาะส่งคืน HTML ที่สร้างขึ้นแทนที่จะแสดงในเบราว์เซอร์')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> แสดงเฉพาะรูปภาพในกรอบสี่เหลี่ยมมน ไม่มีข้อความด้านล่าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ใช้การตั้งค่าสำรองที่เก็บในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา, คอลเลกชันรูปภาพ ฯลฯ

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

> ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดค่า AI เช่น ภาษา, คอลเลกชันรูปภาพ เป็นต้น

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

> อย่าใช้การตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการตั้งค่า AI เช่น ภาษา, คอลเลกชันรูปภาพ ฯลฯ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> เลื่อนหน้าจออัตโนมัติตามจำนวนพิกเซลต่อวินาทีนี้ (ตั้งค่าเป็น null เพื่อปิดใช้งาน)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> เคลื่อนไหวสี่เหลี่ยมผืนผ้า (วัตถุ/ใบหน้า) ในช่วงที่มองเห็น โดยวนซ้ำทุก 300 มิลลิวินาที

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> บังคับใช้โครงร่างคอลัมน์เดียว (จัดกึ่งกลาง, กว้าง 1/3 ของหน้าจอ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> คำนำหน้าที่จะเติมหน้าทุกเส้นทางของรูปภาพ (เช่น สำหรับ URL ระยะไกล)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinConfidenceRatio <Double>`

> อัตราส่วนความเชื่อมั่นขั้นต่ำ (0.0-1.0) สำหรับการกรองบุคคล ฉาก และวัตถุตามความเชื่อมั่น จะส่งคืนข้อมูลสำหรับบุคคล ฉาก และวัตถุที่มีความเชื่อมั่นมากกว่าหรือเท่ากับค่านี้เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-DiplomaticSpeak.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-AllImageMetaData.md)
