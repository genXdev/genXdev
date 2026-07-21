# Set-FoundLocation

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `lcd`

## Synopsis

> ค้นหาไฟล์หรือโฟลเดอร์ที่ตรงกันเป็นอันดับแรกและกำหนดตำแหน่งไปยังไฟล์หรือโฟลเดอร์นั้น

## Description

cmdlet นี้จะช่วยให้คุณเปลี่ยนไดเรกทอรีได้อย่างรวดเร็วโดยใช้คำค้นหา ที่จะค้นหาโฟลเดอร์หรือไฟล์ (ไม่บังคับ) ที่ตรงกันรายการแรก และเปลี่ยนไดเรกทอรีไปที่นั้น รองรับการกรองขั้นสูงตามเนื้อหา คุณลักษณะของไฟล์ ขนาด วันที่แก้ไข และเกณฑ์อื่นๆ อีกมากมาย

## Syntax

```powershell
Set-FoundLocation -Name <String> [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DirectoriesAndFiles] [-DriveLetter <Char[]>] [-ExactMatch] [-Exclude <String[]>] [-File] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoRecurse] [-Push] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Set-FoundLocation -InputObject <Object> [<CommonParameters>]

Set-FoundLocation [[-Content] <String[]>] [-CaseSensitive] [-Culture <String>] [-Encoding <String>] [-NotMatch] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | ชื่อไฟล์หรือรูปแบบสำหรับค้นหา 🌐 *Supports wildcards* |
| `-InputObject` | Object | ✅ | ✅ (ByValue, ByPropertyName) | Named | — | ชื่อไฟล์หรือรูปแบบที่จะค้นหาจากอินพุตไปป์ไลน์ ค่าเริ่มต้นคือ '*' *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | `@(".*")` | รูปแบบนิพจน์ปกติสำหรับค้นหาในเนื้อหาไฟล์ *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Category` | String[] | — | — | Named | — | ส่งออกเฉพาะไฟล์ที่อยู่ในหมวดหมู่ที่เลือก |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ระดับความขนานสูงสุดสำหรับงานไดเรกทอรี |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | ตัวเลือก: ระยะหมดเวลาการยกเลิกเป็นวินาที |
| `-AllDrives` | SwitchParameter | — | — | Named | — | ค้นหาในไดรฟ์ที่พร้อมใช้งานทั้งหมด |
| `-File` | SwitchParameter | — | — | Named | — | ค้นหาเฉพาะชื่อไฟล์และเปลี่ยนไปยังโฟลเดอร์ของไฟล์แรกที่พบ |
| `-DirectoriesAndFiles` | SwitchParameter | — | — | Named | — | รวมการจับคู่ชื่อไฟล์และเปลี่ยนไปยังโฟลเดอร์ของไฟล์แรกที่พบ |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | รวมสตรีมข้อมูลทางเลือกในผลการค้นหา |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | อย่ามองหาในโฟลเดอร์ย่อย |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ติดตาม symlinks และ junctions ระหว่างการสำรวจไดเรกทอรี |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | รวมถึงไดรฟ์ออปติคัลดิสก์ |
| `-SearchDrives` | String[] | — | — | Named | `@()` | ตัวเลือก: ค้นหาไดรฟ์เฉพาะ |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | ตัวเลือก: ค้นหาไดรฟ์เฉพาะ |
| `-Root` | String[] | — | — | Named | `@()` | ไม่บังคับ: ค้นหาโฟลเดอร์ฐานเฉพาะที่รวมกับชื่อที่ระบุ |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | รวมไฟล์ที่ไม่ใช่ข้อความ (ไบนารี รูปภาพ ฯลฯ) เมื่อค้นหาเนื้อหาไฟล์ |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `(
            [System.IO.MatchCasing]::PlatformDefault)` | กำหนดหรือรับค่าความไวต่อตัวพิมพ์เล็กใหญ่สำหรับไฟล์และไดเรกทอรี |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | เมื่อตั้งค่า จะทำการค้นหาเนื้อหาภายในข้อมูลสตรีมสำรอง (ADS) เมื่อไม่ได้ตั้งค่า จะแสดงข้อมูลไฟล์ ADS โดยไม่ค้นหาเนื้อหา |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ความลึกสูงสุดในการเรียกซ้ำสำหรับการสำรวจไดเรกทอรี 0 หมายถึงไม่จำกัด |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์สูงสุดในหน่วยไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่จำกัด |
| `-MinFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์ต่ำสุดเป็นไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่มีค่าต่ำสุด |
| `-ModifiedAfter` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขหลังจากวันที่/เวลา (UTC) นี้ |
| `-ModifiedBefore` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขก่อนวันที่/เวลานี้ (UTC) เท่านั้น |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `(
            [System.IO.FileAttributes]::System)` | คุณสมบัติของไฟล์ที่จะข้าม (เช่น ระบบ, ซ่อนเร้น หรือ ไม่มี) |
| `-Exclude` | String[] | — | — | Named | `@("*\\.git\\*")` | แยกไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้ (เช่น *.tmp, *\bin\*) |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | ระบุว่าการจับคู่ cmdlet เป็นแบบคำนึงถึงตัวพิมพ์เล็กใหญ่ โดยค่าเริ่มต้น การจับคู่จะไม่คำนึงถึงตัวพิมพ์เล็กใหญ่ *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | ระบุชื่อวัฒนธรรมเพื่อให้ตรงกับรูปแบบที่ระบุ พารามิเตอร์ Culture ต้องใช้ร่วมกับพารามิเตอร์ SimpleMatch ลักษณะการทำงานเริ่มต้นจะใช้วัฒนธรรมของ runspace PowerShell ปัจจุบัน (เซสชัน) *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `"UTF8NoBOM"` | ระบุประเภทการเข้ารหัสสำหรับไฟล์เป้าหมาย ค่าเริ่มต้นคือ utf8NoBOM *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | พารามิเตอร์ NotMatch จะค้นหาข้อความที่ไม่ตรงกับรูปแบบที่ระบุ *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | บ่งชี้ว่า cmdlet ใช้การจับคู่แบบง่ายแทนการจับคู่นิพจน์ปกติ ในการจับคู่แบบง่าย Select-String จะค้นหาข้อความที่ตรงกับค่าพารามิเตอร์ Pattern ในอินพุต โดยไม่ตีความค่าของพารามิเตอร์ Pattern เป็นนิพจน์ปกติ *(Parameter set: )* |
| `-Push` | SwitchParameter | — | — | Named | — | ใช้ Push-Location แทน Set-Location และผลักตำแหน่งไปยังสแต็กตำแหน่ง |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | เมื่อตั้งค่า จะพิจารณาเฉพาะชื่อที่ตรงกันเท่านั้น โดยค่าเริ่มต้น จะใช้การจับคู่แบบไวลด์การ์ด เว้นแต่ชื่อจะมีอักขระไวลด์การ์ด |

## Examples

### Set-FoundLocation *.Console

```powershell
Set-FoundLocation *.Console
```

การเปลี่ยนแปลงในไดเรกทอรีแรกที่ตรงกับรูปแบบ '*.Console'

### lcd *.Console

```powershell
lcd *.Console
```

เปลี่ยนไปยังไดเรกทอรีแรกที่ตรงกับรูปแบบ '*.Console' โดยใช้นามแฝง

### Set-FoundLocation -Name "*.ps1" -Content "function"

```powershell
Set-FoundLocation -Name "*.ps1" -Content "function"
```

เปลี่ยนไปยังไดเรกทอรีที่มีไฟล์ PowerShell ไฟล์แรกซึ่งมีคำว่า 'function'

### Set-FoundLocation *test* -File

```powershell
Set-FoundLocation *test* -File
```

การเปลี่ยนไปยังไดเรกทอรีที่มีไฟล์แรกที่มี 'test' ในชื่อของมัน

### Set-FoundLocation * '1\.\d+\.2025'

```powershell
Set-FoundLocation * '1\.\d+\.2025'
```

เปลี่ยนไปยังไดเร็กทอรีที่มีไฟล์แรกซึ่งเนื้อหาตรงกับรูปแบบ '1.\d+.2025'

## Parameter Details

### `-Name <String>`

> ชื่อไฟล์หรือรูปแบบสำหรับค้นหา

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-InputObject <Object>`

> ชื่อไฟล์หรือรูปแบบที่จะค้นหาจากอินพุตไปป์ไลน์ ค่าเริ่มต้นคือ '*'

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | InputObject |

<hr/>
### `-Content <String[]>`

> รูปแบบนิพจน์ปกติสำหรับค้นหาในเนื้อหาไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@(".*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-Category <String[]>`

> ส่งออกเฉพาะไฟล์ที่อยู่ในหมวดหมู่ที่เลือก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filetype` |
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
### `-File`

> ค้นหาเฉพาะชื่อไฟล์และเปลี่ยนไปยังโฟลเดอร์ของไฟล์แรกที่พบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `filename` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoriesAndFiles`

> รวมการจับคู่ชื่อไฟล์และเปลี่ยนไปยังโฟลเดอร์ของไฟล์แรกที่พบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `FilesAndDirectories` |
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
### `-NoRecurse`

> อย่ามองหาในโฟลเดอร์ย่อย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FollowSymlinkAndJunctions`

> ติดตาม symlinks และ junctions ระหว่างการสำรวจไดเรกทอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `symlinks`, `sl` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeOpticalDiskDrives`

> รวมถึงไดรฟ์ออปติคัลดิสก์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchDrives <String[]>`

> ตัวเลือก: ค้นหาไดรฟ์เฉพาะ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `drives` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DriveLetter <Char[]>`

> ตัวเลือก: ค้นหาไดรฟ์เฉพาะ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Root <String[]>`

> ไม่บังคับ: ค้นหาโฟลเดอร์ฐานเฉพาะที่รวมกับชื่อที่ระบุ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> รวมไฟล์ที่ไม่ใช่ข้อความ (ไบนารี รูปภาพ ฯลฯ) เมื่อค้นหาเนื้อหาไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseNameMatching <IO.MatchCasing>`

> กำหนดหรือรับค่าความไวต่อตัวพิมพ์เล็กใหญ่สำหรับไฟล์และไดเรกทอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `(
            [System.IO.MatchCasing]::PlatformDefault)` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> เมื่อตั้งค่า จะทำการค้นหาเนื้อหาภายในข้อมูลสตรีมสำรอง (ADS) เมื่อไม่ได้ตั้งค่า จะแสดงข้อมูลไฟล์ ADS โดยไม่ค้นหาเนื้อหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sads` |
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
| **Default value** | `(
            [System.IO.FileAttributes]::System)` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> แยกไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้ (เช่น *.tmp, *\bin\*)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@("*\\.git\\*")` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseSensitive`

> ระบุว่าการจับคู่ cmdlet เป็นแบบคำนึงถึงตัวพิมพ์เล็กใหญ่ โดยค่าเริ่มต้น การจับคู่จะไม่คำนึงถึงตัวพิมพ์เล็กใหญ่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Culture <String>`

> ระบุชื่อวัฒนธรรมเพื่อให้ตรงกับรูปแบบที่ระบุ พารามิเตอร์ Culture ต้องใช้ร่วมกับพารามิเตอร์ SimpleMatch ลักษณะการทำงานเริ่มต้นจะใช้วัฒนธรรมของ runspace PowerShell ปัจจุบัน (เซสชัน)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Encoding <String>`

> ระบุประเภทการเข้ารหัสสำหรับไฟล์เป้าหมาย ค่าเริ่มต้นคือ utf8NoBOM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"UTF8NoBOM"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NotMatch`

> พารามิเตอร์ NotMatch จะค้นหาข้อความที่ไม่ตรงกับรูปแบบที่ระบุ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-SimpleMatch`

> บ่งชี้ว่า cmdlet ใช้การจับคู่แบบง่ายแทนการจับคู่นิพจน์ปกติ ในการจับคู่แบบง่าย Select-String จะค้นหาข้อความที่ตรงกับค่าพารามิเตอร์ Pattern ในอินพุต โดยไม่ตีความค่าของพารามิเตอร์ Pattern เป็นนิพจน์ปกติ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Push`

> ใช้ Push-Location แทน Set-Location และผลักตำแหน่งไปยังสแต็กตำแหน่ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> เมื่อตั้งค่า จะพิจารณาเฉพาะชื่อที่ตรงกันเท่านั้น โดยค่าเริ่มต้น จะใช้การจับคู่แบบไวลด์การ์ด เว้นแต่ชื่อจะมีอักขระไวลด์การ์ด

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Rename-InProject.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-TextFileAtomic.md)
