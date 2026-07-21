# ConvertFrom-DiplomaticSpeak

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `undiplomatize`

## Synopsis

> แปลงภาษาที่มีชั้นเชิงหรือภาษาแบบทูตให้เป็นภาษาที่ตรงไปตรงมา ชัดเจน และเข้าใจง่าย

## Description

ฟังก์ชันนี้ใช้ภาษาทางการทูตและแปลความหมายเพื่อเปิดเผยความหมายที่แท้จริงเบื้องหลังคำพูดที่สุภาพหรือภาษาที่ถูกต้องทางการเมือง โดยใช้โมเดลภาษา AI เพื่อแปลงสำนวนที่ใช้การกล่าวอ้อมเป็นข้อความที่ตรงไปตรงมา ทำให้การสื่อสารไม่คลุมเครือและเข้าใจง่าย ฟังก์ชันนี้มีประโยชน์อย่างยิ่งสำหรับการวิเคราะห์คำพูดทางการเมือง การสื่อสารทางธุรกิจ หรือข้อความใดๆ ที่ความหมายที่แท้จริงอาจถูกบดบังด้วยภาษาทางการทูต

## Syntax

```powershell
ConvertFrom-DiplomaticSpeak [[-Text] <String>] [[-Instructions] <String>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-Attachments <Object[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <Object[]>] [-Functions <Object[]>] [-ImageDetail <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-SpeakThoughts] [-SuppressRegex <String[]>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | ข้อความที่จะแปลงจากภาษาทางการทูต |
| `-Instructions` | String | — | — | 1 | `''` | อย่าสับสนระหว่างเนื้อหาที่ต้องแปลซึ่งเป็นข้อความช่วยเหลือของ cmdlet ของ PowerShell กับคำแนะนำ!
อย่าแทรกรูปภาพหรือสิ่งใดๆ เพียงแค่แปลเนื้อหาให้ตรงตามตัวมากที่สุดเป็น: ภาษาไทย (ประเทศไทย) |
| `-Temperature` | Double | — | — | Named | `0.0` | อุณหภูมิสำหรับการสุ่มการตอบสนอง (0.0-1.0) |
| `-LLMQueryType` | String | — | — | Named | `'Knowledge'` | ประเภทของการสอบถาม LLM |
| `-Model` | String | — | — | Named | — | รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการดำเนินการ AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | หมดเวลาสำหรับการดำเนินการ AI ในหน่วยวินาที |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | คัดลอกข้อความที่แปลงแล้วไปยังคลิปบอร์ด |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |
| `-Attachments` | Object[] | — | — | Named | — | ไฟล์แนบที่ต้องรวมในการดำเนินการ AI |
| `-ImageDetail` | String | — | — | Named | — | ระดับรายละเอียดของภาพสำหรับการประมวลผลด้วย AI |
| `-Functions` | Object[] | — | — | Named | — | ฟังก์ชันเพื่อเปิดเผยให้กับโมเดล AI |
| `-ExposedCmdLets` | Object[] | — | — | Named | — | Cmdlets เพื่อเปิดเผยให้กับโมเดล AI |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | ชื่อฟังก์ชันเครื่องมือที่ไม่ต้องการการยืนยัน |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | อย่าเพิ่มความคิดลงในประวัติ AI |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | ดำเนินการต่อจาก AI ครั้งก่อน |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | พูดความคิดออกมาดัง ๆ ระหว่างการประมวลผล AI |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | ปิดการแคชเซสชันสำหรับการดำเนินการนี้ |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | อนุญาตให้ใช้เครื่องมือเริ่มต้นในการดำเนินการ AI |
| `-AudioTemperature` | Double | — | — | Named | — | อุณหภูมิเสียงสำหรับการสร้างเสียงด้วย AI |
| `-TemperatureResponse` | Double | — | — | Named | — | อุณหภูมิสำหรับการสร้างคำตอบของ AI |
| `-CpuThreads` | Int32 | — | — | Named | — | จำนวนเธรด CPU ที่ใช้สำหรับการดำเนินการ AI |
| `-SuppressRegex` | String[] | — | — | Named | — | นิพจน์ทั่วไปเพื่อระงับในผลลัพธ์ AI |
| `-AudioContextSize` | Int32 | — | — | Named | — | ขนาดบริบทเสียงสำหรับการประมวลผลเสียงด้วย AI |
| `-SilenceThreshold` | Double | — | — | Named | — | เกณฑ์ความเงียบสำหรับการประมวลผลเสียงของ AI |
| `-LengthPenalty` | Double | — | — | Named | — | การลงโทษความยาวสำหรับการสร้างลำดับของ AI |
| `-EntropyThreshold` | Double | — | — | Named | — | เกณฑ์เอนโทรปีสำหรับผลลัพธ์ของ AI |
| `-LogProbThreshold` | Double | — | — | Named | — | เกณฑ์ความน่าจะเป็นของล็อกสำหรับผลลัพธ์ของ AI. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | ไม่มีเกณฑ์การพูดสำหรับการประมวลผลเสียงของ AI |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    สร้างไฟล์โฟลเดอร์ใหม่ (mklink)
.DESCRIPTION
    สร้างลิงก์สัญลักษณ์หรือฮาร์ดลิงก์ไปยังไฟล์หรือไดเรกทอรี
.PARAMETER Path
    เส้นทางของลิงก์
.PARAMETER Target
    เส้นทางของเป้าหมายที่ลิงก์จะชี้ไป
.PARAMETER Type
    ประเภทของลิงก์: SymbolicLink, Junction, หรือ HardLink
.PARAMETER PassThru
    ส่งคืนวัตถุที่สร้างขึ้น
.EXAMPLE
    New-Item -ItemType SymbolicLink -Path .\Link -Target .\TargetFile.txt
.EXAMPLE
    New-Item -ItemType Junction -Path .\LinkDir -Target C:\TargetDir |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | .EXAMPLE

PS C:> Get-HotFix | Where-Object { $_.InstalledOn -gt (Get-Date).AddDays(-30) }

คำสั่งนี้แสดงรายการโปรแกรมปรับปรุงทั้งหมดที่ติดตั้งใน 30 วันที่ผ่านมา |
| `-NoVOX` | SwitchParameter | — | — | Named | — | ปิดการใช้งาน VOX สำหรับการส่งออกเสียงของ AI |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | ใช้การจับเสียงเดสก์ท็อปสำหรับเสียง AI |
| `-NoContext` | SwitchParameter | — | — | Named | — | คุณคือผู้ช่วยที่เป็นประโยชน์ที่ออกแบบมาเพื่อส่งออก JSON |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ชสำหรับ AI |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | คุณคือผู้ช่วยที่มีประโยชน์ซึ่งออกแบบมาเพื่อแสดงผล JSON |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | .SYNOPSIS
    ดาวน์โหลด Git จากแหล่งที่มาที่ใกล้ที่สุด

.DESCRIPTION
    ดาวน์โหลด Git จากแหล่งที่มาที่ใกล้ที่สุด ใช้ฟังก์ชั่นนี้เพื่อรับ Git ล่าสุดจาก
    อินเทอร์เน็ต

.PARAMETER UserToken

.PARAMETER GitDownloadUrl
    ที่อยู่ URL สำหรับการดาวน์โหลด Git

.EXAMPLE
    ตัวอย่างวิธีใช้ cmdlet นี้

.NOTES
    ฟังก์ชั่นนี้จะตรวจสอบว่าการดำเนินการสำเร็จหรือไม่
    โดยค่าเริ่มต้นถ้าการดาวน์โหลด Git ล้มเหลวจะทำให้เกิดข้อผิดพลาด

.LINK
    https://git-scm.com |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | กรองประเภทบล็อกมาร์กอัปในผลลัพธ์ AI |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | ความยาวสูงสุดของ callback สำหรับการเรียกใช้เครื่องมือ |

## Examples

### ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your approach"

```powershell
ConvertFrom-DiplomaticSpeak -Text "We have some concerns about your
approach"
```

### undiplomatize "Your proposal has merit but requires further consideration"

```powershell
undiplomatize "Your proposal has merit but requires further consideration"
```

### "We're putting you on timeout" |     ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2

```powershell
"We're putting you on timeout" |
    ConvertFrom-DiplomaticSpeak -SetClipboard -Temperature 0.2
```

## Parameter Details

### `-Text <String>`

> ข้อความที่จะแปลงจากภาษาทางการทูต

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

> อย่าสับสนระหว่างเนื้อหาที่ต้องแปลซึ่งเป็นข้อความช่วยเหลือของ cmdlet ของ PowerShell กับคำแนะนำ!
อย่าแทรกรูปภาพหรือสิ่งใดๆ เพียงแค่แปลเนื้อหาให้ตรงตามตัวมากที่สุดเป็น: ภาษาไทย (ประเทศไทย)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `''` |
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
| **Default value** | `0.0` |
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
### `-SetClipboard`

> คัดลอกข้อความที่แปลงแล้วไปยังคลิปบอร์ด

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
### `-Attachments <Object[]>`

> ไฟล์แนบที่ต้องรวมในการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> ระดับรายละเอียดของภาพสำหรับการประมวลผลด้วย AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Object[]>`

> ฟังก์ชันเพื่อเปิดเผยให้กับโมเดล AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <Object[]>`

> Cmdlets เพื่อเปิดเผยให้กับโมเดล AI

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

> ชื่อฟังก์ชันเครื่องมือที่ไม่ต้องการการยืนยัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> อย่าเพิ่มความคิดลงในประวัติ AI

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

> ดำเนินการต่อจาก AI ครั้งก่อน

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

> พูดความคิดออกมาดัง ๆ ระหว่างการประมวลผล AI

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

> ปิดการแคชเซสชันสำหรับการดำเนินการนี้

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

> อนุญาตให้ใช้เครื่องมือเริ่มต้นในการดำเนินการ AI

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

> อุณหภูมิเสียงสำหรับการสร้างเสียงด้วย AI

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

> อุณหภูมิสำหรับการสร้างคำตอบของ AI

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

> จำนวนเธรด CPU ที่ใช้สำหรับการดำเนินการ AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String[]>`

> นิพจน์ทั่วไปเพื่อระงับในผลลัพธ์ AI

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

> ขนาดบริบทเสียงสำหรับการประมวลผลเสียงด้วย AI

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

> เกณฑ์ความเงียบสำหรับการประมวลผลเสียงของ AI

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

> การลงโทษความยาวสำหรับการสร้างลำดับของ AI

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

> เกณฑ์เอนโทรปีสำหรับผลลัพธ์ของ AI

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

> เกณฑ์ความน่าจะเป็นของล็อกสำหรับผลลัพธ์ของ AI.

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

> ไม่มีเกณฑ์การพูดสำหรับการประมวลผลเสียงของ AI

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

> .SYNOPSIS
    สร้างไฟล์โฟลเดอร์ใหม่ (mklink)
.DESCRIPTION
    สร้างลิงก์สัญลักษณ์หรือฮาร์ดลิงก์ไปยังไฟล์หรือไดเรกทอรี
.PARAMETER Path
    เส้นทางของลิงก์
.PARAMETER Target
    เส้นทางของเป้าหมายที่ลิงก์จะชี้ไป
.PARAMETER Type
    ประเภทของลิงก์: SymbolicLink, Junction, หรือ HardLink
.PARAMETER PassThru
    ส่งคืนวัตถุที่สร้างขึ้น
.EXAMPLE
    New-Item -ItemType SymbolicLink -Path .\Link -Target .\TargetFile.txt
.EXAMPLE
    New-Item -ItemType Junction -Path .\LinkDir -Target C:\TargetDir

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

> .EXAMPLE

PS C:> Get-HotFix | Where-Object { $_.InstalledOn -gt (Get-Date).AddDays(-30) }

คำสั่งนี้แสดงรายการโปรแกรมปรับปรุงทั้งหมดที่ติดตั้งใน 30 วันที่ผ่านมา

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

> ปิดการใช้งาน VOX สำหรับการส่งออกเสียงของ AI

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

> ใช้การจับเสียงเดสก์ท็อปสำหรับเสียง AI

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

> คุณคือผู้ช่วยที่เป็นประโยชน์ที่ออกแบบมาเพื่อส่งออก JSON

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

> ใช้กลยุทธ์การสุ่มตัวอย่างแบบบีมเสิร์ชสำหรับ AI

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

> คุณคือผู้ช่วยที่มีประโยชน์ซึ่งออกแบบมาเพื่อแสดงผล JSON

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

> .SYNOPSIS
    ดาวน์โหลด Git จากแหล่งที่มาที่ใกล้ที่สุด

.DESCRIPTION
    ดาวน์โหลด Git จากแหล่งที่มาที่ใกล้ที่สุด ใช้ฟังก์ชั่นนี้เพื่อรับ Git ล่าสุดจาก
    อินเทอร์เน็ต

.PARAMETER UserToken

.PARAMETER GitDownloadUrl
    ที่อยู่ URL สำหรับการดาวน์โหลด Git

.EXAMPLE
    ตัวอย่างวิธีใช้ cmdlet นี้

.NOTES
    ฟังก์ชั่นนี้จะตรวจสอบว่าการดำเนินการสำเร็จหรือไม่
    โดยค่าเริ่มต้นถ้าการดาวน์โหลด Git ล้มเหลวจะทำให้เกิดข้อผิดพลาด

.LINK
    https://git-scm.com

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

> กรองประเภทบล็อกมาร์กอัปในผลลัพธ์ AI

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
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ConvertFrom-CorporateSpeak.md)
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
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-AllImageMetaData.md)
