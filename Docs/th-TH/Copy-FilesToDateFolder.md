# Copy-FilesToDateFolder

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> คัดลอกไฟล์ที่ตรงกับเงื่อนไขการค้นหาไปยังโฟลเดอร์ย่อยที่แบ่งตามวันที่

## Description

ค้นหาไฟล์โดยใช้พารามิเตอร์ชุดเดียวกับ `Find-Item` และคัดลอกไฟล์ที่ตรงกันแต่ละไฟล์ไปยังโฟลเดอร์ย่อยของ `TargetFolder` ตามวันที่สร้างหรือวันที่ถ่ายสื่อของไฟล์ cmdlet รองรับการจับคู่เนื้อหา การค้นหาทั่วทั้งไดรฟ์ และตัวกรองมากมาย

พยายามหลายวิธีเพื่อระบุวันที่สร้างหรือวันที่ถ่ายที่ถูกต้องสำหรับไฟล์ที่ระบุ วิธีการต่างๆ รวมถึงการอ่านข้อมูลเมตา EXIF ของรูปภาพ การแยกข้อมูลวันที่/เวลาจากชื่อไฟล์ และการย้อนกลับไปใช้เวลาที่เขียนล่าสุดของไฟล์เมื่อไม่มีข้อมูลที่เชื่อถือได้อื่นๆ

## Syntax

```powershell
Copy-FilesToDateFolder -TargetFolder <String> [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-DeleteEmptyDirs] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TargetFolderNameDateSyntax <String>] [-TimeoutSeconds <Int32>] [<CommonParameters>]

Copy-FilesToDateFolder [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TargetFolder` | String | ✅ | — | 0 | — | โฟลเดอร์รากเป้าหมายที่ไฟล์ที่ตรงกันจะถูกคัดลอกไปยังโฟลเดอร์ย่อยตามวันที่ |
| `-Name` | String[] | — | — | 1 | `@('*')` | ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | ชื่อไฟล์หรือรูปแบบที่จะค้นหาจากอินพุตไปป์ไลน์ ค่าเริ่มต้นคือ '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 2 | `@('.*')` | รูปแบบนิพจน์ทั่วไปสำหรับการค้นหาภายในเนื้อหา *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 3 | `'.\'` | เส้นทางฐานสำหรับแก้ไขเส้นทางสัมพัทธ์ในเอาต์พุต |
| `-Category` | String[] | — | — | Named | — | ส่งออกเฉพาะไฟล์ที่อยู่ในหมวดหมู่ที่เลือก |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ระดับความขนานสูงสุดสำหรับงานไดเรกทอรี |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | ตัวเลือก: ระยะหมดเวลาการยกเลิกเป็นวินาที |
| `-AllDrives` | SwitchParameter | — | — | Named | — | ค้นหาในไดรฟ์ที่พร้อมใช้งานทั้งหมด |
| `-Directory` | SwitchParameter | — | — | Named | — | ค้นหาเฉพาะไดเรกทอรีเท่านั้น |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | รวมทั้งไฟล์และไดเรกทอรี |
| `-PassThru` | SwitchParameter | — | — | Named | — | ส่งออกออบเจ็กต์ที่ตรงกันเป็นออบเจ็กต์ |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | รวมสตรีมข้อมูลทางเลือกในผลการค้นหา |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | อย่ามองหาในโฟลเดอร์ย่อย |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | ติดตาม symlinks และ junctions ระหว่างการสำรวจไดเรกทอรี |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | — | รวมถึงไดรฟ์ออปติคัลดิสก์ |
| `-SearchDrives` | String[] | — | — | Named | `@()` | ตัวเลือก: ค้นหาไดรฟ์เฉพาะ |
| `-DriveLetter` | Char[] | — | — | Named | `@()` | ตัวเลือก: ค้นหาไดรฟ์เฉพาะ |
| `-Root` | String[] | — | — | Named | `@()` | ตัวเลือก: ค้นหาไดเรกทอรีเฉพาะ |
| `-LimitToRoot` | SwitchParameter | — | — | Named | — | บังคับให้ค้นหาเฉพาะในไดเรกทอรีรากโดยการลบส่วนประกอบไดเรกทอรีออกจากอินพุตชื่อ |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | — | รวมไฟล์ที่ไม่ใช่ข้อความเมื่อค้นหาเนื้อหาไฟล์ |
| `-NoLinks` | SwitchParameter | — | — | Named | — | บังคับใช้โหมดไร้คนและจะไม่สร้างลิงก์ |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `[System.IO.MatchCasing]::PlatformDefault` | กำหนดหรือรับค่าความไวต่อตัวพิมพ์เล็กใหญ่สำหรับไฟล์และไดเรกทอรี |
| `-SearchADSContent` | SwitchParameter | — | — | Named | — | เมื่อตั้งค่าแล้ว จะทำการค้นหาเนื้อหาภายในสตรีมข้อมูลสำรอง (ADS) |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ความลึกสูงสุดในการเรียกซ้ำสำหรับการสำรวจไดเรกทอรี 0 หมายถึงไม่จำกัด |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | ความลึกซึ้งสูงสุดของการเรียกซ้ำสำหรับการค้นหาต่อเนื่องขึ้นไปในต้นไม้ 0 หมายถึงปิดใช้งาน |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์สูงสุดในหน่วยไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่จำกัด |
| `-MinFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์ต่ำสุดเป็นไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่มีค่าต่ำสุด |
| `-ModifiedAfter` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่แก้ไขหลังจากวัน/เวลานี้ (UTC) |
| `-ModifiedBefore` | DateTime | — | — | Named | — | รวมเฉพาะไฟล์ที่แก้ไขก่อนวันที่/เวลานี้ (UTC) |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | แอตทริบิวต์ของไฟล์ที่จะข้าม (เช่น System, Hidden หรือ None) |
| `-Exclude` | String[] | — | — | Named | `@('*\.git\*')` | แยกไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้ |
| `-AllMatches` | SwitchParameter | — | — | Named | — | ค้นหาคำที่ตรงกันมากกว่าหนึ่งคำในแต่ละบรรทัดของข้อความ *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | การจับคู่ต้องตรงตามตัวพิมพ์ใหญ่และตัวพิมพ์เล็ก *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | จับบรรทัดบริบทที่อยู่รอบๆ การจับคู่ *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | ชื่อวัฒนธรรมที่ใช้สำหรับการจับคู่รูปแบบ *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | `'UTF8NoBOM'` | ระบุการเข้ารหัสสำหรับไฟล์เป้าหมาย *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | — | เฉพาะรายการแรกที่ตรงกันต่อไฟล์เท่านั้นที่ถูกส่งคืน *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | — | ปิดการเน้นข้อความที่ตรงกันในผลลัพธ์ *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | — | พารามิเตอร์ NotMatch จะค้นหาข้อความที่ไม่ตรงกับรูปแบบ *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | — | แสดงเฉพาะสตริงที่ตรงกันแทนที่จะเป็นออบเจ็กต์ MatchInfo *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | — | ใช้การจับคู่สตริงแบบง่ายแทน regex *(Parameter set: )* |
| `-DeleteEmptyDirs` | SwitchParameter | — | — | Named | — | ลบไดเรกทอรีต้นทางที่ว่างเปล่าหลังจากย้ายไฟล์ |
| `-TargetFolderNameDateSyntax` | String | — | — | Named | `'Year + Month'` | รูปแบบชื่อโฟลเดอร์เป้าหมายที่เป็นวันที่ |

## Examples

### Copy all pictures and videos to the corresponsing Android Onedrive App Image backup folders     Copy-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `                            -SourceFolder ~\Pictures\*, ~\desktop\* `                            -Category 'Pictures', 'Videos'

```powershell
Copy all pictures and videos to the corresponsing Android Onedrive App Image backup folders
    Copy-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `
                           -SourceFolder ~\Pictures\*, ~\desktop\* `
                           -Category 'Pictures', 'Videos'
```

### Copy all jpg files from the current directory into date folders under `D:\Archive` (dry run):

```powershell
Copy all jpg files from the current directory into date folders under
`D:\Archive` (dry run):
```

@{response=Copy-FilesToDateFolder -TargetFolder 'D:\Archive' -Name '*.jpg' -WhatIf}

### Copy all files across drives matching `*.mp4` into monthly folders

```powershell
Copy all files across drives matching `*.mp4` into monthly folders
```

## Parameter Details

### `-TargetFolder <String>`

> โฟลเดอร์รากเป้าหมายที่ไฟล์ที่ตรงกันจะถูกคัดลอกไปยังโฟลเดอร์ย่อยตามวันที่

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Name <String[]>`

> ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `SourceFolder` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> ชื่อไฟล์หรือรูปแบบที่จะค้นหาจากอินพุตไปป์ไลน์ ค่าเริ่มต้นคือ '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Content <String[]>`

> รูปแบบนิพจน์ทั่วไปสำหรับการค้นหาภายในเนื้อหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@('.*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `mc`, `matchcontent`, `regex`, `Pattern` |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | WithPattern |

<hr/>
### `-RelativeBasePath <String>`

> เส้นทางฐานสำหรับแก้ไขเส้นทางสัมพัทธ์ในเอาต์พุต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

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
### `-Directory`

> ค้นหาเฉพาะไดเรกทอรีเท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dir` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesAndDirectories`

> รวมทั้งไฟล์และไดเรกทอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `both`, `DirectoriesAndFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> ส่งออกออบเจ็กต์ที่ตรงกันเป็นออบเจ็กต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
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

> ตัวเลือก: ค้นหาไดเรกทอรีเฉพาะ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LimitToRoot`

> บังคับให้ค้นหาเฉพาะในไดเรกทอรีรากโดยการลบส่วนประกอบไดเรกทอรีออกจากอินพุตชื่อ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `limit` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeNonTextFileMatching`

> รวมไฟล์ที่ไม่ใช่ข้อความเมื่อค้นหาเนื้อหาไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `binary` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLinks`

> บังคับใช้โหมดไร้คนและจะไม่สร้างลิงก์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nl`, `ForceUnattenedMode` |
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
### `-SearchADSContent`

> เมื่อตั้งค่าแล้ว จะทำการค้นหาเนื้อหาภายในสตรีมข้อมูลสำรอง (ADS)

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
### `-MaxSearchUpDepth <Int32>`

> ความลึกซึ้งสูงสุดของการเรียกซ้ำสำหรับการค้นหาต่อเนื่องขึ้นไปในต้นไม้ 0 หมายถึงปิดใช้งาน

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

> รวมเฉพาะไฟล์ที่แก้ไขหลังจากวัน/เวลานี้ (UTC)

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

> รวมเฉพาะไฟล์ที่แก้ไขก่อนวันที่/เวลานี้ (UTC)

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

> แอตทริบิวต์ของไฟล์ที่จะข้าม (เช่น System, Hidden หรือ None)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `[System.IO.FileAttributes]::System` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> แยกไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('*\.git\*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> ค้นหาคำที่ตรงกันมากกว่าหนึ่งคำในแต่ละบรรทัดของข้อความ

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
### `-CaseSensitive`

> การจับคู่ต้องตรงตามตัวพิมพ์ใหญ่และตัวพิมพ์เล็ก

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
### `-Context <Int32[]>`

> จับบรรทัดบริบทที่อยู่รอบๆ การจับคู่

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

> ชื่อวัฒนธรรมที่ใช้สำหรับการจับคู่รูปแบบ

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

> ระบุการเข้ารหัสสำหรับไฟล์เป้าหมาย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'UTF8NoBOM'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-List`

> เฉพาะรายการแรกที่ตรงกันต่อไฟล์เท่านั้นที่ถูกส่งคืน

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
### `-NoEmphasis`

> ปิดการเน้นข้อความที่ตรงกันในผลลัพธ์

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
### `-NotMatch`

> พารามิเตอร์ NotMatch จะค้นหาข้อความที่ไม่ตรงกับรูปแบบ

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
### `-Raw`

> แสดงเฉพาะสตริงที่ตรงกันแทนที่จะเป็นออบเจ็กต์ MatchInfo

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

> ใช้การจับคู่สตริงแบบง่ายแทน regex

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
### `-DeleteEmptyDirs`

> ลบไดเรกทอรีต้นทางที่ว่างเปล่าหลังจากย้ายไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TargetFolderNameDateSyntax <String>`

> รูปแบบชื่อโฟลเดอร์เป้าหมายที่เป็นวันที่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Year + Month'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-TextFileAtomic.md)
