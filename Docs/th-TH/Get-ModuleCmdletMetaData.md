# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> ดึงข้อมูลเมทาดาทาสำหรับ cmdlet ทั้งหมดในโมดูล PowerShell

## Description

เรียกข้อมูลเมตาของ cmdlet ทั้งหมด (คำอธิบายสั้น คำอธิบาย พารามิเตอร์ ตัวอย่าง ผลลัพธ์ และนามแฝง) สำหรับทุก cmdlet ในโมดูลที่ระบุ โดยเพิ่มคุณสมบัติ SubModuleName และ CmdletType ในแต่ละผลลัพธ์

การกำหนดโมดูลย่อยใช้สองเส้นทางอิสระ:

- Cmdlet สคริปต์ (.ps1): ไฟล์ต้นฉบับที่ตรงกับการแมปไดเรกทอรี dot-source ของ .psm1 (Functions\<SubModuleName>\FileName.ps1)
- Cmdlet ที่คอมไพล์แล้ว (.dll): เนมสเปซจาก ImplementationType.Namespace (เช่น GenXdev.FileSystem)

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Language <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | ชื่อของโมดูล PowerShell เพื่อดึงข้อมูลเมตาของ cmdlet |
| `-Language` | String | — | — | Named | — | th-TH |
| `-Model` | String | — | — | Named | — | รหัสรุ่นหรือรูปแบบของโมเดลที่จะใช้สำหรับการแปลภาษา AI |
| `-ApiEndpoint` | String | — | — | Named | — | URL ปลายทางของ API สำหรับการแปลภาษา AI |
| `-ApiKey` | String | — | — | Named | — | คีย์ API สำหรับการแปลภาษา AI ที่ได้รับการตรวจสอบสิทธิ์ |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-TranslationInstructions` | String | — | — | Named | — | คำสั่ง PowerShell ที่ให้มานั้นเป็นข้อความช่วยเหลือเกี่ยวกับ cmdlet ต่างๆ ใน PowerShell ควรแปลเฉพาะส่วนที่เป็นข้อความภาษาอังกฤษที่มนุษย์อ่านได้เท่านั้น เช่น ชื่อคำสั่ง คำอธิบาย พารามิเตอร์ โดยคงโครงสร้างและรูปแบบเดิมไว้ ส่วนที่เป็นโค้ดหรือไวยากรณ์ทางเทคนิคให้คงไว้ตามเดิม |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | ข้ามการแปลด้วย LLM |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

ส่งคืนเมทาดาทาสำหรับ cmdlet ทั้งหมดในโมดูล GenXdev

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

ส่งคืนข้อมูลเมตาที่แปลเป็นภาษาไทยสำหรับ cmdlet ทั้งหมดของ GenXdev

## Parameter Details

### `-ModuleName <String>`

> ชื่อของโมดูล PowerShell เพื่อดึงข้อมูลเมตาของ cmdlet

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

> th-TH

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
### `-SkipTranslation`

> ข้ามการแปลด้วย LLM

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

- `Collections.Hashtable[]`

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
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdLetInIde.md)
