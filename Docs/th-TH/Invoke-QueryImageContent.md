# Invoke-QueryImageContent

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> วิเคราะห์เนื้อหารูปภาพโดยใช้ความสามารถ AI ด้านการมองเห็น

## Description

ประมวลผลภาพโดยใช้ความสามารถในการมองเห็นของ AI เพื่อวิเคราะห์เนื้อหาและตอบคำถามเกี่ยวกับภาพ ฟังก์ชันรองรับพารามิเตอร์การวิเคราะห์ต่างๆ รวมถึงการควบคุมอุณหภูมิสำหรับความสุ่มของคำตอบและขีดจำกัดโทเค็นสำหรับความยาวของผลลัพธ์

## Syntax

```powershell
Invoke-QueryImageContent -Query <String> -ImagePath <String> [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ChatOnce] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <String[]>] [-ForceConsent] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-ResponseFormat <String>] [-SessionOnly] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String | ✅ | — | 0 | — | สตริงคำค้นหาสำหรับการวิเคราะห์ภาพ |
| `-ImagePath` | String | ✅ | — | 1 | — | เส้นทางไปยังไฟล์รูปภาพสำหรับการวิเคราะห์ |
| `-Instructions` | String | — | — | 2 | — | .SYNOPSIS
    ดาวน์โหลดและเรียกใช้สคริปต์จากรีโพซิทอรี
.DESCRIPTION
    พารามิเตอร์ Uri จะกำหนด URI เพื่อดาวน์โหลดเนื้อหาสคริปต์ไปยังเครื่องโลคอล จากนั้นจึงรันสคริปต์ในขอบเขตปัจจุบัน
    พฤติกรรมเริ่มต้นของสวิตช์คือ $true เมื่อระบุพารามิเตอร์ ตัวอย่างเช่น ถ้าระบุ -Uri ค่าเริ่มต้นของสวิตช์จะถูกตั้งค่า
    เป็น $true |
| `-ResponseFormat` | String | — | — | Named | `$null` | สคริปต์ JSON สำหรับรูปแบบเอาต์พุตที่ร้องขอ |
| `-Temperature` | Double | — | — | Named | `-1` | อุณหภูมิสำหรับการสุ่มการตอบสนอง (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | ระดับรายละเอียดของภาพ |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | ประเภทของการสอบถาม LLM |
| `-Model` | String | — | — | Named | — | รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการดำเนินการ AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | หมดเวลาสำหรับการดำเนินการ AI ในหน่วยวินาที |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
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
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |
| `-Functions` | String[] | — | — | Named | — | ระบุฟังก์ชันที่จะใช้สำหรับการดำเนินการ AI |
| `-ExposedCmdLets` | String[] | — | — | Named | — | ระบุ cmdlet ที่เปิดเผยสำหรับการดำเนินการ AI |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | ระบุชื่อฟังก์ชันเครื่องมือที่ไม่ต้องยืนยัน |
| `-AudioTemperature` | Double | — | — | Named | — | อุณหภูมิสำหรับการสร้างการตอบสนองด้วยเสียง |
| `-TemperatureResponse` | Double | — | — | Named | — | อุณหภูมิสำหรับการสร้างคำตอบ |
| `-Language` | String | — | — | Named | — | ภาษาสำหรับคำอธิบายและคำสำคัญที่สร้างขึ้น |
| `-CpuThreads` | Int32 | — | — | Named | — | จำนวนเธรด CPU ที่จะใช้ |
| `-SuppressRegex` | String | — | — | Named | — | นิพจน์ทั่วไปเพื่อระงับผลลัพธ์ |
| `-AudioContextSize` | Int32 | — | — | Named | — | ขนาดบริบทเสียงสำหรับการประมวลผล |
| `-SilenceThreshold` | Double | — | — | Named | — | ค่าระดับความเงียบสำหรับการประมวลผลเสียง |
| `-LengthPenalty` | Double | — | — | Named | — | การลงโทษความยาวสำหรับการสร้างลำดับ |
| `-EntropyThreshold` | Double | — | — | Named | — | เกณฑ์ค่าเอนโทรปีสำหรับการกรองผลลัพธ์ |
| `-LogProbThreshold` | Double | — | — | Named | — | เกณฑ์ความน่าจะเป็นของล็อกสำหรับการกรองเอาต์พุต |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ไม่มีเกณฑ์การตรวจจับเสียงพูดสำหรับการตรวจจับเสียง |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .PARAMETER Wait
ระบุว่า cmdlet รอให้คำสั่งดำเนินการเสร็จสิ้นก่อนจึงจะส่งกลับการควบคุมไปยังคอนโซล PowerShell |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | ถ้าระบุแล้ว ห้ามพูดความคิดของโมเดล |
| `-NoVOX` | SwitchParameter | — | — | Named | — | ถ้าระบุ จะปิดการใช้งาน VOX |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | หากระบุ ให้ใช้การบันทึกเสียงเดสก์ท็อป |
| `-NoContext` | SwitchParameter | — | — | Named | — | หากระบุ จะปิดการใช้บริบท |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ถ้าระบุ ให้ใช้กลยุทธ์การสุ่มตัวอย่างแบบ beam search |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | ถ้าระบุ ให้ส่งคืนเฉพาะคำตอบเท่านั้น |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | หากระบุ อย่าเพิ่มความคิดลงในประวัติ |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ต่อไปนี้เป็นเนื้อหาที่จะแปล:

.PARAMETER Name
ระบุชื่อของบัญชีผู้ใช้ Windows ที่จะรีเซ็ตรหัสผ่าน

.PARAMETER Password
ระบุรหัสผ่านใหม่สำหรับบัญชีผู้ใช้

.PARAMETER PassThru
ส่งคืนออบเจ็กต์ที่เป็นตัวแทนของบัญชีผู้ใช้ที่รีเซ็ตรหัสผ่านแล้ว

ตัวอย่างที่ 1: รีเซ็ตรหัสผ่านของผู้ใช้
Reset-WindowsUserPassword -Name "JohnDoe" -Password "NewP@ssword123"

ตัวอย่างที่ 2: รีเซ็ตรหัสผ่านและส่งคืนผลลัพธ์
$user = Reset-WindowsUserPassword -Name "JaneDoe" -Password "AnotherP@ss456" -PassThru |
| `-Speak` | SwitchParameter | — | — | Named | — | พูดผลลัพธ์ออกมา |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | พูดความคิดของโมเดล |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | คุณเป็นผู้ช่วยที่มีประโยชน์ที่ออกแบบมาเพื่อส่งออก JSON |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | กรองสำหรับประเภทบล็อกมาร์กอัป |
| `-ChatOnce` | SwitchParameter | — | — | Named | — | .EXTERNALHELP PSReadLine-help.xml |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | ปิดการแคชเซสชัน |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ความยาวสูงสุดของ callback สำหรับการเรียกใช้เครื่องมือ |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | บังคับให้แสดงข้อความยืนยันแม้ว่าจะตั้งค่าความชอบไว้สำหรับการติดตั้งแพคเกจ ImageSharp แล้วก็ตาม |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | ยินยอมโดยอัตโนมัติในการติดตั้งซอฟต์แวร์ของบริษัทอื่นและตั้งค่าสถานะถาวรสำหรับแพ็คเกจ ImageSharp |

## Examples

### Invoke-QueryImageContent `     -Query "What objects are in this image?" `     -ImagePath "C:\Images\sample.jpg" `     -Temperature 0.01

```powershell
Invoke-QueryImageContent `
    -Query "What objects are in this image?" `
    -ImagePath "C:\Images\sample.jpg" `
    -Temperature 0.01
```

วิเคราะห์ภาพที่มีขีดจำกัดอุณหภูมิและโทเค็นเฉพาะ

### Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-QueryImageContent -Query "Describe this image" -ImagePath "photo.webp" -ConsentToThirdPartySoftwareInstallation
```

### Query-Image "Describe this image" "C:\Images\photo.jpg"

```powershell
Query-Image "Describe this image" "C:\Images\photo.jpg"
```

การวิเคราะห์ภาพอย่างง่ายโดยใช้นามแฝงและพารามิเตอร์ตำแหน่ง

## Parameter Details

### `-Query <String>`

> สตริงคำค้นหาสำหรับการวิเคราะห์ภาพ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath <String>`

> เส้นทางไปยังไฟล์รูปภาพสำหรับการวิเคราะห์

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

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
| **Position?** | 2 |
| **Default value** | *(none)* |
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
| **Default value** | `'high'` |
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
| **Default value** | `'Pictures'` |
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
### `-Functions <String[]>`

> ระบุฟังก์ชันที่จะใช้สำหรับการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> ระบุ cmdlet ที่เปิดเผยสำหรับการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> ระบุชื่อฟังก์ชันเครื่องมือที่ไม่ต้องยืนยัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> อุณหภูมิสำหรับการสร้างการตอบสนองด้วยเสียง

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

> ภาษาสำหรับคำอธิบายและคำสำคัญที่สร้างขึ้น

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
### `-SuppressRegex <String>`

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
### `-LengthPenalty <Double>`

> การลงโทษความยาวสำหรับการสร้างลำดับ

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

> เกณฑ์ค่าเอนโทรปีสำหรับการกรองผลลัพธ์

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

> ไม่มีเกณฑ์การตรวจจับเสียงพูดสำหรับการตรวจจับเสียง

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

> .PARAMETER Wait
ระบุว่า cmdlet รอให้คำสั่งดำเนินการเสร็จสิ้นก่อนจึงจะส่งกลับการควบคุมไปยังคอนโซล PowerShell

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

> ถ้าระบุแล้ว ห้ามพูดความคิดของโมเดล

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

> ถ้าระบุ จะปิดการใช้งาน VOX

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

> หากระบุ ให้ใช้การบันทึกเสียงเดสก์ท็อป

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

> หากระบุ จะปิดการใช้บริบท

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

> ถ้าระบุ ให้ใช้กลยุทธ์การสุ่มตัวอย่างแบบ beam search

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

> ถ้าระบุ ให้ส่งคืนเฉพาะคำตอบเท่านั้น

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

> หากระบุ อย่าเพิ่มความคิดลงในประวัติ

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

> ต่อไปนี้เป็นเนื้อหาที่จะแปล:

.PARAMETER Name
ระบุชื่อของบัญชีผู้ใช้ Windows ที่จะรีเซ็ตรหัสผ่าน

.PARAMETER Password
ระบุรหัสผ่านใหม่สำหรับบัญชีผู้ใช้

.PARAMETER PassThru
ส่งคืนออบเจ็กต์ที่เป็นตัวแทนของบัญชีผู้ใช้ที่รีเซ็ตรหัสผ่านแล้ว

ตัวอย่างที่ 1: รีเซ็ตรหัสผ่านของผู้ใช้
Reset-WindowsUserPassword -Name "JohnDoe" -Password "NewP@ssword123"

ตัวอย่างที่ 2: รีเซ็ตรหัสผ่านและส่งคืนผลลัพธ์
$user = Reset-WindowsUserPassword -Name "JaneDoe" -Password "AnotherP@ss456" -PassThru

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

> พูดผลลัพธ์ออกมา

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

> พูดความคิดของโมเดล

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

> คุณเป็นผู้ช่วยที่มีประโยชน์ที่ออกแบบมาเพื่อส่งออก JSON

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

> กรองสำหรับประเภทบล็อกมาร์กอัป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ChatOnce`

> .EXTERNALHELP PSReadLine-help.xml

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

> ปิดการแคชเซสชัน

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

> ความยาวสูงสุดของ callback สำหรับการเรียกใช้เครื่องมือ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> บังคับให้แสดงข้อความยืนยันแม้ว่าจะตั้งค่าความชอบไว้สำหรับการติดตั้งแพคเกจ ImageSharp แล้วก็ตาม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> ยินยอมโดยอัตโนมัติในการติดตั้งซอฟต์แวร์ของบริษัทอื่นและตั้งค่าสถานะถาวรสำหรับแพ็คเกจ ImageSharp

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
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-LLMTextTransformation.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-AllImageMetaData.md)
