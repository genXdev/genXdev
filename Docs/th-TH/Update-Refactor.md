# Update-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `updaterefactor`

## Synopsis

> อัปเดตและจัดการชุดการรีแฟคเตอร์ รวมถึงการเลือกไฟล์และการประมวลผล

## Description

ให้การจัดการอย่างครอบคลุมสำหรับชุดการปรับโครงสร้าง (refactoring sets) โดย:
- เพิ่มหรือลบไฟล์ออกจากคิวการประมวลผล
- ทำความสะอาดไฟล์ที่ถูกลบออกจากชุด
- จัดการข้อมูลสถานะและการติดตามความคืบหน้า
- จัดการการเลือกไฟล์และการประมวลผลโดยใช้ LLM
- รองรับการจัดการไฟล์ทั้งแบบอัตโนมัติและแบบด้วยตนเอง
- เก็บรักษา logs โดยละเอียดของการดำเนินการทั้งหมด
- จัดการกับไฟล์ที่ถูกลบอย่างเหมาะสม (ข้ามไปเว้นแต่จะใช้ CleanUpDeletedFiles)

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | ชื่อของการรีแฟกเตอร์ รองรับอักขระตัวแทน *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | ชุดรีแฟกเตอร์ที่จะอัปเดต *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | ชื่อไฟล์ที่จะเพิ่ม |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | ชื่อไฟล์ที่จะลบ |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | เลือกไฟล์ตามวันที่แก้ไขจาก |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | เลือกไฟล์ตามวันที่แก้ไขเพื่อ |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | เลือกไฟล์ตามวันที่สร้างจาก |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | เลือกไฟล์ตามวันที่สร้างเพื่อ |
| `-PromptKey` | String | — | — | Named | — | คีย์พรอมต์ระบุว่าต้องใช้สคริปต์พรอมต์ใด |
| `-Prompt` | String | — | — | Named | `''` | คีย์พรอมต์ระบุว่าต้องใช้สคริปต์พรอมต์ใด |
| `-SelectionScript` | String | — | — | Named | — | สคริปต์ PowerShell สำหรับฟังก์ชันเพื่อเลือกรายการที่จะปรับปรุง |
| `-SelectionPrompt` | String | — | — | Named | — | ถ้ามีการระบุ จะเรียก LLM เพื่อทำการเลือกตามเนื้อหาของสคริปต์ |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | ประเภทของการสอบถาม LLM |
| `-Model` | String | — | — | Named | — | รหัสหรือรูปแบบของโมเดลที่ใช้สำหรับการดำเนินการ AI |
| `-Temperature` | Double | — | — | Named | `-1` | อุณหภูมิสำหรับการสุ่มการตอบสนอง (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการดำเนินการ AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการดำเนินงาน AI ที่ผ่านการรับรองความถูกต้อง |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | หมดเวลาสำหรับการดำเนินการ AI ในหน่วยวินาที |
| `-Priority` | Int32 | — | — | Named | — | ลำดับความสำคัญสำหรับชุดการปรับโครงสร้างนี้ |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | อาร์เรย์ของนิยามคำสั่ง PowerShell เพื่อใช้เป็นเครื่องมือระหว่างการเลือก LLM |
| `-KeysToSend` | String[] | — | — | Named | `@()` | คีย์ที่ต้องกดเพื่อเรียกใช้หลังจากเปิดไฟล์ |
| `-PreferencesDatabasePath` | String | — | — | Named | — | เส้นทางฐานข้อมูลสำหรับไฟล์ข้อมูลการตั้งค่า |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | ทำความสะอาดไฟล์ที่ถูกลบ |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | สลับไปยังโหมดระงับการโต้ตอบกับผู้ใช้ |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | สลับเพื่อเปิดใช้งานการประมวลผลการเลือกไฟล์ตาม LLM |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | สลับไปยังการประมวลผลไฟล์ทั้งหมดในชุดรีแฟคเตอร์ |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | สลับไปยังการลองใหม่สำหรับการเลือก LLM ที่ล้มเหลว |
| `-Clear` | SwitchParameter | — | — | Named | — | ล้างไฟล์ทั้งหมดออกจากชุดรีแฟคเตอร์ |
| `-ClearLog` | SwitchParameter | — | — | Named | — | ล้างบันทึกของชุดการปรับโครงสร้าง |
| `-Reset` | SwitchParameter | — | — | Named | — | เริ่มต้นจากจุดเริ่มต้นของชุดการปรับโครงสร้าง |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | รีสตาร์ท LLMSelections ทั้งหมด |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | ทำเครื่องหมายไฟล์ทั้งหมดว่าถูกปรับโครงสร้างแล้ว |
| `-RedoLast` | SwitchParameter | — | — | Named | — | ทำการรีแฟกเตอร์ครั้งล่าสุดอีกครั้ง |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | ประมวลผลไฟล์ที่ถูกแก้ไขตั้งแต่อัปเดตครั้งล่าสุดโดยอัตโนมัติ |
| `-Code` | SwitchParameter | — | — | Named | — | IDE สำหรับเปิดไฟล์ |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | เปิดใน Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | พูดรายละเอียดของการ refactor ครั้งถัดไป |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | เลือกรูปแบบตามแรมที่มีในระบบ |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | เลือกการกำหนดค่าตามจำนวน RAM GPU ที่มีอยู่ |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | ใช้การตั้งค่าสำรองที่จัดเก็บในเซสชันสำหรับการกำหนดค่าปัญญาประดิษฐ์ |
| `-ClearSession` | SwitchParameter | — | — | Named | — | ล้างการตั้งค่าสำรองที่เก็บไว้ในเซสชันสำหรับการกำหนดลักษณะ AI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | จัดเก็บการตั้งค่าเฉพาะในการกำหนดลักษณะถาวร โดยไม่กระทบต่อเซสชัน |

## Examples

### Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `     -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles

```powershell
Update-Refactor -Name "CodeCleanup" -FilesToAdd ".\src\*.cs" `
    -CleanUpDeletedFiles -PerformAutoSelections -ReprocessModifiedFiles
```

### Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear

```powershell
Get-Refactor "MyRefactor" | Update-Refactor -Reset -Clear
```

### updaterefactor * -Clear -Reset

```powershell
updaterefactor * -Clear -Reset
```

## Parameter Details

### `-Name <String[]>`

> ชื่อของการรีแฟกเตอร์ รองรับอักขระตัวแทน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | Name |

<hr/>
### `-Refactor <GenXdev.Helpers.RefactorDefinition[]>`

> ชุดรีแฟกเตอร์ที่จะอัปเดต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Refactor |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> ชื่อไฟล์ที่จะเพิ่ม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToRemove <IO.FileInfo[]>`

> ชื่อไฟล์ที่จะลบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateFrom <DateTime>`

> เลือกไฟล์ตามวันที่แก้ไขจาก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByModifiedDateTo <DateTime>`

> เลือกไฟล์ตามวันที่แก้ไขเพื่อ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateFrom <DateTime>`

> เลือกไฟล์ตามวันที่สร้างจาก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByCreationDateTo <DateTime>`

> เลือกไฟล์ตามวันที่สร้างเพื่อ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PromptKey <String>`

> คีย์พรอมต์ระบุว่าต้องใช้สคริปต์พรอมต์ใด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> คีย์พรอมต์ระบุว่าต้องใช้สคริปต์พรอมต์ใด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionScript <String>`

> สคริปต์ PowerShell สำหรับฟังก์ชันเพื่อเลือกรายการที่จะปรับปรุง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionPrompt <String>`

> ถ้ามีการระบุ จะเรียก LLM เพื่อทำการเลือกตามเนื้อหาของสคริปต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
### `-Priority <Int32>`

> ลำดับความสำคัญสำหรับชุดการปรับโครงสร้างนี้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> อาร์เรย์ของนิยามคำสั่ง PowerShell เพื่อใช้เป็นเครื่องมือระหว่างการเลือก LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> คีย์ที่ต้องกดเพื่อเรียกใช้หลังจากเปิดไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
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
### `-CleanUpDeletedFiles`

> ทำความสะอาดไฟล์ที่ถูกลบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AskBeforeLLMSelection`

> สลับไปยังโหมดระงับการโต้ตอบกับผู้ใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAutoSelections`

> สลับเพื่อเปิดใช้งานการประมวลผลการเลือกไฟล์ตาม LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PerformAISelections`

> สลับไปยังการประมวลผลไฟล์ทั้งหมดในชุดรีแฟคเตอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `PerformAllLLMSelections` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailedLLMSelections`

> สลับไปยังการลองใหม่สำหรับการเลือก LLM ที่ล้มเหลว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Clear`

> ล้างไฟล์ทั้งหมดออกจากชุดรีแฟคเตอร์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearLog`

> ล้างบันทึกของชุดการปรับโครงสร้าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reset`

> เริ่มต้นจากจุดเริ่มต้นของชุดการปรับโครงสร้าง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetLMSelections`

> รีสตาร์ท LLMSelections ทั้งหมด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkAllCompleted`

> ทำเครื่องหมายไฟล์ทั้งหมดว่าถูกปรับโครงสร้างแล้ว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoLast`

> ทำการรีแฟกเตอร์ครั้งล่าสุดอีกครั้ง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReprocessModifiedFiles`

> ประมวลผลไฟล์ที่ถูกแก้ไขตั้งแต่อัปเดตครั้งล่าสุดโดยอัตโนมัติ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `AutoAddModifiedFiles` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> IDE สำหรับเปิดไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> เปิดใน Visual Studio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> พูดรายละเอียดของการ refactor ครั้งถัดไป

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeRam`

> เลือกรูปแบบตามแรมที่มีในระบบ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeGpuRam`

> เลือกการกำหนดค่าตามจำนวน RAM GPU ที่มีอยู่

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
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-NextRefactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/VSCode.md)
