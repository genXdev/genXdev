# Invoke-LLMBooleanEvaluation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `equalstrue`

## Synopsis

> ประเมินคำสั่งโดยใช้ AI เพื่อตรวจสอบว่าเป็นจริงหรือเท็จ

## Description

ฟังก์ชันนี้ใช้โมเดล AI เพื่อประเมินข้อความและกำหนดค่าความจริง สามารถรับอินพุตโดยตรงผ่านพารามิเตอร์ จากไปป์ไลน์ หรือจากคลิปบอร์ดของระบบ ฟังก์ชันจะคืนค่าผลลัพธ์บูลีนพร้อมกับระดับความเชื่อมั่นและเหตุผลจากโมเดล AI

## Syntax

```powershell
Invoke-LLMBooleanEvaluation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | ข้อความที่จะประเมิน |
| `-Instructions` | String | — | — | 1 | `''` | คำแนะนำสำหรับโมเดล AI ในการประเมินข้อความ |
| `-Attachments` | String[] | — | — | 2 | `@()` | อาร์เรย์ของเส้นทางไฟล์ที่จะแนบ |
| `-Temperature` | Double | — | — | Named | `-1` | อุณหภูมิสำหรับการสุ่มการตอบสนอง (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | ระดับรายละเอียดของภาพ |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | อาร์เรย์ของคำจำกัดความฟังก์ชัน |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | อาร์เรย์ของคำสั่ง PowerShell ที่ใช้เป็นเครื่องมือ |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | อาร์เรย์ของชื่อคำสั่งที่ไม่ต้องการการยืนยัน |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | ประเภทของการสอบถาม LLM |
| `-Model` | String | — | — | Named | — | รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการดำเนินการ AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | คัดลอกผลลัพธ์ไปยังคลิปบอร์ด |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | .DESCRIPTION
cmdlet นี้จะส่งคืนออบเจ็กต์ที่ระบุพาธแบบเต็มไปยังไฟล์ .reg สำหรับคีย์รีจิสทรีที่กำหนด
.NOTES
ชื่อ: Get-RegistryKeyToRegFile
ผู้เขียน: โรมิเนก
เวอร์ชัน: 1.0
.PARAMETER Path
พาธไปยังคีย์รีจิสทรี
.EXAMPLE
Get-RegistryKeyToRegFile -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run'

คำอธิบาย
-----------
cmdlet นี้จะส่งคืนข้อมูลเกี่ยวกับคีย์รีจิสทรีที่ระบุ รวมถึงพาธแบบเต็มไปยังไฟล์ .reg ที่จะสร้าง

.EXAMPLE
'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run', 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' | Get-RegistryKeyToRegFile

คำอธิบาย
-----------
cmdlet นี้ส่งคืนข้อมูลสำหรับคีย์รีจิสทรีที่ระบุ รวมถึงพาธแบบเต็มไปยังไฟล์ .reg ที่จะสร้าง

.EXAMPLE
Get-ChildItem -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion' | Get-RegistryKeyToRegFile

คำอธิบาย
-----------
cmdlet นี้ส่งคืนข้อมูลสำหรับคีย์รีจิสทรีที่ระบุ รวมถึงพาธแบบเต็มไปยังไฟล์ .reg ที่จะสร้าง |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | อย่าเพิ่มความคิดของโมเดลลงในประวัติการสนทนา |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | .SYNOPSIS
   สร้างดิสก์เสมือนในไฮเปอร์-วี

.DESCRIPTION
   cmdlet New-VHD จะสร้างไฟล์ดิสก์เสมือน (.vhd หรือ .vhdx) ที่คุณสามารถใช้กับเครื่องเสมือนได้

.PARAMETER Path
   ระบุตำแหน่งและชื่อไฟล์สำหรับไฟล์ VHD ใหม่

.PARAMETER SizeBytes
   ระบุขนาดของดิสก์เสมือนเป็นไบต์

.PARAMETER Fixed
   สร้างดิสก์เสมือนแบบขนาดคงที่ (Fixed) แทนที่จะเป็นแบบไดนามิก

.PARAMETER Dynamic
   สร้างดิสก์เสมือนแบบไดนามิก (Dynamic) ซึ่งเป็นค่าเริ่มต้น

.PARAMETER Differencing
   สร้างดิสก์เสมือนแบบแตกต่าง (Differencing)

.PARAMETER ParentPath
   ระบุตำแหน่งของดิสก์หลักสำหรับดิสก์เสมือนแบบแตกต่าง

.PARAMETER LogicalSectorSizeBytes
   ระบุขนาดเซกเตอร์ลอจิคัลสำหรับ VHDX ใหม่ (512, 4096 หรือค่าเริ่มต้น)

.PARAMETER BlockSizeBytes
   ระบุขนาดบล็อกสำหรับ VHDX ใหม่ (ค่าเริ่มต้นคือ 32 MB)

.PARAMETER PhysicalSectorSizeBytes
   ระบุขนาดเซกเตอร์ฟิสิคัลสำหรับ VHDX ใหม่ (512 หรือ 4096)

.EXAMPLE
   New-VHD -Path C:\VHDs\Disk1.vhdx -SizeBytes 40GB
   
   คำอธิบาย
   -----------
   สร้างไฟล์ VHDX ขนาด 40 GB แบบไดนามิก

.EXAMPLE
   New-VHD -Path D:\VHDs\Disk2.vhd -SizeBytes 20GB -Fixed
   
   คำอธิบาย
   -----------
   สร้างไฟล์ VHD ขนาด 20 GB แบบคงที่

.EXAMPLE
   New-VHD -Path D:\VHDs\Disk3.vhdx -ParentPath D:\VHDs\Base.vhdx -Differencing
   
   คำอธิบาย
   -----------
   สร้างดิสก์เสมือนแบบแตกต่างโดยใช้ Base.vhdx เป็นดิสก์หลัก

.NOTES
   คุณต้องมีสิทธิ์ผู้ดูแลระบบเพื่อเรียกใช้ cmdlet นี้

.INPUTS
   System.String

.OUTPUTS
   Microsoft.Vhd.PowerShell.VirtualHardDisk |
| `-Speak` | SwitchParameter | — | — | Named | — | เปิดใช้งานการแปลงข้อความเป็นเสียงสำหรับการตอบสนองของ AI |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | เปิดใช้งานข้อความเป็นคำพูดสำหรับการตอบสนองความคิดของ AI |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | อย่าเก็บเซสชันในแคชเซสชัน |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | อนุญาตให้ AI ใช้เครื่องมือและความสามารถเริ่มต้น |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    เพิ่มโฟลเดอร์ไดรฟ์ข้อมูลในเซิร์ฟเวอร์เรพพลิเคชัน

.DESCRIPTION
    เพิ่มโฟลเดอร์ไดรฟ์ข้อมูลในเซิร์ฟเวอร์เรพพลิเคชัน

.PARAMETER Path
    เส้นทางไปยังไดรฟ์ข้อมูลภายในเซิร์ฟเวอร์เรพพลิเคชัน

.PARAMETER InputObject
    ระบุไดรฟ์ข้อมูลจากคำสั่ง Get-PSDrive
    โดยจะเพิ่มเฉพาะไดรฟ์ข้อมูลที่กำหนดเท่านั้น

.PARAMETER Id
    ระบุไดรฟ์ข้อมูลโดยใช้ Id

.PARAMETER Name
    ระบุชื่อของไดรฟ์ข้อมูลเพื่อเพิ่มในเซิร์ฟเวอร์เรพพลิเคชัน

.PARAMETER ComputerName
    ระบุเซิร์ฟเวอร์ที่เรียกใช้เซิร์ฟเวอร์เรพพลิเคชัน
    ค่าเริ่มต้นคือ localhost

.PARAMETER TimeoutSec
    ระบุระยะเวลาที่คำสั่งควรรอให้คำขอเสร็จสมบูรณ์

.PARAMETER Confirm
    ขอให้ยืนยันก่อนรันคำสั่ง

.PARAMETER WhatIf
    แสดงสิ่งที่เกิดขึ้นหากรันคำสั่ง คำสั่งจะไม่รัน

.EXAMPLE
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\"
    Cmdlet นี้ดำเนินการขั้นพื้นฐานในการสร้างไดรฟ์ข้อมูล PowerShell แต่ยังไม่มีอยู่ในเซิร์ฟเวอร์เรพพลิเคชัน ซึ่งแตกต่างจากเซิร์ฟเวอร์เรพพลิเคชันที่สร้างไว้ล่วงหน้าในเครื่อง

    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive -ComputerName "Serv1"
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive -ComputerName "Serv1" -TimeoutSec 30
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive -ComputerName "Serv1" -Confirm |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | กรองบล็อกมาร์กอัปตามประเภทที่ระบุ |
| `-AudioTemperature` | Double | — | — | Named | — | ระดับความสุ่มของอุณหภูมิสำหรับการตอบสนองด้วยเสียง |
| `-TemperatureResponse` | Double | — | — | Named | — | อุณหภูมิสำหรับการสร้างคำตอบ |
| `-Language` | String | — | — | Named | — | ภาษาไทย (ไทย) |
| `-CpuThreads` | Int32 | — | — | Named | — | จำนวนเธรด CPU ที่ใช้สำหรับการประมวลผล |
| `-SuppressRegex` | String | — | — | Named | — | นิพจน์ทั่วไปเพื่อระงับจากผลลัพธ์ |
| `-AudioContextSize` | Int32 | — | — | Named | — | ขนาดบริบทเสียงสำหรับการประมวลผล |
| `-SilenceThreshold` | Double | — | — | Named | — | เกณฑ์ความเงียบสำหรับการตรวจจับเสียง |
| `-LengthPenalty` | Double | — | — | Named | — | บทลงโทษความยาวสำหรับการสร้างลำดับ |
| `-EntropyThreshold` | Double | — | — | Named | — | เกณฑ์ค่าเอนโทรปีสำหรับการกรองเอาต์พุต |
| `-LogProbThreshold` | Double | — | — | Named | — | เกณฑ์ความน่าจะเป็นของล็อกสำหรับการกรองเอาต์พุต |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ไม่มีเกณฑ์ขั้นต่ำเสียงสำหรับการตรวจจับเสียง |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | ปิดใช้งานการส่งออกเสียง |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | ปิดใช้งานการส่งออกเสียงสำหรับความคิด |
| `-NoVOX` | SwitchParameter | — | — | Named | — | ปิดการใช้งาน VOX (การเปิดใช้งานด้วยเสียง) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | ใช้การบันทึกเสียงเดสก์ท็อปเป็นอินพุต |
| `-NoContext` | SwitchParameter | — | — | Named | — | อย่าใช้บริบทในข้อความค้นหา |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ช |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | .PARAMETER Path
ระบุเส้นทางไปยังไฟล์หนึ่งไฟล์ขึ้นไป เส้นทางต้องมีรูปแบบที่ถูกต้องของ PowerShell |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | The `-MaxToolcallBackLength` parameter. |

## Examples

### Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"

```powershell
Invoke-LLMBooleanEvaluation -Text "The Earth is flat" -Model "gpt-4"
```

### "Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation

```powershell
"Humans need oxygen to survive" | Invoke-LLMBooleanEvaluation
```

### equalstrue "2 + 2 = 4" ##############################################################################

```powershell
equalstrue "2 + 2 = 4"
##############################################################################
```

## Parameter Details

### `-Text <String>`

> ข้อความที่จะประเมิน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> คำแนะนำสำหรับโมเดล AI ในการประเมินข้อความ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> อาร์เรย์ของเส้นทางไฟล์ที่จะแนบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> อุณหภูมิสำหรับการสุ่มการตอบสนอง (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> ระดับรายละเอียดของภาพ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> อาร์เรย์ของคำจำกัดความฟังก์ชัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> อาร์เรย์ของคำสั่ง PowerShell ที่ใช้เป็นเครื่องมือ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> อาร์เรย์ของชื่อคำสั่งที่ไม่ต้องการการยืนยัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> ประเภทของการสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Knowledge'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> URL ปลายทางของ API สำหรับการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> บ่งชี้ว่า LLM ไม่รองรับ JSON schemas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-SetClipboard`

> คัดลอกผลลัพธ์ไปยังคลิปบอร์ด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> .DESCRIPTION
cmdlet นี้จะส่งคืนออบเจ็กต์ที่ระบุพาธแบบเต็มไปยังไฟล์ .reg สำหรับคีย์รีจิสทรีที่กำหนด
.NOTES
ชื่อ: Get-RegistryKeyToRegFile
ผู้เขียน: โรมิเนก
เวอร์ชัน: 1.0
.PARAMETER Path
พาธไปยังคีย์รีจิสทรี
.EXAMPLE
Get-RegistryKeyToRegFile -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run'

คำอธิบาย
-----------
cmdlet นี้จะส่งคืนข้อมูลเกี่ยวกับคีย์รีจิสทรีที่ระบุ รวมถึงพาธแบบเต็มไปยังไฟล์ .reg ที่จะสร้าง

.EXAMPLE
'HKLM:\Software\Microsoft\Windows\CurrentVersion\Run', 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' | Get-RegistryKeyToRegFile

คำอธิบาย
-----------
cmdlet นี้ส่งคืนข้อมูลสำหรับคีย์รีจิสทรีที่ระบุ รวมถึงพาธแบบเต็มไปยังไฟล์ .reg ที่จะสร้าง

.EXAMPLE
Get-ChildItem -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion' | Get-RegistryKeyToRegFile

คำอธิบาย
-----------
cmdlet นี้ส่งคืนข้อมูลสำหรับคีย์รีจิสทรีที่ระบุ รวมถึงพาธแบบเต็มไปยังไฟล์ .reg ที่จะสร้าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> อย่าเพิ่มความคิดของโมเดลลงในประวัติการสนทนา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> .SYNOPSIS
   สร้างดิสก์เสมือนในไฮเปอร์-วี

.DESCRIPTION
   cmdlet New-VHD จะสร้างไฟล์ดิสก์เสมือน (.vhd หรือ .vhdx) ที่คุณสามารถใช้กับเครื่องเสมือนได้

.PARAMETER Path
   ระบุตำแหน่งและชื่อไฟล์สำหรับไฟล์ VHD ใหม่

.PARAMETER SizeBytes
   ระบุขนาดของดิสก์เสมือนเป็นไบต์

.PARAMETER Fixed
   สร้างดิสก์เสมือนแบบขนาดคงที่ (Fixed) แทนที่จะเป็นแบบไดนามิก

.PARAMETER Dynamic
   สร้างดิสก์เสมือนแบบไดนามิก (Dynamic) ซึ่งเป็นค่าเริ่มต้น

.PARAMETER Differencing
   สร้างดิสก์เสมือนแบบแตกต่าง (Differencing)

.PARAMETER ParentPath
   ระบุตำแหน่งของดิสก์หลักสำหรับดิสก์เสมือนแบบแตกต่าง

.PARAMETER LogicalSectorSizeBytes
   ระบุขนาดเซกเตอร์ลอจิคัลสำหรับ VHDX ใหม่ (512, 4096 หรือค่าเริ่มต้น)

.PARAMETER BlockSizeBytes
   ระบุขนาดบล็อกสำหรับ VHDX ใหม่ (ค่าเริ่มต้นคือ 32 MB)

.PARAMETER PhysicalSectorSizeBytes
   ระบุขนาดเซกเตอร์ฟิสิคัลสำหรับ VHDX ใหม่ (512 หรือ 4096)

.EXAMPLE
   New-VHD -Path C:\VHDs\Disk1.vhdx -SizeBytes 40GB
   
   คำอธิบาย
   -----------
   สร้างไฟล์ VHDX ขนาด 40 GB แบบไดนามิก

.EXAMPLE
   New-VHD -Path D:\VHDs\Disk2.vhd -SizeBytes 20GB -Fixed
   
   คำอธิบาย
   -----------
   สร้างไฟล์ VHD ขนาด 20 GB แบบคงที่

.EXAMPLE
   New-VHD -Path D:\VHDs\Disk3.vhdx -ParentPath D:\VHDs\Base.vhdx -Differencing
   
   คำอธิบาย
   -----------
   สร้างดิสก์เสมือนแบบแตกต่างโดยใช้ Base.vhdx เป็นดิสก์หลัก

.NOTES
   คุณต้องมีสิทธิ์ผู้ดูแลระบบเพื่อเรียกใช้ cmdlet นี้

.INPUTS
   System.String

.OUTPUTS
   Microsoft.Vhd.PowerShell.VirtualHardDisk

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> เปิดใช้งานการแปลงข้อความเป็นเสียงสำหรับการตอบสนองของ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> เปิดใช้งานข้อความเป็นคำพูดสำหรับการตอบสนองความคิดของ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> อย่าเก็บเซสชันในแคชเซสชัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> อนุญาตให้ AI ใช้เครื่องมือและความสามารถเริ่มต้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-OutputMarkdownBlocksOnly`

> .SYNOPSIS
    เพิ่มโฟลเดอร์ไดรฟ์ข้อมูลในเซิร์ฟเวอร์เรพพลิเคชัน

.DESCRIPTION
    เพิ่มโฟลเดอร์ไดรฟ์ข้อมูลในเซิร์ฟเวอร์เรพพลิเคชัน

.PARAMETER Path
    เส้นทางไปยังไดรฟ์ข้อมูลภายในเซิร์ฟเวอร์เรพพลิเคชัน

.PARAMETER InputObject
    ระบุไดรฟ์ข้อมูลจากคำสั่ง Get-PSDrive
    โดยจะเพิ่มเฉพาะไดรฟ์ข้อมูลที่กำหนดเท่านั้น

.PARAMETER Id
    ระบุไดรฟ์ข้อมูลโดยใช้ Id

.PARAMETER Name
    ระบุชื่อของไดรฟ์ข้อมูลเพื่อเพิ่มในเซิร์ฟเวอร์เรพพลิเคชัน

.PARAMETER ComputerName
    ระบุเซิร์ฟเวอร์ที่เรียกใช้เซิร์ฟเวอร์เรพพลิเคชัน
    ค่าเริ่มต้นคือ localhost

.PARAMETER TimeoutSec
    ระบุระยะเวลาที่คำสั่งควรรอให้คำขอเสร็จสมบูรณ์

.PARAMETER Confirm
    ขอให้ยืนยันก่อนรันคำสั่ง

.PARAMETER WhatIf
    แสดงสิ่งที่เกิดขึ้นหากรันคำสั่ง คำสั่งจะไม่รัน

.EXAMPLE
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\"
    Cmdlet นี้ดำเนินการขั้นพื้นฐานในการสร้างไดรฟ์ข้อมูล PowerShell แต่ยังไม่มีอยู่ในเซิร์ฟเวอร์เรพพลิเคชัน ซึ่งแตกต่างจากเซิร์ฟเวอร์เรพพลิเคชันที่สร้างไว้ล่วงหน้าในเครื่อง

    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive -ComputerName "Serv1"
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive -ComputerName "Serv1" -TimeoutSec 30
    PS C:\> Add-PSDrive -Name "Test" -PSProvider FileSystem -Root "C:\SomeDrive\" | Add-ReplicationServerDrive -ComputerName "Serv1" -Confirm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> กรองบล็อกมาร์กอัปตามประเภทที่ระบุ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> ระดับความสุ่มของอุณหภูมิสำหรับการตอบสนองด้วยเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> อุณหภูมิสำหรับการสร้างคำตอบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> ภาษาไทย (ไทย)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> จำนวนเธรด CPU ที่ใช้สำหรับการประมวลผล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> นิพจน์ทั่วไปเพื่อระงับจากผลลัพธ์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> ขนาดบริบทเสียงสำหรับการประมวลผล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> เกณฑ์ความเงียบสำหรับการตรวจจับเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> บทลงโทษความยาวสำหรับการสร้างลำดับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> เกณฑ์ค่าเอนโทรปีสำหรับการกรองเอาต์พุต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> เกณฑ์ความน่าจะเป็นของล็อกสำหรับการกรองเอาต์พุต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> ไม่มีเกณฑ์ขั้นต่ำเสียงสำหรับการตรวจจับเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> ปิดใช้งานการส่งออกเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> ปิดใช้งานการส่งออกเสียงสำหรับความคิด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> ปิดการใช้งาน VOX (การเปิดใช้งานด้วยเสียง)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> ใช้การบันทึกเสียงเดสก์ท็อปเป็นอินพุต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> อย่าใช้บริบทในข้อความค้นหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ช

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> .PARAMETER Path
ระบุเส้นทางไปยังไฟล์หนึ่งไฟล์ขึ้นไป เส้นทางต้องมีรูปแบบที่ถูกต้องของ PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> The `-MaxToolcallBackLength` parameter.

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

- `Boolean`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-Image.md)
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
