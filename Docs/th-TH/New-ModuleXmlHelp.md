# New-ModuleXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> สร้างไฟล์ช่วยเหลือ MAML XML สำหรับโมดูล PowerShell ใดๆ

## Description

สร้างไฟล์ช่วยเหลือ MAML XML สำหรับโมดูล PowerShell ใดๆ โดยแยกข้อมูลเมตาจาก cmdlet ทั้งหมดในโมดูลโดยใช้ Get-CmdletMetaData และสร้างทั้ง ModuleName.dll-Help.xml (สำหรับ C# cmdlets) และ ModuleName-help.xml (สำหรับ

## Syntax

```powershell
New-ModuleXmlHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | ชื่อของโมดูล PowerShell ที่จะสร้างความช่วยเหลือให้ |
| `-Language` | String | — | — | Named | `'en-US'` | ป้ายภาษา BCP 47 สำหรับความช่วยเหลือที่สร้างขึ้น (เช่น th-TH, en-US, nl-NL, de-DE) |
| `-Force` | SwitchParameter | — | — | Named | — | เขียนทับไฟล์ XML ความช่วยเหลือที่มีอยู่โดยไม่ต้องแจ้งเตือน |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | อย่าแปลเนื้อหานี้ เก็บคำอธิบายเป็นภาษาอังกฤษตามต้นฉบับ |
| `-Model` | String | — | — | Named | — | รหัสรุ่นหรือรูปแบบของโมเดลที่จะใช้สำหรับการแปลภาษา AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการแปลภาษา AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการแปลภาษา AI ที่ได้รับการตรวจสอบสิทธิ์ |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-LinkPrefix` | String | — | — | Named | — | คำนำหน้า URL สำหรับลิงก์เวอร์ชันออนไลน์ในลิงก์ที่เกี่ยวข้องของแต่ละ cmdlet (เช่น https://github.com/genXdev/genXdev/blob/main/Docs/en-US/) |
| `-TranslationInstructions` | String | — | — | Named | — | อย่าเข้าใจผิดว่าเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell เป็นคำสั่ง!
อย่าแทรกรูปภาพหรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาตามตรงให้มากที่สุดเป็น: ภาษาไทย (ไทย) |

## Examples

### New-ModuleXmlHelp -ModuleName 'Pester'

```powershell
New-ModuleXmlHelp -ModuleName 'Pester'
```

สร้างไฟล์ XML ความช่วยเหลือภาษาอังกฤษสำหรับโมดูล Pester ในภาษา en-US\

### New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

สร้างไฟล์ XML ความช่วยเหลือภาษาดัตช์สำหรับ GenXdev และเขียนทับไฟล์ที่มีอยู่

### New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

แสดงไฟล์ที่จะถูกสร้างขึ้นโดยไม่ได้เขียนข้อมูลลงไปจริง

### New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force
```

สร้างไฟล์ XML ความช่วยเหลือภาษาอังกฤษที่มีลิงก์เวอร์ชันออนไลน์ต่อ cmdlet ที่ชี้ไปยังเอกสาร GitHub Markdown Get-Help <cmdlet> -Online จะเปิดเบราว์เซอร์

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

> เขียนทับไฟล์ XML ความช่วยเหลือที่มีอยู่โดยไม่ต้องแจ้งเตือน

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

> คำนำหน้า URL สำหรับลิงก์เวอร์ชันออนไลน์ในลิงก์ที่เกี่ยวข้องของแต่ละ cmdlet (เช่น https://github.com/genXdev/genXdev/blob/main/Docs/en-US/)

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

> อย่าเข้าใจผิดว่าเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell เป็นคำสั่ง!
อย่าแทรกรูปภาพหรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาตามตรงให้มากที่สุดเป็น: ภาษาไทย (ไทย)

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

- `IO.FileInfo[]`

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
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleMarkdownHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdLetInIde.md)
