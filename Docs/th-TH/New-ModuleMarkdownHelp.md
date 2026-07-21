# New-ModuleMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> สร้างไฟล์ช่วยเหลือ Markdown ที่สมบูรณ์สำหรับโมดูล PowerShell ใดๆ

## Description

สร้างไซต์ช่วยเหลือ Markdown ที่ครอบคลุมสำหรับโมดูล PowerShell ใด ๆ:
หนึ่งไฟล์ .md ต่อ cmdlet พร้อมส่วนข้อมูลเมตาทั้งหมด พร้อมด้วย README.md
ดัชนีพร้อมตารางต่อโมดูลย่อยที่เชื่อมโยงไปยังไฟล์ cmdlet แต่ละไฟล์

การค้นพบโมดูลย่อยสามารถพกพาได้: ไดเรกทอรี dot-source .psm1 สำหรับ
cmdlet สคริปต์, เนมสเปซ .NET สำหรับ cmdlet ที่คอมไพล์, พร้อมด้วย
ห่วงโซ่การสำรองแบบหลายชั้นสำหรับโมดูลที่ไม่มีโครงสร้างโมดูลย่อย

## Syntax

```powershell
New-ModuleMarkdownHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | ชื่อของโมดูล PowerShell ที่จะสร้างความช่วยเหลือให้ |
| `-OutputPath` | String | — | — | Named | — | ไดเรกทอรีเอาต์พุตที่กำหนดเองสำหรับไฟล์ .md ค่าเริ่มต้นคือ <moduleRoot>\Docs\<language> |
| `-Language` | String | — | — | Named | `'en-US'` | ป้ายภาษา BCP 47 สำหรับความช่วยเหลือที่สร้างขึ้น (เช่น th-TH, en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | เขียนทับไฟล์ .md ที่มีอยู่โดยไม่ต้องแจ้งเตือน |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | อย่าแปลเนื้อหานี้ เก็บคำอธิบายเป็นภาษาอังกฤษตามต้นฉบับ |
| `-Model` | String | — | — | Named | — | รหัสรุ่นหรือรูปแบบของโมเดลที่จะใช้สำหรับการแปลภาษา AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการแปลภาษา AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการแปลภาษา AI ที่ได้รับการตรวจสอบสิทธิ์ |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-LinkPrefix` | String | — | — | Named | — | คำนำหน้า URL สำหรับลิงก์ดัชนี README (เช่น https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | คำสั่ง PowerShell ที่ให้มานั้นเป็นข้อความช่วยเหลือเกี่ยวกับ cmdlet ต่างๆ ใน PowerShell ควรแปลเฉพาะส่วนที่เป็นข้อความภาษาอังกฤษที่มนุษย์อ่านได้เท่านั้น เช่น ชื่อคำสั่ง คำอธิบาย พารามิเตอร์ โดยคงโครงสร้างและรูปแบบเดิมไว้ ส่วนที่เป็นโค้ดหรือไวยากรณ์ทางเทคนิคให้คงไว้ตามเดิม |

## Examples

### New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

สร้างโฟลเดอร์ Docs\ โดยมีไฟล์ .md หนึ่งไฟล์ต่อ cmdlet ของ Pester พร้อมดัชนี README.md

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

สร้างไฟล์มาร์กดาวน์ที่แปลเป็นภาษาดัตช์จากความช่วยเหลือ เขียนทับไฟล์ที่มีอยู่

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

สร้างความช่วยเหลือด้วยลิงก์ GitHub แบบสัมบูรณ์ในดัชนี README

## Parameter Details

### `-ModuleName <String>`

> ชื่อของโมดูล PowerShell ที่จะสร้างความช่วยเหลือให้

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> ไดเรกทอรีเอาต์พุตที่กำหนดเองสำหรับไฟล์ .md ค่าเริ่มต้นคือ <moduleRoot>\Docs\<language>

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

> ป้ายภาษา BCP 47 สำหรับความช่วยเหลือที่สร้างขึ้น (เช่น th-TH, en-US, nl-NL, de-DE)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'en-US'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> เขียนทับไฟล์ .md ที่มีอยู่โดยไม่ต้องแจ้งเตือน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> อย่าแปลเนื้อหานี้ เก็บคำอธิบายเป็นภาษาอังกฤษตามต้นฉบับ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> รหัสรุ่นหรือรูปแบบของโมเดลที่จะใช้สำหรับการแปลภาษา AI

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

> URL ปลายทางของ API สำหรับการแปลภาษา AI

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

> คีย์ API สำหรับการแปลภาษา AI ที่ได้รับการตรวจสอบสิทธิ์

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
### `-LinkPrefix <String>`

> คำนำหน้า URL สำหรับลิงก์ดัชนี README (เช่น https://github.com/org/repo/Docs/)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> คำสั่ง PowerShell ที่ให้มานั้นเป็นข้อความช่วยเหลือเกี่ยวกับ cmdlet ต่างๆ ใน PowerShell ควรแปลเฉพาะส่วนที่เป็นข้อความภาษาอังกฤษที่มนุษย์อ่านได้เท่านั้น เช่น ชื่อคำสั่ง คำอธิบาย พารามิเตอร์ โดยคงโครงสร้างและรูปแบบเดิมไว้ ส่วนที่เป็นโค้ดหรือไวยากรณ์ทางเทคนิคให้คงไว้ตามเดิม

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

- `String[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdLetInIde.md)
