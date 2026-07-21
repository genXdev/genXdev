# Get-ScriptExecutionErrorFixPrompt

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `getfixprompt`

## Synopsis

> จับข้อความข้อผิดพลาดจากสตรีมต่างๆ และใช้ LLM เพื่อแนะนำการแก้ไข

## Description

cmdlet นี้จะจับข้อความแสดงข้อผิดพลาดจากสตรีม PowerShell ต่างๆ (อินพุตของไปป์ไลน์, ละเอียด, ข้อมูล, ข้อผิดพลาด, และคำเตือน) และสร้างโครงสร้างพร้อมท์สำหรับ LLM เพื่อวิเคราะห์และแนะนำการแก้ไข จากนั้นจะเรียกใช้การสอบถาม LLM และส่งคืนโซลูชันที่แนะนำ

## Syntax

```powershell
Get-ScriptExecutionErrorFixPrompt -Script <ScriptBlock> [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ChatOnce <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <Object>] [-IncludeThoughts <Object>] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <Object>] [-MaxToolcallBackLength <Object>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly <Object>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-Temperature <Double>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-TTLSeconds <Object>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | ✅ (ByValue) | 0 | — | สคริปต์ที่ต้องดำเนินการและวิเคราะห์หาข้อผิดพลาด |
| `-Temperature` | Double | — | — | Named | `-1` | อุณหภูมิสำหรับการสุ่มการตอบสนอง (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | ประเภทของการสอบถาม LLM |
| `-Model` | String | — | — | Named | — | รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการดำเนินการ AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | หมดเวลาสำหรับการดำเนินการ AI ในหน่วยวินาที |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | อาร์เรย์ของคำจำกัดความฟังก์ชัน |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `$null` | อาร์เรย์ของคำสั่ง PowerShell ที่ใช้เป็นเครื่องมือ |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | อาร์เรย์ของชื่อคำสั่งที่ไม่ต้องการการยืนยัน |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | .DESCRIPTION
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |
| `-Attachments` | Object | — | — | Named | — | ไฟล์แนบที่จะรวมไว้ในการสอบถาม LLM |
| `-ImageDetail` | Object | — | — | Named | — | ระดับรายละเอียดของภาพสำหรับการสอบถาม LLM |
| `-TTLSeconds` | Object | — | — | Named | — | เวลาในการใช้งาน (Time-to-live) เป็นวินาทีสำหรับการสอบถาม LLM |
| `-IncludeThoughts` | Object | — | — | Named | — | ===== ข้อความที่ต้องแปล =====

## SYNOPSIS
รับรายการออบเจ็กต์ในคอนเทนเนอร์

## SYNTAX
```
Get-ChildItem [[-Path] <string[]>] [[-Filter] <string>] [-Include <string[]>] [-Exclude <string[]>] [-Recurse] [-Depth <uint32>] [-Force] [-Name] [-UseTransaction] [-Attributes <FlagsExpression[FileAttributes]>] [-Directory] [-File] [-Hidden] [-ReadOnly] [-System] [<CommonParameters>]
```

## DESCRIPTION
`Get-ChildItem` cmdlet รับรายการออบเจ็กต์ในตำแหน่งที่ระบุ ตัวอย่างเช่น ถ้าตำแหน่งเป็นไดเรกทอรี `Get-ChildItem` จะส่งคืนไฟล์และไดเรกทอรีย่อย ถ้าตำแหน่งเป็นคีย์รีจิสทรี `Get-ChildItem` จะส่งคืนคีย์ย่อยและรายการรีจิสทรี

## PARAMETERS

### -Attributes
รับเฉพาะไฟล์และไดเรกทอรีที่รองรับแอตทริบิวต์ที่ระบุ พารามิเตอร์นี้รองรับแอตทริบิวต์ทั้งหมดและให้ความยืดหยุ่นในการสอบถามแอตทริบิวต์แบบผสม

### -Directory
รับเฉพาะไดเรกทอรี (โฟลเดอร์) โดยไม่รวมไฟล์

### -File
รับเฉพาะไฟล์ โดยไม่รวมไดเรกทอรี

### -Hidden
รวมเฉพาะรายการที่ซ่อนไว้

### -ReadOnly
รวมเฉพาะรายการแบบอ่านอย่างเดียว

### -System
รวมเฉพาะรายการระบบ

### -Force
บังคับให้แสดงรายการที่ซ่อนไว้หรือไม่สามารถเข้าถึงได้

### -Recurse
เรียกดูไดเรกทอรีย่อยทั้งหมดซ้ำ

### -Depth
จำกัดความลึกของการเรียกดูซ้ำ

### -Path
ระบุเส้นทางไปยังตำแหน่ง

### -Filter
ระบุตัวกรองเพื่อจำกัดผลลัพธ์

### -Include
รวมเฉพาะรายการที่ตรงกับรูปแบบที่ระบุ

### -Exclude
ไม่รวมรายการที่ตรงกับรูปแบบที่ระบุ

### -Name
ส่งคืนเฉพาะชื่อของรายการ

### -UseTransaction
รวมคำสั่งในธุรกรรมที่ใช้งานอยู่

## INPUTS

```
System.String
```
คุณสามารถไพพ์สตริงที่มีเส้นทางไปยัง `Get-ChildItem`

## OUTPUTS

```
System.IO.FileInfo, System.IO.DirectoryInfo, หรือสตริง
```

## EXAMPLE 1

```powershell
Get-ChildItem -Path C:\Windows
```

คำสั่งนี้รับรายการในไดเรกทอรี C:\Windows

## EXAMPLE 2

```powershell
Get-ChildItem -Path *.txt -Recurse
```

คำสั่งนี้รับไฟล์ .txt ทั้งหมดในไดเรกทอรีปัจจุบันและไดเรกทอรีย่อยทั้งหมด

## RELATED LINKS

[Get-Item](https://learn.microsoft.com/powershell/module/microsoft.powershell.management/get-item)

[Set-Item](https://learn.microsoft.com/powershell/module/microsoft.powershell.management/set-item)

[Remove-Item](https://learn.microsoft.com/powershell/module/microsoft.powershell.management/remove-item) |
| `-OutputMarkdownBlocksOnly` | Object | — | — | Named | — | .PARAMETER  FilePath
ระบุเส้นทางไปยังแฟ้มที่จะส่งออก

.PARAMETER  Force
แทนที่แฟ้มที่มีอยู่โดยไม่ต้องยืนยัน

.PARAMETER  Credential
ระบุบัญชีผู้ใช้ที่มีสิทธิ์ในการดำเนินการนี้

.EXAMPLE
C:\PS> Export-CliXml -Path .\data.clixml

คำอธิบาย
---------
คำสั่งนี้จะส่งออกข้อมูลไปยังแฟ้ม data.clixml

.EXAMPLE
C:\PS> Export-CliXml -Path .\data.clixml -Force

คำอธิบาย
---------
คำสั่งนี้จะแทนที่แฟ้มที่มีอยู่โดยไม่ต้องยืนยัน

.EXAMPLE
C:\PS> Get-Process | Export-CliXml -Path .\processes.clixml

คำอธิบาย
---------
คำสั่งนี้จะส่งออกกระบวนการปัจจุบันไปยังแฟ้ม processes.clixml |
| `-MarkupBlocksTypeFilter` | Object | — | — | Named | — | กรองชนิดบล็อกมาร์กอัปในคำตอบของ LLM |
| `-ChatOnce` | Object | — | — | Named | — | เมื่อคุณใช้พารามิเตอร์ Restart ในคำสั่ง Start-Job แต่คำสั่งทำงานบนคอมพิวเตอร์ระยะไกลที่ระบุพารามิเตอร์ PSComputerName หรือพารามิเตอร์ ApplicationName แล้ว Job จะถูกสร้างขึ้นมาใหม่โดยไม่มีข้อมูลเฉพาะของคอมพิวเตอร์ระยะไกลเหล่านั้น ซึ่งคุณอาจไม่เห็นถึงการเปลี่ยนแปลงนี้

โปรดทราบ: Job ที่สร้างขึ้นมาครั้งแรกยังคงมีอยู่ซึ่งคุณอาจต้องลบทิ้ง |
| `-MaxToolcallBackLength` | Object | — | — | Named | — | ความยาวสูงสุดในการเรียกเครื่องมือกลับสำหรับคำสั่ง LLM |
| `-AudioTemperature` | Object | — | — | Named | — | อุณหภูมิสำหรับการสร้างเสียง. |
| `-TemperatureResponse` | Object | — | — | Named | — | อุณหภูมิสำหรับการสร้างคำตอบ |
| `-Language` | Object | — | — | Named | — | ภาษาแบบสอบถาม LLM |
| `-CpuThreads` | Object | — | — | Named | — | จำนวนเธรด CPU ที่จะใช้ |
| `-SuppressRegex` | Object | — | — | Named | — | นิพจน์ทั่วไปเพื่อระงับผลลัพธ์ |
| `-AudioContextSize` | Object | — | — | Named | — | ขนาดบริบทเสียงสำหรับการสอบถาม LLM |
| `-SilenceThreshold` | Object | — | — | Named | — | ค่าระดับความเงียบสำหรับการประมวลผลเสียง |
| `-LengthPenalty` | Object | — | — | Named | — | การลงโทษความยาวสำหรับผลลัพธ์ของ LLM |
| `-EntropyThreshold` | Object | — | — | Named | — | เกณฑ์เอนโทรปีสำหรับเอาต์พุต LLM |
| `-LogProbThreshold` | Object | — | — | Named | — | เกณฑ์ความน่าจะเป็นล็อกสำหรับเอาท์พุต LLM |
| `-NoSpeechThreshold` | Object | — | — | Named | — | ไม่มีเกณฑ์การเริ่มพูดสำหรับการประมวลผลเสียง |
| `-DontSpeak` | Object | — | — | Named | — | .PARAMETER <ComputerName>
ระบุชื่อคอมพิวเตอร์หนึ่งชื่อหรือมากกว่า (ใช้ NetBIOS, IP หรือ FQDN)

.PARAMETER <Credential>
ระบุบัญชีผู้ใช้ที่จำเป็นต้องใช้เพื่อดำเนินการตาม cmdlet โดยใช้บัญชีอื่น

.PARAMETER <ThrottleLimit>
ระบุจำนวนสูงสุดของกระบวนการทำงานพร้อมกันที่สามารถสร้างขึ้นเพื่อรันคำสั่ง

.INPUTS
System.String[]
คุณสามารถส่งชื่อคอมพิวเตอร์ผ่านทางไพพ์ไปยัง Invoke-Command

.OUTPUTS
Microsoft.PowerShell.Commands.InvokeCommand+InvokeCommandResult

. NOTES

AUTHOR: ผู้เขียน
LASTEDIT: 26 มิถุนายน 2555

. ตัวอย่าง

# ตัวอย่าง 1

PS C:\> $MyCode = { $PSVersionTable.PSVersion; Get-WmiObject -Class Win32_OperatingSystem | Select-Object -Property CSName }
Invoke-Command -ComputerName Server64 -ScriptBlock $MyCode

# ตัวอย่างแบบยาว

PS C:\> $s = New-PSSession -ComputerName Server64, Server65
Invoke-Command -Session $s -ScriptBlock { Get-EventLog -LogName Security -Newest 50 }

# ตัวอย่างนี้ใช้คอมพิวเตอร์ที่ระบุและรับข้อมูลจากอีเวนต์ล็อกความปลอดภัย 50 รายการล่าสุด |
| `-DontSpeakThoughts` | Object | — | — | Named | — | .DESCRIPTION
The `Get-Process` cmdlet retrieves the processes running on a local computer or a remote computer. Without parameters, this cmdlet gets all processes on the local computer. You can also specify a particular process by process name or process ID (PID) or pass a process object through the pipeline to this cmdlet.

This cmdlet can also retrieve processes on remote computers using the `ComputerName` parameter. You can use this cmdlet to get process objects that you can then use with cmdlets like `Stop-Process`.

By default, this cmdlet returns a process object that has detailed information about the process, including the process name, ID, priority class, and memory usage. You can use the `Format-*` cmdlets, such as `Format-Table` and `Format-List`, to determine which process properties are displayed. |
| `-NoVOX` | Object | — | — | Named | — | ปิดการใช้งาน VOX สำหรับเอาต์พุตเสียง |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | ใช้การบันทึกเสียงเดสก์ท็อป |
| `-NoContext` | Object | — | — | Named | — | .PARAMETER LogFilePath
พาธไปยังไฟล์ล็อก |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ช |
| `-OnlyResponses` | Object | — | — | Named | — | นี่คือตัวอย่างข้อความช่วยเหลือของ cmdlet PowerShell ที่ต้องแปลเป็นภาษาไทย (ประเทศไทย) |

## Examples

### $errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {     My-ScriptThatFails }

```powershell
$errorInfo = Get-ScriptExecutionErrorFixPrompt -Script {
    My-ScriptThatFails
}
```

### getfixprompt { Get-ChildItem -NotExistingParameter } ##############################################################################

```powershell
getfixprompt { Get-ChildItem -NotExistingParameter }
##############################################################################
```

## Parameter Details

### `-Script <ScriptBlock>`

> สคริปต์ที่ต้องดำเนินการและวิเคราะห์หาข้อผิดพลาด

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
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
### `-LLMQueryType <String>`

> ประเภทของการสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
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
### `-TimeoutSeconds <Int32>`

> หมดเวลาสำหรับการดำเนินการ AI ในหน่วยวินาที

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
| **Default value** | `$null` |
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
### `-DontAddThoughtsToHistory`

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
### `-Attachments <Object>`

> ไฟล์แนบที่จะรวมไว้ในการสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <Object>`

> ระดับรายละเอียดของภาพสำหรับการสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TTLSeconds <Object>`

> เวลาในการใช้งาน (Time-to-live) เป็นวินาทีสำหรับการสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts <Object>`

> ===== ข้อความที่ต้องแปล =====

## SYNOPSIS
รับรายการออบเจ็กต์ในคอนเทนเนอร์

## SYNTAX
```
Get-ChildItem [[-Path] <string[]>] [[-Filter] <string>] [-Include <string[]>] [-Exclude <string[]>] [-Recurse] [-Depth <uint32>] [-Force] [-Name] [-UseTransaction] [-Attributes <FlagsExpression[FileAttributes]>] [-Directory] [-File] [-Hidden] [-ReadOnly] [-System] [<CommonParameters>]
```

## DESCRIPTION
`Get-ChildItem` cmdlet รับรายการออบเจ็กต์ในตำแหน่งที่ระบุ ตัวอย่างเช่น ถ้าตำแหน่งเป็นไดเรกทอรี `Get-ChildItem` จะส่งคืนไฟล์และไดเรกทอรีย่อย ถ้าตำแหน่งเป็นคีย์รีจิสทรี `Get-ChildItem` จะส่งคืนคีย์ย่อยและรายการรีจิสทรี

## PARAMETERS

### -Attributes
รับเฉพาะไฟล์และไดเรกทอรีที่รองรับแอตทริบิวต์ที่ระบุ พารามิเตอร์นี้รองรับแอตทริบิวต์ทั้งหมดและให้ความยืดหยุ่นในการสอบถามแอตทริบิวต์แบบผสม

### -Directory
รับเฉพาะไดเรกทอรี (โฟลเดอร์) โดยไม่รวมไฟล์

### -File
รับเฉพาะไฟล์ โดยไม่รวมไดเรกทอรี

### -Hidden
รวมเฉพาะรายการที่ซ่อนไว้

### -ReadOnly
รวมเฉพาะรายการแบบอ่านอย่างเดียว

### -System
รวมเฉพาะรายการระบบ

### -Force
บังคับให้แสดงรายการที่ซ่อนไว้หรือไม่สามารถเข้าถึงได้

### -Recurse
เรียกดูไดเรกทอรีย่อยทั้งหมดซ้ำ

### -Depth
จำกัดความลึกของการเรียกดูซ้ำ

### -Path
ระบุเส้นทางไปยังตำแหน่ง

### -Filter
ระบุตัวกรองเพื่อจำกัดผลลัพธ์

### -Include
รวมเฉพาะรายการที่ตรงกับรูปแบบที่ระบุ

### -Exclude
ไม่รวมรายการที่ตรงกับรูปแบบที่ระบุ

### -Name
ส่งคืนเฉพาะชื่อของรายการ

### -UseTransaction
รวมคำสั่งในธุรกรรมที่ใช้งานอยู่

## INPUTS

```
System.String
```
คุณสามารถไพพ์สตริงที่มีเส้นทางไปยัง `Get-ChildItem`

## OUTPUTS

```
System.IO.FileInfo, System.IO.DirectoryInfo, หรือสตริง
```

## EXAMPLE 1

```powershell
Get-ChildItem -Path C:\Windows
```

คำสั่งนี้รับรายการในไดเรกทอรี C:\Windows

## EXAMPLE 2

```powershell
Get-ChildItem -Path *.txt -Recurse
```

คำสั่งนี้รับไฟล์ .txt ทั้งหมดในไดเรกทอรีปัจจุบันและไดเรกทอรีย่อยทั้งหมด

## RELATED LINKS

[Get-Item](https://learn.microsoft.com/powershell/module/microsoft.powershell.management/get-item)

[Set-Item](https://learn.microsoft.com/powershell/module/microsoft.powershell.management/set-item)

[Remove-Item](https://learn.microsoft.com/powershell/module/microsoft.powershell.management/remove-item)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly <Object>`

> .PARAMETER  FilePath
ระบุเส้นทางไปยังแฟ้มที่จะส่งออก

.PARAMETER  Force
แทนที่แฟ้มที่มีอยู่โดยไม่ต้องยืนยัน

.PARAMETER  Credential
ระบุบัญชีผู้ใช้ที่มีสิทธิ์ในการดำเนินการนี้

.EXAMPLE
C:\PS> Export-CliXml -Path .\data.clixml

คำอธิบาย
---------
คำสั่งนี้จะส่งออกข้อมูลไปยังแฟ้ม data.clixml

.EXAMPLE
C:\PS> Export-CliXml -Path .\data.clixml -Force

คำอธิบาย
---------
คำสั่งนี้จะแทนที่แฟ้มที่มีอยู่โดยไม่ต้องยืนยัน

.EXAMPLE
C:\PS> Get-Process | Export-CliXml -Path .\processes.clixml

คำอธิบาย
---------
คำสั่งนี้จะส่งออกกระบวนการปัจจุบันไปยังแฟ้ม processes.clixml

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <Object>`

> กรองชนิดบล็อกมาร์กอัปในคำตอบของ LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce <Object>`

> เมื่อคุณใช้พารามิเตอร์ Restart ในคำสั่ง Start-Job แต่คำสั่งทำงานบนคอมพิวเตอร์ระยะไกลที่ระบุพารามิเตอร์ PSComputerName หรือพารามิเตอร์ ApplicationName แล้ว Job จะถูกสร้างขึ้นมาใหม่โดยไม่มีข้อมูลเฉพาะของคอมพิวเตอร์ระยะไกลเหล่านั้น ซึ่งคุณอาจไม่เห็นถึงการเปลี่ยนแปลงนี้

โปรดทราบ: Job ที่สร้างขึ้นมาครั้งแรกยังคงมีอยู่ซึ่งคุณอาจต้องลบทิ้ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Object>`

> ความยาวสูงสุดในการเรียกเครื่องมือกลับสำหรับคำสั่ง LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Object>`

> อุณหภูมิสำหรับการสร้างเสียง.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Object>`

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
### `-Language <Object>`

> ภาษาแบบสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Object>`

> จำนวนเธรด CPU ที่จะใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <Object>`

> นิพจน์ทั่วไปเพื่อระงับผลลัพธ์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Object>`

> ขนาดบริบทเสียงสำหรับการสอบถาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Object>`

> ค่าระดับความเงียบสำหรับการประมวลผลเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Object>`

> การลงโทษความยาวสำหรับผลลัพธ์ของ LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Object>`

> เกณฑ์เอนโทรปีสำหรับเอาต์พุต LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Object>`

> เกณฑ์ความน่าจะเป็นล็อกสำหรับเอาท์พุต LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Object>`

> ไม่มีเกณฑ์การเริ่มพูดสำหรับการประมวลผลเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak <Object>`

> .PARAMETER <ComputerName>
ระบุชื่อคอมพิวเตอร์หนึ่งชื่อหรือมากกว่า (ใช้ NetBIOS, IP หรือ FQDN)

.PARAMETER <Credential>
ระบุบัญชีผู้ใช้ที่จำเป็นต้องใช้เพื่อดำเนินการตาม cmdlet โดยใช้บัญชีอื่น

.PARAMETER <ThrottleLimit>
ระบุจำนวนสูงสุดของกระบวนการทำงานพร้อมกันที่สามารถสร้างขึ้นเพื่อรันคำสั่ง

.INPUTS
System.String[]
คุณสามารถส่งชื่อคอมพิวเตอร์ผ่านทางไพพ์ไปยัง Invoke-Command

.OUTPUTS
Microsoft.PowerShell.Commands.InvokeCommand+InvokeCommandResult

. NOTES

AUTHOR: ผู้เขียน
LASTEDIT: 26 มิถุนายน 2555

. ตัวอย่าง

# ตัวอย่าง 1

PS C:\> $MyCode = { $PSVersionTable.PSVersion; Get-WmiObject -Class Win32_OperatingSystem | Select-Object -Property CSName }
Invoke-Command -ComputerName Server64 -ScriptBlock $MyCode

# ตัวอย่างแบบยาว

PS C:\> $s = New-PSSession -ComputerName Server64, Server65
Invoke-Command -Session $s -ScriptBlock { Get-EventLog -LogName Security -Newest 50 }

# ตัวอย่างนี้ใช้คอมพิวเตอร์ที่ระบุและรับข้อมูลจากอีเวนต์ล็อกความปลอดภัย 50 รายการล่าสุด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts <Object>`

> .DESCRIPTION
The `Get-Process` cmdlet retrieves the processes running on a local computer or a remote computer. Without parameters, this cmdlet gets all processes on the local computer. You can also specify a particular process by process name or process ID (PID) or pass a process object through the pipeline to this cmdlet.

This cmdlet can also retrieve processes on remote computers using the `ComputerName` parameter. You can use this cmdlet to get process objects that you can then use with cmdlets like `Stop-Process`.

By default, this cmdlet returns a process object that has detailed information about the process, including the process name, ID, priority class, and memory usage. You can use the `Format-*` cmdlets, such as `Format-Table` and `Format-List`, to determine which process properties are displayed.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX <Object>`

> ปิดการใช้งาน VOX สำหรับเอาต์พุตเสียง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture <Object>`

> ใช้การบันทึกเสียงเดสก์ท็อป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext <Object>`

> .PARAMETER LogFilePath
พาธไปยังไฟล์ล็อก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy <Object>`

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
### `-OnlyResponses <Object>`

> นี่คือตัวอย่างข้อความช่วยเหลือของ cmdlet PowerShell ที่ต้องแปลเป็นภาษาไทย (ประเทศไทย)

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

- `Object[]`

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
