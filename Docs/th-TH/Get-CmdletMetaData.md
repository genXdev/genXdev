# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> ดึงข้อมูลเมตาสำหรับ cmdlet ของ GenXdev ที่ระบุ โดยสามารถแปลข้อความช่วยเหลือเป็นภาษาอื่นได้

## Description

แยกและส่งคืนข้อมูลเมตาที่ครอบคลุมเกี่ยวกับ cmdlet ของ GenXdev รวมถึง
บทสรุป คำอธิบาย พารามิเตอร์ ตัวอย่าง และข้อมูลช่วยเหลืออื่นๆ
เมื่อระบุภาษาเป้าหมายผ่านพารามิเตอร์ -Language ข้อความช่วยเหลือ
สามารถแปลได้โดยใช้บริการแปลภาษาแบบ AI สามารถระบุคำแนะนำการแปลแบบกำหนดเอง
เพื่อปรับแต่งผลลัพธ์การแปล

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | ชื่อของ cmdlet ที่จะดึงข้อมูลเมตา |
| `-Language` | String | — | — | 1 | — | แท็กภาษา BCP 47 สำหรับแปลข้อความช่วยเหลือ (เช่น th-TH, de-DE) หากละไว้จะข้ามการแปล |
| `-TranslationInstructions` | String | — | — | 2 | — | ด้านล่างนี้คือข้อมูลความช่วยเหลือของคำสั่ง PowerShell ที่คุณร้องขอ |
| `-Model` | String | — | — | 3 | — | รหัสรุ่นหรือรูปแบบของโมเดลที่จะใช้สำหรับการแปลภาษา AI |
| `-ApiEndpoint` | String | — | — | 4 | — | URL ปลายทางของ API สำหรับการแปลภาษา AI |
| `-ApiKey` | String | — | — | 5 | — | คีย์ API สำหรับการแปลภาษา AI ที่ได้รับการตรวจสอบสิทธิ์ |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | บ่งชี้ว่า LLM ไม่รองรับ JSON schemas |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | ข้ามการแปลด้วย LLM; เก็บข้อความช่วยเหลือไว้ในภาษาต้นฉบับแม้จะระบุ -Language ไว้ |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

ดึงข้อมูลเมตาสำหรับ cmdlet Find-Item ในภาษาเริ่มต้น

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

ดึงข้อมูลเมทาดาทาสำหรับ cmdlet Find-Item พร้อมคำแปลภาษาดัตช์

## Parameter Details

### `-Name <String>`

> ชื่อของ cmdlet ที่จะดึงข้อมูลเมตา

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

> แท็กภาษา BCP 47 สำหรับแปลข้อความช่วยเหลือ (เช่น th-TH, de-DE) หากละไว้จะข้ามการแปล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> ด้านล่างนี้คือข้อมูลความช่วยเหลือของคำสั่ง PowerShell ที่คุณร้องขอ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> ข้ามการแปลด้วย LLM; เก็บข้อความช่วยเหลือไว้ในภาษาต้นฉบับแม้จะระบุ -Language ไว้

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/EnsureDefaultGenXdevRefactors.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdLetInIde.md)
