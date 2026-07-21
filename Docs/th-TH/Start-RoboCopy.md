# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> มี wrapper สำหรับ PowerShell สำหรับยูทิลิตี้ Robust Copy (RoboCopy) ของ Microsoft

## Description

ตัวห่อหุ้มที่ครอบคลุมสำหรับยูทิลิตี้บรรทัดคำสั่ง RoboCopy ที่ให้ความสามารถในการคัดลอกไฟล์และไดเรกทอรีที่แข็งแกร่ง ฟังก์ชันนี้เปิดเผยชุดคุณลักษณะที่กว้างขวางของ RoboCopy ผ่านพารามิเตอร์ที่เป็นมิตรกับ PowerShell ในขณะที่ยังคงรักษาฟังก์ชันการทำงานที่มีประสิทธิภาพส่วนใหญ่ไว้

คุณลักษณะสำคัญ:
- การซิงโครไนซ์ไดเรกทอรีพร้อมตัวเลือกมิเรอร์
- รองรับชื่อพาธที่ยาวมาก (>256 อักขระ)
- การรักษาการตั้งค่าความปลอดภัย
- การจัดการแอตทริบิวต์ไฟล์ขั้นสูง
- การจัดการลิงก์สัญลักษณ์และจุดเชื่อมต่อ
- โหมดตรวจสอบสำหรับการซิงโครไนซ์ต่อเนื่อง
- การเพิ่มประสิทธิภาพสำหรับไฟล์ขนาดใหญ่
- รองรับการบีบอัดเครือข่าย
- โหมดกู้คืนสำหรับอุปกรณ์ที่ล้มเหลว

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | ไดเรกทอรี พาธของไฟล์ หรือไดเรกทอรี+หน้ากากค้นหา |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | ไดเรกทอรีปลายทางสำหรับวางไฟล์และไดเรกทอรีที่คัดลอกมา
            ถ้าไดเรกทอรีนี้ยังไม่มีอยู่ ไดเรกทอรีที่ขาดหายทั้งหมดจะถูกสร้างขึ้น
            ค่าเริ่มต้น = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | มาสก์การค้นหาแบบไม่บังคับสำหรับเลือกไฟล์ที่ต้องคัดลอก
            ค่าเริ่มต้น = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | ซิงโครไนซ์เนื้อหาของไดเรกทอรีที่ระบุ จะลบไฟล์และไดเรกทอรีในปลายทางที่ไม่มีอยู่ในต้นทาง |
| `-Move` | SwitchParameter | — | — | Named | — | จะย้ายแทนที่จะคัดลอกไฟล์ทั้งหมดจากต้นทางไปยังปลายทาง |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | จะคัดลอกความเป็นเจ้าของ ตัวอธิบายความปลอดภัย และข้อมูลการตรวจสอบของไฟล์และไดเรกทอรีด้วย |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | คัดลอกเฉพาะไฟล์จากแหล่งที่มาและข้ามโฟลเดอร์ย่อย (ไม่ทำการวนซ้ำ) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | ไม่คัดลอกไดเรกทอรีหากไดเรกทอรีเหล่านั้นจะว่างเปล่า *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | สร้างแผนผังไดเรกทอรีเท่านั้น *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | สร้างไดเร็กทอรีทรีและไฟล์ขนาดศูนย์เท่านั้น |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | อย่าคัดลอกลิงก์สัญลักษณ์ จังก์ชัน หรือเนื้อหาที่พวกมันชี้ไป |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | อย่าคัดลอกลิงก์สัญลักษณ์ของไฟล์ แต่ให้ติดตามทางแยกของไดเรกทอรี |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | แทนที่จะคัดลอกเนื้อหาที่ลิงก์สัญลักษณ์ชี้ไป ให้คัดลอกลิงก์เหล่านั้นเอง |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | อย่าคัดลอกจุดเชื่อมต่อไดเรกทอรี (ลิงก์สัญลักษณ์สำหรับโฟลเดอร์) หรือเนื้อหาที่ชี้ไป *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | แทนที่จะคัดลอกเนื้อหาที่จุดเชื่อมต่อชี้ไป ให้คัดลอกจุดเชื่อมต่อเหล่านั้นเอง *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | จะคัดลอกไฟล์ทั้งหมดแม้ว่าจะเก่ากว่าไฟล์ในปลายทางก็ตาม |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | คัดลอกเฉพาะไฟล์ที่มีการตั้งค่าแอตทริบิวต์เก็บถาวร |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | นอกเหนือจากการคัดลอกเฉพาะไฟล์ที่มีการตั้งค่าแอตทริบิวต์เก็บถาวรแล้ว จะรีเซ็ตแอตทริบิวต์นี้ที่ต้นทางด้วย |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | ไม่รวมไฟล์ใดๆ ที่ตรงกับชื่อ/พาธ/ไวด์การ์ดเหล่านี้ 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | ไม่รวมไดเรกทอรีใดๆ ที่ตรงกับชื่อ/พาธ/ไวลด์การ์ดเหล่านี้ *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | คัดลอกเฉพาะไฟล์ที่มีแอตทริบิวต์ทั้งหมดนี้ตั้งค่าไว้ [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | ยกเว้นไฟล์ที่มีแอตทริบิวต์เหล่านี้ตั้งค่าไว้ [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | จะตั้งค่าแอตทริบิวต์ที่กำหนดให้กับไฟล์ที่ถูกคัดลอก [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | จะลบแอตทริบิวต์ที่กำหนดจากไฟล์ที่คัดลอก [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | คัดลอกเฉพาะระดับบนสุด n ระดับของแผนผังไดเรกทอรีต้นทาง *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | ข้ามไฟล์ที่มีขนาดน้อยกว่า n ไบต์ |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | ข้ามไฟล์ที่มีขนาดใหญ่กว่า n ไบต์ |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | ข้ามไฟล์ที่ไม่อย่างน้อย: n วัน หรือสร้างก่อนวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, มิฉะนั้น n = วันที่ YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | ข้ามไฟล์ที่เก่ากว่า: n วัน หรือสร้างหลังจากวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, ไม่เช่นนั้น n = วันที่แบบ YYYYMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | ข้ามไฟล์ที่ถูกเข้าถึงภายใน: n วันที่ผ่านมา หรือก่อนวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, มิฉะนั้น n = วันที่รูปแบบ YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | ข้ามไฟล์ที่ไม่ได้เข้าถึงภายใน: n วัน หรือ หลังจากวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, มิฉะนั้น n = วันที่ในรูปแบบ YYYYMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | จะหยุดชั่วคราวและลองใหม่เมื่อเกิดข้อผิดพลาด I/O ระหว่างการคัดลอก |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | จะยังคงทำงานอยู่หลังจากคัดลอก และคัดลอกการเปลี่ยนแปลงเพิ่มเติมหลังจากค่าเริ่มต้นที่ 10 นาที |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | เรียกใหม่ในอีก n นาที ถ้ามีการเปลี่ยนแปลง |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | เรียกใช้ใหม่เมื่อมีการเปลี่ยนแปลงมากกว่า n ครั้ง |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | เวลาทำงาน - เวลาที่สามารถเริ่มสำเนาใหม่ได้ เวลาเริ่มต้น ช่วง 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | เวลาทำการ - ช่วงเวลาที่สามารถเริ่มสำเนาใหม่ได้ เวลาสิ้นสุด ช่วง 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | หากระบุไว้ การบันทึกจะทำไปยังไฟล์ที่กำหนดด้วย |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | อย่าเพิ่มข้อมูลต่อท้ายไฟล์บันทึกที่ระบุ แต่ให้เขียนทับแทน |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | รวมชื่อไดเรกทอรีที่สแกนทั้งหมดในผลลัพธ์ |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | รวมชื่อไฟล์ที่สแกนทั้งหมดในผลลัพธ์ แม้แต่ไฟล์ที่ถูกข้าม |
| `-Unicode` | SwitchParameter | — | — | Named | — | สถานะเป็น UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | เปิดใช้งานการปรับให้เหมาะสมสำหรับการคัดลอกไฟล์ขนาดใหญ่ |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | เพิ่มประสิทธิภาพด้วยการคัดลอกแบบหลายเธรด |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | ถ้าเป็นไปได้ ให้ใช้การบีบอัดเมื่อคัดลอกไฟล์ระหว่างเซิร์ฟเวอร์เพื่อประหยัดแบนด์วิดท์และเวลา |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | เมื่อตั้งค่าแล้ว จะใช้การจับคู่ timestamp ระดับมิลลิวินาทีแทนค่าเผื่อ 2 วินาทีเริ่มต้น |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | ลบล้าง ลบ หรือเพิ่มพารามิเตอร์ robocopy ใดๆ

การใช้งาน:

เพิ่มหรือแทนที่พารามิเตอร์:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

ลบพารามิเตอร์:

    -Override -/Switch

การลบล้างหลายรายการ:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> ไดเรกทอรี พาธของไฟล์ หรือไดเรกทอรี+หน้ากากค้นหา

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> ไดเรกทอรีปลายทางสำหรับวางไฟล์และไดเรกทอรีที่คัดลอกมา
            ถ้าไดเรกทอรีนี้ยังไม่มีอยู่ ไดเรกทอรีที่ขาดหายทั้งหมดจะถูกสร้างขึ้น
            ค่าเริ่มต้น = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> มาสก์การค้นหาแบบไม่บังคับสำหรับเลือกไฟล์ที่ต้องคัดลอก
            ค่าเริ่มต้น = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> ซิงโครไนซ์เนื้อหาของไดเรกทอรีที่ระบุ จะลบไฟล์และไดเรกทอรีในปลายทางที่ไม่มีอยู่ในต้นทาง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> จะย้ายแทนที่จะคัดลอกไฟล์ทั้งหมดจากต้นทางไปยังปลายทาง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> จะคัดลอกความเป็นเจ้าของ ตัวอธิบายความปลอดภัย และข้อมูลการตรวจสอบของไฟล์และไดเรกทอรีด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> คัดลอกเฉพาะไฟล์จากแหล่งที่มาและข้ามโฟลเดอร์ย่อย (ไม่ทำการวนซ้ำ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> ไม่คัดลอกไดเรกทอรีหากไดเรกทอรีเหล่านั้นจะว่างเปล่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> สร้างแผนผังไดเรกทอรีเท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> สร้างไดเร็กทอรีทรีและไฟล์ขนาดศูนย์เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> อย่าคัดลอกลิงก์สัญลักษณ์ จังก์ชัน หรือเนื้อหาที่พวกมันชี้ไป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> อย่าคัดลอกลิงก์สัญลักษณ์ของไฟล์ แต่ให้ติดตามทางแยกของไดเรกทอรี

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> แทนที่จะคัดลอกเนื้อหาที่ลิงก์สัญลักษณ์ชี้ไป ให้คัดลอกลิงก์เหล่านั้นเอง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> อย่าคัดลอกจุดเชื่อมต่อไดเรกทอรี (ลิงก์สัญลักษณ์สำหรับโฟลเดอร์) หรือเนื้อหาที่ชี้ไป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> แทนที่จะคัดลอกเนื้อหาที่จุดเชื่อมต่อชี้ไป ให้คัดลอกจุดเชื่อมต่อเหล่านั้นเอง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> จะคัดลอกไฟล์ทั้งหมดแม้ว่าจะเก่ากว่าไฟล์ในปลายทางก็ตาม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> คัดลอกเฉพาะไฟล์ที่มีการตั้งค่าแอตทริบิวต์เก็บถาวร

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> นอกเหนือจากการคัดลอกเฉพาะไฟล์ที่มีการตั้งค่าแอตทริบิวต์เก็บถาวรแล้ว จะรีเซ็ตแอตทริบิวต์นี้ที่ต้นทางด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> ไม่รวมไฟล์ใดๆ ที่ตรงกับชื่อ/พาธ/ไวด์การ์ดเหล่านี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> ไม่รวมไดเรกทอรีใดๆ ที่ตรงกับชื่อ/พาธ/ไวลด์การ์ดเหล่านี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> คัดลอกเฉพาะไฟล์ที่มีแอตทริบิวต์ทั้งหมดนี้ตั้งค่าไว้ [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> ยกเว้นไฟล์ที่มีแอตทริบิวต์เหล่านี้ตั้งค่าไว้ [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> จะตั้งค่าแอตทริบิวต์ที่กำหนดให้กับไฟล์ที่ถูกคัดลอก [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> จะลบแอตทริบิวต์ที่กำหนดจากไฟล์ที่คัดลอก [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> คัดลอกเฉพาะระดับบนสุด n ระดับของแผนผังไดเรกทอรีต้นทาง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> ข้ามไฟล์ที่มีขนาดน้อยกว่า n ไบต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> ข้ามไฟล์ที่มีขนาดใหญ่กว่า n ไบต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> ข้ามไฟล์ที่ไม่อย่างน้อย: n วัน หรือสร้างก่อนวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, มิฉะนั้น n = วันที่ YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> ข้ามไฟล์ที่เก่ากว่า: n วัน หรือสร้างหลังจากวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, ไม่เช่นนั้น n = วันที่แบบ YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> ข้ามไฟล์ที่ถูกเข้าถึงภายใน: n วันที่ผ่านมา หรือก่อนวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, มิฉะนั้น n = วันที่รูปแบบ YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> ข้ามไฟล์ที่ไม่ได้เข้าถึงภายใน: n วัน หรือ หลังจากวันที่ n (ถ้า n < 1900 แล้ว n = n วัน, มิฉะนั้น n = วันที่ในรูปแบบ YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> จะหยุดชั่วคราวและลองใหม่เมื่อเกิดข้อผิดพลาด I/O ระหว่างการคัดลอก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> จะยังคงทำงานอยู่หลังจากคัดลอก และคัดลอกการเปลี่ยนแปลงเพิ่มเติมหลังจากค่าเริ่มต้นที่ 10 นาที

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> เรียกใหม่ในอีก n นาที ถ้ามีการเปลี่ยนแปลง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> เรียกใช้ใหม่เมื่อมีการเปลี่ยนแปลงมากกว่า n ครั้ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> เวลาทำงาน - เวลาที่สามารถเริ่มสำเนาใหม่ได้ เวลาเริ่มต้น ช่วง 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> เวลาทำการ - ช่วงเวลาที่สามารถเริ่มสำเนาใหม่ได้ เวลาสิ้นสุด ช่วง 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> หากระบุไว้ การบันทึกจะทำไปยังไฟล์ที่กำหนดด้วย

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> อย่าเพิ่มข้อมูลต่อท้ายไฟล์บันทึกที่ระบุ แต่ให้เขียนทับแทน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> รวมชื่อไดเรกทอรีที่สแกนทั้งหมดในผลลัพธ์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> รวมชื่อไฟล์ที่สแกนทั้งหมดในผลลัพธ์ แม้แต่ไฟล์ที่ถูกข้าม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> สถานะเป็น UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> เปิดใช้งานการปรับให้เหมาะสมสำหรับการคัดลอกไฟล์ขนาดใหญ่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> เพิ่มประสิทธิภาพด้วยการคัดลอกแบบหลายเธรด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> ถ้าเป็นไปได้ ให้ใช้การบีบอัดเมื่อคัดลอกไฟล์ระหว่างเซิร์ฟเวอร์เพื่อประหยัดแบนด์วิดท์และเวลา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> เมื่อตั้งค่าแล้ว จะใช้การจับคู่ timestamp ระดับมิลลิวินาทีแทนค่าเผื่อ 2 วินาทีเริ่มต้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> ลบล้าง ลบ หรือเพิ่มพารามิเตอร์ robocopy ใดๆ

การใช้งาน:

เพิ่มหรือแทนที่พารามิเตอร์:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

ลบพารามิเตอร์:

    -Override -/Switch

การลบล้างหลายรายการ:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

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
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-TextFileAtomic.md)
