# Find-Item

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `l`

## Synopsis

> ค้นหาไฟล์และไดเรกทอรีด้วยตัวเลือกการกรองขั้นสูง

## Description

```text
* ค้นหาไฟล์ด้วย Find-Item -> l
        * การค้นหาแบบมัลติเธรดที่รวดเร็ว: ใช้การประมวลผล I/O แบบขนานและแบบอะซิงโครนัสพร้อมระดับความขนานสูงสุดที่ปรับได้ (ค่าเริ่มต้นขึ้นอยู่กับจำนวนแกน CPU) สำหรับการสแกนไฟล์และไดเรกทอรีที่มีประสิทธิภาพ
        * การจับคู่รูปแบบขั้นสูง: รองรับไวด์การ์ด (*, ?) รูปแบบแบบเรียกซ้ำเช่น ** และโครงสร้างเส้นทางที่ซับซ้อนสำหรับการสอบถามไฟล์และไดเรกทอรีที่แม่นยำ **/filename จะเรียกซ้ำจนกว่าจะพบชื่อไฟล์ที่ตรงกัน สามารถมีรูปแบบดังกล่าวได้หลายรูปแบบตราบใดที่มีชื่อไฟล์หรือชื่อไดเรกทอรีที่ต้องตรงกันอยู่ข้างหน้า ตัวแยกวิเคราะห์รูปแบบนี้มีความสามารถของ Resolve-Path แต่มีคุณสมบัติการเรียกซ้ำและรองรับเฉพาะ * และ ? เป็นไวด์การ์ด ป้องกันข้อบกพร่องกับเส้นทางที่มีวงเล็บ [ ] ในนั้น ลดความจำเป็นในการใช้พารามิเตอร์ -LiteralPath ในขณะที่คงความสมบูรณ์สำหรับส่วนของเส้นทางที่ไม่มีไวด์การ์ด ซึ่งแตกต่างจากการจับคู่ไวด์การ์ดในเส้นทางแบบเต็มทั้งหมด
        * การค้นหาเนื้อหาที่ปรับปรุงดีขึ้น: การรวม Select-String อย่างครอบคลุมด้วยรูปแบบนิพจน์ทั่วไปภายในเนื้อหาของไฟล์โดยใช้พารามิเตอร์ -Content
            * การปรับแต่งไฟล์ขนาดใหญ่: จัดการไฟล์ขนาดใหญ่พิเศษด้วยบัฟเฟอร์ที่ทับซ้อนกันอย่างชาญฉลาดและการจัดสรรฮีปน้อยที่สุด
            * ตัวเลือกการจับคู่หลายแบบ: ค้นหาทุกการจับคู่ต่อบรรทัด (-AllMatches) หรือเฉพาะการจับคู่แรกต่อไฟล์ (-List)
            * การควบคุมความไวต่อตัวพิมพ์ใหญ่เล็ก: การจับคู่แบบคำนึงถึงตัวพิมพ์ (-CaseSensitive) พร้อมตัวเลือกเฉพาะวัฒนธรรม (-Culture)
            * การจับภาพบริบท: แสดงบรรทัดก่อนและหลังการจับคู่ (-Context) เพื่อความเข้าใจที่ดีขึ้น
            * การจับคู่ผกผัน: ค้นหาไฟล์ที่ไม่มีรูปแบบ (-NotMatch)
            * รูปแบบผลลัพธ์: ผลลัพธ์สตริงดิบ (-Raw) การตอบกลับบูลีนเงียบ (-Quiet) หรือวัตถุ MatchInfo แบบเต็ม
            * ประเภทของรูปแบบ: นิพจน์ทั่วไป (ค่าเริ่มต้น) หรือการจับคู่สตริงตามตัวอักษรอย่างง่าย (-SimpleMatch)
            * การรองรับการเข้ารหัส: ระบุการเข้ารหัสไฟล์ (-Encoding) สำหรับการประมวลผลข้อความที่แม่นยำ
        * ความยืดหยุ่นของประเภทเส้นทาง: จัดการกับเส้นทางสัมพัทธ์ เส้นทางสมบูรณ์ UNC เส้นทางที่มีราก และสตรีมข้อมูลทางเลือกของ NTFS (ADS) พร้อมการค้นหาเนื้อหาในสตรีมแบบเลือกได้
        * การรองรับหลายไดรฟ์: ค้นหาทุกไดรฟ์ด้วย -AllDrives หรือไดรฟ์เฉพาะผ่าน -SearchDrives รวมถึงดิสก์แบบออปติคอลหากระบุ
        * การกรองไดเรกทอรีและไฟล์: ตัวเลือกในการค้นหาเฉพาะไดเรกทอรี (-Directory) ทั้งไฟล์และไดเรกทอรี (-FilesAndDirectories) หรือไฟล์ที่มีเนื้อหาตรงกัน
        * การยกเว้นและข้อจำกัด: รูปแบบการยกเว้นด้วย -Exclude ตั้งค่าความลึกสูงสุดของการเรียกซ้ำ (-MaxRecursionDepth) ข้อจำกัดขนาดไฟล์ (-MaxFileSize, -MinFileSize) และตัวกรองวันที่แก้ไข (-ModifiedAfter, -ModifiedBefore)
        * การปรับแต่งผลลัพธ์: รองรับ PassThru สำหรับวัตถุ FileInfo/DirectoryInfo เส้นทางสัมพัทธ์ ไฮเปอร์ลิงก์ในโหมดมีผู้ดูแล หรือเส้นทางธรรมดาในโหมดไม่มีผู้ดูแล (ใช้ -NoLinks ในกรณีที่ผิดพลาดเพื่อบังคับใช้โหมดไม่มีผู้ดูแล)
        * การเพิ่มประสิทธิภาพ: ข้ามไฟล์ที่ไม่ใช่ข้อความโดยค่าเริ่มต้นสำหรับการค้นหาเนื้อหา (แทนที่ด้วย -IncludeNonTextFileMatching) จัดการเส้นทางยาว (>260 อักขระ) และติดตาม symlinks/junctions
        * คุณสมบัติความปลอดภัย: รองรับการหมดเวลา (-TimeoutSeconds) ไม่สนใจรายการที่ไม่สามารถเข้าถึงได้ ข้ามแอตทริบิวต์ระบบโดยค่าเริ่มต้น และป้องกันการวนซ้ำไม่รู้จบด้วยการติดตามโหนดที่เยี่ยมชมแล้ว

        * หมวดหมู่ที่ถูกต้องสำหรับพารามิเตอร์ -Category ได้แก่: Pictures, Videos, Music, Documents, Spreadsheets, Presentations, Archives, Installers, Executables, Databases, DesignFiles, Ebooks, Subtitles, Fonts, EmailFiles, 3DModels, GameAssets, MedicalFiles, FinancialFiles, LegalFiles, SourceCode, Scripts, MarkupAndData, Configuration, Logs, TextFiles, WebFiles, MusicLyricsAndChords, CreativeWriting, Recipes, ResearchFiles
```
## Syntax

```powershell
Find-Item [[-Name] <String[]>] [[-RelativeBasePath] <String>] [-AllDrives] [-AttributesToSkip <IO.FileAttributes>] [-CaseNameMatching <IO.MatchCasing>] [-Category <String[]>] [-Directory] [-DriveLetter <Char[]>] [-Exclude <String[]>] [-FilesAndDirectories] [-FollowSymlinkAndJunctions] [-IncludeAlternateFileStreams] [-IncludeNonTextFileMatching] [-IncludeOpticalDiskDrives] [-Input <Object>] [-LimitToRoot] [-MaxDegreeOfParallelism <Int32>] [-MaxFileSize <Int64>] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MinFileSize <Int64>] [-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-NoLinks] [-NoRecurse] [-PassThru] [-Root <String[]>] [-SearchADSContent] [-SearchDrives <String[]>] [-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [<CommonParameters>]

Find-Item [[-Content] <String[]>] [-AllMatches] [-CaseSensitive] [-Context <Int32[]>] [-Culture <String>] [-Encoding <String>] [-List] [-NoEmphasis] [-NotMatch] [-Quiet] [-Raw] [-SimpleMatch] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | — | 0 | — | ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*' 🌐 *Supports wildcards* |
| `-Input` | Object | — | ✅ (ByValue, ByPropertyName) | Named | — | ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*' 🌐 *Supports wildcards* |
| `-Content` | String[] | — | — | 1 | — | รูปแบบนิพจน์ทั่วไปสำหรับการค้นหาภายในเนื้อหา *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | เส้นทางฐานสำหรับแก้ไขเส้นทางสัมพัทธ์ในเอาต์พุต |
| `-Category` | String[] | — | — | Named | — | The `-Category` parameter. |
| `-MaxDegreeOfParallelism` | Int32 | — | — | Named | `0` | ระดับความขนานสูงสุดสำหรับงานไดเรกทอรี |
| `-TimeoutSeconds` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | ตัวเลือก: ระยะหมดเวลาการยกเลิกเป็นวินาที |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | ค้นหาในไดรฟ์ที่พร้อมใช้งานทั้งหมด |
| `-Directory` | SwitchParameter | — | — | Named | `False` | ค้นหาเฉพาะไดเรกทอรีเท่านั้น |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | `False` | รวมทั้งไฟล์และไดเรกทอรี |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | ส่งออกออบเจ็กต์ที่ตรงกันเป็นออบเจ็กต์ |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | `False` | รวมสตรีมข้อมูลทางเลือกในผลการค้นหา |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | อย่ามองหาในโฟลเดอร์ย่อย |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | `False` | ติดตาม symlinks และ junctions ระหว่างการสำรวจไดเรกทอรี |
| `-IncludeOpticalDiskDrives` | SwitchParameter | — | — | Named | `False` | รวมถึงไดรฟ์ออปติคัลดิสก์ |
| `-SearchDrives` | String[] | — | — | Named | — | ตัวเลือก: ค้นหาไดรฟ์เฉพาะ |
| `-DriveLetter` | Char[] | — | — | Named | — | ตัวเลือก: ค้นหาไดรฟ์เฉพาะ |
| `-Root` | String[] | — | — | Named | — | ตัวเลือก: ค้นหาไดเรกทอรีเฉพาะ |
| `-LimitToRoot` | SwitchParameter | — | — | Named | `False` | บังคับให้ค้นหาเฉพาะในไดเรกทอรีรากโดยการลบส่วนประกอบไดเรกทอรีออกจากอินพุตชื่อ |
| `-IncludeNonTextFileMatching` | SwitchParameter | — | — | Named | `False` | รวมไฟล์ที่ไม่ใช่ข้อความเมื่อค้นหาเนื้อหาไฟล์ |
| `-NoLinks` | SwitchParameter | — | — | Named | `False` | บังคับใช้โหมดไร้คนและจะไม่สร้างลิงก์ |
| `-CaseNameMatching` | IO.MatchCasing | — | — | Named | `PlatformDefault` | กำหนดหรือรับค่าความไวต่อตัวพิมพ์เล็กใหญ่สำหรับไฟล์และไดเรกทอรี |
| `-SearchADSContent` | SwitchParameter | — | — | Named | `False` | เมื่อตั้งค่า จะทำการค้นหาเนื้อหาภายในข้อมูลสตรีมสำรอง (ADS) เมื่อไม่ได้ตั้งค่า จะแสดงข้อมูลไฟล์ ADS โดยไม่ค้นหาเนื้อหา |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | ความลึกสูงสุดในการเรียกซ้ำสำหรับการสำรวจไดเรกทอรี 0 หมายถึงไม่จำกัด |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | ความลึกเรียกซ้ำสูงสุดสำหรับค้นหาต่อขึ้นไปตามลำดับชั้นสำหรับการค้นหาแบบสัมพัทธ์ ขณะที่ไม่พบรายการใดๆ 0 หมายถึงปิดการใช้งาน |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์สูงสุดในหน่วยไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่จำกัด |
| `-MinFileSize` | Int64 | — | — | Named | `0` | ขนาดไฟล์ต่ำสุดเป็นไบต์ที่จะรวมในผลลัพธ์ 0 หมายถึงไม่มีค่าต่ำสุด |
| `-ModifiedAfter` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขหลังจากวันที่/เวลา (UTC) นี้ |
| `-ModifiedBefore` | Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | รวมเฉพาะไฟล์ที่ถูกแก้ไขก่อนวันที่/เวลานี้ (UTC) เท่านั้น |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `None` | คุณสมบัติของไฟล์ที่จะข้าม (เช่น ระบบ, ซ่อนเร้น หรือ ไม่มี) |
| `-Exclude` | String[] | — | — | Named | — | ไม่รวมไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้ (เช่น *.tmp, *\bin\*) |
| `-AllMatches` | SwitchParameter | — | — | Named | `False` | ระบุว่าคำสั่ง cmdlet ค้นหาเพื่อหาค่าที่ตรงกันมากกว่าหนึ่งค่าในแต่ละบรรทัดของข้อความ โดยไม่มีพารามิเตอร์นี้ Select-String จะค้นหาเฉพาะค่าที่ตรงกันครั้งแรกในแต่ละบรรทัดของข้อความ *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | `False` | ระบุว่าการจับคู่ cmdlet เป็นแบบคำนึงถึงตัวพิมพ์เล็กใหญ่ โดยค่าเริ่มต้น การจับคู่จะไม่คำนึงถึงตัวพิมพ์เล็กใหญ่ *(Parameter set: )* |
| `-Context` | Int32[] | — | — | Named | — | จับจำนวนบรรทัดที่ระบุก่อนและหลังบรรทัดที่ตรงกับรูปแบบ *(Parameter set: )* |
| `-Culture` | String | — | — | Named | — | ระบุชื่อวัฒนธรรมเพื่อให้ตรงกับรูปแบบที่ระบุ พารามิเตอร์ Culture ต้องใช้ร่วมกับพารามิเตอร์ SimpleMatch ลักษณะการทำงานเริ่มต้นจะใช้วัฒนธรรมของ runspace PowerShell ปัจจุบัน (เซสชัน) *(Parameter set: )* |
| `-Encoding` | String | — | — | Named | — | ระบุชนิดการเข้ารหัสสำหรับไฟล์เป้าหมาย รองรับค่าที่ใช้งานร่วมกับ Select-String ได้และการเข้ารหัส .NET แบบขยาย *(Parameter set: )* |
| `-List` | SwitchParameter | — | — | Named | `False` | เฉพาะอินสแตนซ์แรกของข้อความที่ตรงกันจะถูกส่งกลับจากไฟล์อินพุตแต่ละไฟล์ นี่เป็นวิธีที่มีประสิทธิภาพมากที่สุดในการดึงรายการไฟล์ที่มีเนื้อหาตรงกับนิพจน์ทั่วไป *(Parameter set: )* |
| `-NoEmphasis` | SwitchParameter | — | — | Named | `False` | ปิดการไฮไลต์สตริงที่ตรงกันในเอาต์พุต *(Parameter set: )* |
| `-NotMatch` | SwitchParameter | — | — | Named | `False` | พารามิเตอร์ NotMatch จะค้นหาข้อความที่ไม่ตรงกับรูปแบบที่ระบุ *(Parameter set: )* |
| `-Quiet` | SwitchParameter | — | — | Named | `False` | ระบุว่า cmdlet ส่งคืนการตอบสนองแบบง่ายแทนที่จะเป็นออบเจ็กต์ MatchInfo ค่าที่ส่งคืนคือ $true หากพบรูปแบบหรือ $null หากไม่พบรูปแบบ *(Parameter set: )* |
| `-Raw` | SwitchParameter | — | — | Named | `False` | ทำให้ cmdlet ส่งออกเฉพาะสตริงที่ตรงกัน แทนที่จะเป็นวัตถุ MatchInfo ซึ่งส่งผลให้มีลักษณะการทำงานที่คล้ายคลึงกับคำสั่ง grep ของ Unix หรือ findstr.exe ของ Windows มากที่สุด *(Parameter set: )* |
| `-SimpleMatch` | SwitchParameter | — | — | Named | `False` | บ่งชี้ว่า cmdlet ใช้การจับคู่แบบง่ายแทนการจับคู่นิพจน์ปกติ ในการจับคู่แบบง่าย Select-String จะค้นหาข้อความที่ตรงกับค่าพารามิเตอร์ Pattern ในอินพุต โดยไม่ตีความค่าของพารามิเตอร์ Pattern เป็นนิพจน์ปกติ *(Parameter set: )* |

## Examples

### Example 1

```powershell
Find-Item -Content "translation"

# Short form:
l -mc translation
```

ค้นหาไฟล์ที่มีคำเฉพาะ
ค้นหาไฟล์ทั้งหมดในไดเรกทอรีปัจจุบันและไดเรกทอรีย่อยที่มีคำว่า "translation"

### Example 2

```powershell
Find-Item "*.js" "Version == `"\d\d?\.\d\d?\.\d\d?`""

# Short form:
l *.js "Version == `"\d\d?\.\d\d?\.\d\d?`""
```

ค้นหาไฟล์ JavaScript ที่มีสตริงเวอร์ชัน 
ค้นหาไฟล์ JavaScript ที่มีสตริงเวอร์ชันในรูปแบบ "Version == `x.y.z`".

### Example 3

```powershell
Find-Item -Directory

# Short form:
l -dir
```

แสดงรายการไดเรกทอรีทั้งหมด
ค้นหาไดเรกทอรีทั้งหมดในไดเรกทอรีปัจจุบันและไดเรกทอรีย่อย

### Example 4

```powershell
Find-Item ".\*.xml" -PassThru | % FullName

# Short form:
l *.xml -pt | % FullName
```

ค้นหาไฟล์ XML และส่งผ่านออบเจ็กต์
ค้นหาไฟล์ .xml ทั้งหมดและส่งผลลัพธ์เป็นออบเจ็กต์ผ่านไปป์ไลน์

### Example 5

```powershell
Find-Item -IncludeAlternateFileStreams

# Short form:
l -ads
```

รวมกระแสข้อมูลอื่น
ค้นหาไฟล์ทั้งหมดและรวมกระแสข้อมูลอื่นของไฟล์เหล่านั้นในผลลัพธ์

### Example 6

```powershell
Find-Item "*.pdf" -AllDrives

# Short form:
l *.pdf -alldrives
```

ค้นหาในทุกไดรฟ์
ค้นหาไฟล์ PDF ทั้งหมดในทุกไดรฟ์ที่พร้อมใช้งาน

### Example 7

```powershell
Find-Item "*.log" -TimeoutSeconds 300 -MaxDegreeOfParallelism 4

# Short form:
l *.log -maxseconds 300 -threads 4
```

กำหนดหมดเวลาและความขนานตามกำหนด
ค้นหาไฟล์บันทึกด้วยหมดเวลา 5 นาทีและความขนานที่จำกัด

### Example 8

```powershell
Get-ChildItem -Path "C:\Logs" | Find-Item -Content "error"

# Short form:
ls C:\Logs | l -matchcontent "error"
```

การป้อนข้อมูลผ่านทางไปป์ไลน์
ส่งที่อยู่ไฟล์จาก Get-ChildItem ไปยังการค้นหาไฟล์ที่มีคำว่า "ข้อผิดพลาด"

### Example 9

```powershell
Find-Item "*.txt" -MaxRecursionDepth 2

# Short form:
l *.txt -maxdepth 2
```

จำกัดความลึกของการเรียกซ้ำ
ค้นหาไฟล์ข้อความแต่จำกัดการเรียกซ้ำไว้ที่ 2 ระดับไดเรกทอรี

### Example 10

```powershell
Find-Item -MinFileSize 1048576 -MaxFileSize 10485760

# Short form:
l -minsize 1048576 -maxsize 10485760
```

กรองตามขนาดไฟล์
ค้นหาไฟล์ที่มีขนาดใหญ่กว่า 1MB แต่เล็กกว่า 10MB.

### Example 11

```powershell
Find-Item -ModifiedAfter "2025-01-01"

# Short form:
l -after "2025-01-01"
```

กรองตามวันที่แก้ไข
ค้นหาไฟล์ที่ถูกแก้ไขหลังจากวันที่ 1 มกราคม 2025

### Example 12

```powershell
Find-Item -Exclude "*.tmp", "*\bin\*"

# Short form:
l -skiplike "*.tmp", "*\bin\*"
```

ยกเว้นรูปแบบเฉพาะ
ค้นหาไฟล์ทั้งหมดแต่ยกเว้นไฟล์ชั่วคราวและไดเรกทอรี bin

### Example 13

```powershell
Find-Item "*.docx" -SearchDrives "C:\", "D:\"

# Short form:
l *.docx -drives C:\, D:\
```

ค้นหาไดรฟ์เฉพาะ
ค้นหาไฟล์ .docx บนไดรฟ์ C: และ D: เท่านั้น

### Example 14

```powershell
Find-Item -Content "Error" -CaseSensitive

# Short form:
l -mc "Error" -CaseSensitive
```

การค้นหาเนื้อหาที่ตรงตามตัวพิมพ์
ค้นหาไฟล์ที่มีคำว่า "Error" (ตรงตามตัวพิมพ์ใหญ่-เล็ก) ในเนื้อหา

### Example 15

```powershell
Find-Item -IncludeAlternateFileStreams -SearchADSContent -Content "secret"

# Short form:
l -ads -sads -mc "secret"
```

ค้นหาเนื้อหาสตรีมข้อมูลสำรอง
ค้นหาไฟล์ที่มีสตรีมข้อมูลสำรองที่มี "secret"

### Example 16

```powershell
Find-Item "*.ps1" -Content "function" -AllMatches

# Short form:
l *.ps1 -mc "function" -AllMatches
```

ค้นหาทุกคำที่ตรงกันในแต่ละบรรทัด
ค้นหาทุกครั้งที่ปรากฏของ "function" ในแต่ละบรรทัด ไม่ใช่แค่คำแรกที่ตรงกัน

### Example 17

```powershell
Find-Item "*.log" -Content "error" -Context 2,3

# Short form:
l *.log -mc "error" -Context 2,3
```

แสดงบริบทรอบๆ ที่ตรงกัน
แสดง 2 บรรทัดก่อนและ 3 บรรทัดหลังแต่ละการจับคู่เพื่อความเข้าใจที่ดีขึ้น

### Example 18

```powershell
Find-Item "*.txt" -Content "TODO:.*" -Raw

# Short form:
l *.txt -mc "TODO:.*" -Raw
```

รับเฉพาะสตริงที่ตรงกัน
ส่งกลับเฉพาะสตริงข้อความที่ตรงกันแทนที่จะเป็นวัตถุที่ตรงกันแบบเต็ม

### Example 19

```powershell
Find-Item "*.config" -Content "database" -Quiet

# Short form:
l *.config -mc "database" -Quiet
```

การตรวจสอบบูลีนอย่างง่าย
ส่งคืนค่า true/false แทนรายละเอียดการจับคู่เพื่อตรวจสอบว่ามีรูปแบบอยู่หรือไม่

### Example 20

```powershell
Find-Item "*.cs" -Content "class.*Controller" -List

# Short form:
l *.cs -mc "class.*Controller" -List
```

ค้นหาครั้งแรกที่ตรงกันเท่านั้นต่อไฟล์
หยุดที่รายการแรกที่ตรงกันในแต่ละไฟล์เพื่อให้การแสดงรายการไฟล์มีประสิทธิภาพ

### Example 21

```powershell
Find-Item "*.txt" -Content "$variable[0]" -SimpleMatch

# Short form:
l *.txt -mc "$variable[0]" -SimpleMatch
```

การจับคู่สตริงแบบตรงตัว
ค้นหาข้อความที่แน่นอนโดยไม่ตีความ regex โดยใช้ SimpleMatch

### Example 22

```powershell
Find-Item "*.js" -Content "console\.log" -NotMatch

# Short form:
l *.js -mc "console\.log" -NotMatch
```

ค้นหาไฟล์ที่ไม่มีรูปแบบที่ระบุ
ใช้ NotMatch เพื่อค้นหาไฟล์ที่ไม่มีรูปแบบที่ระบุ

### Example 23

```powershell
Find-Item "*.txt" -Content "café" -Encoding UTF8

# Short form:
l *.txt -mc "café" -Encoding UTF8
```

ระบุการเข้ารหัสไฟล์
ค้นหาไฟล์ที่มีการเข้ารหัสเฉพาะเพื่อการประมวลผลข้อความที่แม่นยำ

### Example 24

```powershell
Find-Item "*.txt" -Content "Müller" -SimpleMatch -Culture "de-DE"

# Short form:
l *.txt -mc "Müller" -SimpleMatch -Culture "de-DE"
```

การเปรียบเทียบข้อความทางวัฒนธรรม
ใช้การจับคู่เฉพาะวัฒนธรรมด้วย SimpleMatch สำหรับข้อความระดับนานาชาติ

### Example 25

```powershell
Find-Item "*.log" -Content "exception" -MinFileSize 1024 -ModifiedAfter "2025-01-01" -MaxRecursionDepth 3

# Short form:
l *.log -mc "exception" -minsize 1024 -after "2025-01-01" -maxdepth 3
```

การค้นหาเนื้อหาที่ซับซ้อนด้วยตัวกรองไฟล์
รวมขนาดไฟล์ วันที่ และตัวกรองเนื้อหาสำหรับการค้นหาที่แม่นยำ

## Parameter Details

### `-Name <String[]>`

> ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `like`, `Path`, `LiteralPath`, `Query`, `SearchMask`, `Include` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Input <Object>`

> ชื่อไฟล์หรือรูปแบบที่ต้องการค้นหา ค่าเริ่มต้นคือ '*'

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
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `base` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Category <String[]>`

> The `-Category` parameter.

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
### `-TimeoutSeconds <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | *(none)* |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `False` |
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
| **Default value** | `PlatformDefault` |
| **Accept pipeline input?** | False |
| **Aliases** | `casing`, `CaseSearchMaskMatching ` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SearchADSContent`

> เมื่อตั้งค่า จะทำการค้นหาเนื้อหาภายในข้อมูลสตรีมสำรอง (ADS) เมื่อไม่ได้ตั้งค่า จะแสดงข้อมูลไฟล์ ADS โดยไม่ค้นหาเนื้อหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
### `-ModifiedAfter <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
### `-ModifiedBefore <Nullable`1[[System.DateTime, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

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
| **Default value** | `None` |
| **Accept pipeline input?** | False |
| **Aliases** | `skipattr` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Exclude <String[]>`

> ไม่รวมไฟล์หรือไดเรกทอรีที่ตรงกับรูปแบบไวด์การ์ดเหล่านี้ (เช่น *.tmp, *\bin\*)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `skiplike` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllMatches`

> ระบุว่าคำสั่ง cmdlet ค้นหาเพื่อหาค่าที่ตรงกันมากกว่าหนึ่งค่าในแต่ละบรรทัดของข้อความ โดยไม่มีพารามิเตอร์นี้ Select-String จะค้นหาเฉพาะค่าที่ตรงกันครั้งแรกในแต่ละบรรทัดของข้อความ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-CaseSensitive`

> ระบุว่าการจับคู่ cmdlet เป็นแบบคำนึงถึงตัวพิมพ์เล็กใหญ่ โดยค่าเริ่มต้น การจับคู่จะไม่คำนึงถึงตัวพิมพ์เล็กใหญ่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Context <Int32[]>`

> จับจำนวนบรรทัดที่ระบุก่อนและหลังบรรทัดที่ตรงกับรูปแบบ

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

> ระบุชนิดการเข้ารหัสสำหรับไฟล์เป้าหมาย รองรับค่าที่ใช้งานร่วมกับ Select-String ได้และการเข้ารหัส .NET แบบขยาย

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
### `-List`

> เฉพาะอินสแตนซ์แรกของข้อความที่ตรงกันจะถูกส่งกลับจากไฟล์อินพุตแต่ละไฟล์ นี่เป็นวิธีที่มีประสิทธิภาพมากที่สุดในการดึงรายการไฟล์ที่มีเนื้อหาตรงกับนิพจน์ทั่วไป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-NoEmphasis`

> ปิดการไฮไลต์สตริงที่ตรงกันในเอาต์พุต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Quiet`

> ระบุว่า cmdlet ส่งคืนการตอบสนองแบบง่ายแทนที่จะเป็นออบเจ็กต์ MatchInfo ค่าที่ส่งคืนคือ $true หากพบรูปแบบหรือ $null หากไม่พบรูปแบบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
### `-Raw`

> ทำให้ cmdlet ส่งออกเฉพาะสตริงที่ตรงกัน แทนที่จะเป็นวัตถุ MatchInfo ซึ่งส่งผลให้มีลักษณะการทำงานที่คล้ายคลึงกับคำสั่ง grep ของ Unix หรือ findstr.exe ของ Windows มากที่สุด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | WithPattern |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-DuplicateFiles.md)
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
