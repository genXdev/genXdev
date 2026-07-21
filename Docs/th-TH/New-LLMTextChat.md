# New-LLMTextChat

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** `llmchat`

## Synopsis

> เริ่มเซสชันแชทข้อความแบบโต้ตอบที่มีความสามารถของ AI

## Description

เริ่มต้นเซสชันสนทนาแบบโต้ตอบกับความสามารถ AI ช่วยให้ผู้ใช้สามารถเพิ่มหรือลบฟังก์ชัน PowerShell ระหว่างการสนทนาและเรียกใช้คำสั่ง PowerShell ฟังก์ชันนี้มีอินเทอร์เฟซที่ครอบคลุมสำหรับการสนทนาที่ขับเคลื่อนด้วย AI พร้อมการรวมเครื่องมือและตัวเลือกการปรับแต่งที่หลากหลาย

## Syntax

```powershell
New-LLMTextChat [[-Query] <String>] [<CommonParameters>]

New-LLMTextChat [[-Instructions] <String>] [[-Attachments] <String[]>] [[-Temperature] <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Object>] [-AudioTemperature <Object>] [-ClearSession] [-ContinueLast] [-CpuThreads <Object>] [-DontAddThoughtsToHistory] [-DontSpeak <Object>] [-DontSpeakThoughts <Object>] [-EntropyThreshold <Object>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <Object>] [-LengthPenalty <Object>] [-LLMQueryType <String>] [-LogProbThreshold <Object>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext <Object>] [-NoSessionCaching] [-NoSpeechThreshold <Object>] [-NoSupportForJsonSchema <String>] [-NoVOX <Object>] [-OnlyResponses <Object>] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-ShowToolChainInvocations] [-SilenceThreshold <Object>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <Object>] [-TemperatureResponse <Object>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture <Object>] [-WithBeamSearchSamplingStrategy <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | — | ✅ (ByValue) | 0 | `''` | .SYNOPSIS
    Get-WinEvent cmdlet รันการค้นหาตามเหตุการณ์ Windows และการสอบถามบันทึกเหตุการณ์

.DESCRIPTION
    Get-WinEvent cmdlet รันการค้นหาตามเหตุการณ์ Windows และการสอบถามบันทึกเหตุการณ์
    คุณสามารถใช้ Get-WinEvent เพื่อรับเหตุการณ์จากบันทึกเหตุการณ์ Windows และบันทึกการติดตามเหตุการณ์สำหรับ Windows (ETW) *(Parameter set: )* |
| `-Instructions` | String | — | — | 1 | — | .SYNOPSIS
    ดาวน์โหลดและเรียกใช้สคริปต์จากรีโพซิทอรี
.DESCRIPTION
    พารามิเตอร์ Uri จะกำหนด URI เพื่อดาวน์โหลดเนื้อหาสคริปต์ไปยังเครื่องโลคอล จากนั้นจึงรันสคริปต์ในขอบเขตปัจจุบัน
    พฤติกรรมเริ่มต้นของสวิตช์คือ $true เมื่อระบุพารามิเตอร์ ตัวอย่างเช่น ถ้าระบุ -Uri ค่าเริ่มต้นของสวิตช์จะถูกตั้งค่า
    เป็น $true |
| `-Attachments` | String[] | — | — | 2 | `@()` | อาร์เรย์ของเส้นทางไฟล์ที่จะแนบ |
| `-Temperature` | Double | — | — | 3 | `-1` | อุณหภูมิสำหรับการสุ่มการตอบสนอง (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | ระดับรายละเอียดของภาพ |
| `-ResponseFormat` | String | — | — | Named | `$null` | สคริปต์ JSON สำหรับรูปแบบเอาต์พุตที่ร้องขอ |
| `-LLMQueryType` | String | — | — | Named | `'ToolUse'` | ประเภทของการสอบถาม LLM |
| `-Model` | String | — | — | Named | — | รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการดำเนินการ AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-ShowToolChainInvocations` | SwitchParameter | — | — | Named | — | แสดงการเรียกใช้งานเครื่องมือในคอนโซล |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | หมดเวลาสำหรับการดำเนินการ AI ในหน่วยวินาที |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | อาร์เรย์ของคำสั่ง PowerShell ที่ใช้เป็นเครื่องมือ |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` | จะแสดงเฉพาะบล็อกมาร์กอัปของประเภทที่ระบุ |
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
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | จะแสดงเฉพาะบล็อกมาร์กอัปเท่านั้น |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | ใช้ภายใน เพื่อเรียกใช้โหมดแชทเพียงครั้งเดียวหลังจากการเรียกใช้งาน llm *(hidden)* |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | อย่าเก็บเซสชันในแคชเซสชัน |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | ชื่อของฟังก์ชันเครื่องมือที่ไม่ควรต้องการการยืนยัน |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ความยาวสูงสุดสำหรับการตอบกลับการเรียกกลับเครื่องมือ |
| `-AudioTemperature` | Object | — | — | Named | — | อุณหภูมิสำหรับการสร้างเสียง |
| `-TemperatureResponse` | Object | — | — | Named | — | อุณหภูมิสำหรับการสร้างคำตอบ |
| `-Language` | Object | — | — | Named | — | ภาษาสำหรับโมเดลหรือผลลัพธ์ |
| `-CpuThreads` | Object | — | — | Named | — | จำนวนเธรด CPU ที่จะใช้ |
| `-SuppressRegex` | Object | — | — | Named | — | นิพจน์ปกติเพื่อระงับผลลัพธ์ |
| `-AudioContextSize` | Object | — | — | Named | — | ขนาดบริบทเสียงสำหรับการประมวลผล |
| `-SilenceThreshold` | Object | — | — | Named | — | เกณฑ์ความเงียบสำหรับการประมวลผลเสียง |
| `-LengthPenalty` | Object | — | — | Named | — | บทลงโทษความยาวสำหรับการสร้างลำดับ |
| `-EntropyThreshold` | Object | — | — | Named | — | เกณฑ์ค่าเอนโทรปีสำหรับการกรองเอาต์พุต |
| `-LogProbThreshold` | Object | — | — | Named | — | เกณฑ์ความน่าจะเป็นของล็อกสำหรับการกรองเอาต์พุต |
| `-NoSpeechThreshold` | Object | — | — | Named | — | ไม่มีเกณฑ์ขั้นต่ำเสียงสำหรับการตรวจจับเสียง |
| `-DontSpeak` | Object | — | — | Named | — | ปิดใช้งานการส่งออกเสียง |
| `-DontSpeakThoughts` | Object | — | — | Named | — | ปิดใช้งานการส่งออกเสียงสำหรับความคิด |
| `-NoVOX` | Object | — | — | Named | — | ปิดการใช้งาน VOX (การเปิดใช้งานด้วยเสียง) |
| `-UseDesktopAudioCapture` | Object | — | — | Named | — | ใช้การบันทึกเสียงเดสก์ท็อป |
| `-NoContext` | Object | — | — | Named | — | ปิดการใช้งานบริบท |
| `-WithBeamSearchSamplingStrategy` | Object | — | — | Named | — | ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ช |
| `-OnlyResponses` | Object | — | — | Named | — | บทความนี้มีไว้เพื่อวัตถุประสงค์ในการให้ข้อมูลเท่านั้น Microsoft ไม่ให้การรับประกันใดๆ ไม่ว่าจะโดยชัดแจ้งหรือโดยนัย ในส่วนที่เกี่ยวกับข้อมูลในที่นี้ |

## Examples

### New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `     -Instructions "You are a helpful AI assistant"

```powershell
New-LLMTextChat -Model "qwen2.5-14b-instruct" -Temperature 0.7 `
    -Instructions "You are a helpful AI assistant"
```

### llmchat "Tell me a joke" -Speak -IncludeThoughts

```powershell
llmchat "Tell me a joke" -Speak -IncludeThoughts
```

## Parameter Details

### `-Query <String>`

> .SYNOPSIS
    Get-WinEvent cmdlet รันการค้นหาตามเหตุการณ์ Windows และการสอบถามบันทึกเหตุการณ์

.DESCRIPTION
    Get-WinEvent cmdlet รันการค้นหาตามเหตุการณ์ Windows และการสอบถามบันทึกเหตุการณ์
    คุณสามารถใช้ Get-WinEvent เพื่อรับเหตุการณ์จากบันทึกเหตุการณ์ Windows และบันทึกการติดตามเหตุการณ์สำหรับ Windows (ETW)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-Instructions <String>`

> .SYNOPSIS
    ดาวน์โหลดและเรียกใช้สคริปต์จากรีโพซิทอรี
.DESCRIPTION
    พารามิเตอร์ Uri จะกำหนด URI เพื่อดาวน์โหลดเนื้อหาสคริปต์ไปยังเครื่องโลคอล จากนั้นจึงรันสคริปต์ในขอบเขตปัจจุบัน
    พฤติกรรมเริ่มต้นของสวิตช์คือ $true เมื่อระบุพารามิเตอร์ ตัวอย่างเช่น ถ้าระบุ -Uri ค่าเริ่มต้นของสวิตช์จะถูกตั้งค่า
    เป็น $true

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
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
| **Position?** | 3 |
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
### `-ResponseFormat <String>`

> สคริปต์ JSON สำหรับรูปแบบเอาต์พุตที่ร้องขอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
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
| **Default value** | `'ToolUse'` |
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
### `-ShowToolChainInvocations`

> แสดงการเรียกใช้งานเครื่องมือในคอนโซล

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
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> อาร์เรย์ของคำสั่ง PowerShell ที่ใช้เป็นเครื่องมือ

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

> จะแสดงเฉพาะบล็อกมาร์กอัปของประเภทที่ระบุ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@('json', 'powershell', 'C#', 'python', 'javascript', 'typescript', 'html', 'css', 'yaml', 'xml', 'bash')` |
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
### `-OutputMarkdownBlocksOnly`

> จะแสดงเฉพาะบล็อกมาร์กอัปเท่านั้น

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
### `-NoConfirmationToolFunctionNames <String[]>`

> ชื่อของฟังก์ชันเครื่องมือที่ไม่ควรต้องการการยืนยัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> ความยาวสูงสุดสำหรับการตอบกลับการเรียกกลับเครื่องมือ

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

> อุณหภูมิสำหรับการสร้างเสียง

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

> ภาษาสำหรับโมเดลหรือผลลัพธ์

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

> นิพจน์ปกติเพื่อระงับผลลัพธ์

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
### `-SilenceThreshold <Object>`

> เกณฑ์ความเงียบสำหรับการประมวลผลเสียง

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
### `-EntropyThreshold <Object>`

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
### `-LogProbThreshold <Object>`

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
### `-NoSpeechThreshold <Object>`

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
### `-DontSpeak <Object>`

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
### `-DontSpeakThoughts <Object>`

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
### `-NoVOX <Object>`

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

> ปิดการใช้งานบริบท

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

> บทความนี้มีไว้เพื่อวัตถุประสงค์ในการให้ข้อมูลเท่านั้น Microsoft ไม่ให้การรับประกันใดๆ ไม่ว่าจะโดยชัดแจ้งหรือโดยนัย ในส่วนที่เกี่ยวกับข้อมูลในที่นี้

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-LLMAudioChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Test-DeepLinkImageFile.md)
