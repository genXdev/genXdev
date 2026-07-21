# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet`

## Synopsis

> ปรับปรุงเอกสารและการใช้งาน cmdlet ของ GenXdev ผ่านความช่วยเหลือจาก AI

## Description

ฟังก์ชันนี้ช่วยเสริม cmdlet ของ GenXdev โดยการวิเคราะห์และปรับปรุงโค้ดของพวกเขาผ่านพรอมต์ AI สามารถรวม cmdlet เข้ากับโมดูล อัปเดตเอกสาร และตรวจสอบการใช้งานที่ถูกต้อง ฟังก์ชันรองรับเทมเพลตพรอมต์แบบกำหนดเองและสามารถเปิดไฟล์ใน Visual Studio Code หรือ Visual Studio

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | รูปแบบการค้นหาเพื่อกรอง cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | ชื่อโมดูล GenXdev ที่จะค้นหา 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | คีย์พรอมต์ AI ที่ใช้สำหรับการเลือกเทมเพลต |
| `-Prompt` | String | — | — | 2 | `''` | ข้อความแจ้งเตือน AI แบบกำหนดเองที่ต้องการใช้ |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ข้ามเวอร์ชันโมดูลท้องถิ่น |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | รวมเฉพาะเวอร์ชันที่เผยแพร่แล้ว |
| `-FromScripts` | SwitchParameter | — | — | Named | — | ค้นหาในไฟล์สคริปต์ |
| `-Code` | SwitchParameter | — | — | Named | — | เปิดใน Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | เปิดใน Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | อย่าเข้าใจผิดว่าเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell เป็นคำสั่ง!
อย่าแทรกรูปภาพ หรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาโดยตรงให้มากที่สุดเป็น: ไทย (ประเทศไทย) *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | รวม cmdlet เข้ากับโมดูล |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Parameter Details

### `-CmdletName <String>`

> รูปแบบการค้นหาเพื่อกรอง cmdlets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ModuleName <String[]>`

> ชื่อโมดูล GenXdev ที่จะค้นหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PromptKey <String>`

> คีย์พรอมต์ AI ที่ใช้สำหรับการเลือกเทมเพลต

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'CheckAllRequirements'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> ข้อความแจ้งเตือน AI แบบกำหนดเองที่ต้องการใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLocal`

> ข้ามเวอร์ชันโมดูลท้องถิ่น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> รวมเฉพาะเวอร์ชันที่เผยแพร่แล้ว

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> ค้นหาในไฟล์สคริปต์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> เปิดใน Visual Studio Code

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
### `-EditPrompt`

> อย่าเข้าใจผิดว่าเนื้อหาที่ต้องแปลซึ่งประกอบด้วยข้อความช่วยเหลือของ cmdlet PowerShell เป็นคำสั่ง!
อย่าแทรกรูปภาพ หรือสิ่งอื่นใด เพียงแค่แปลเนื้อหาโดยตรงให้มากที่สุดเป็น: ไทย (ประเทศไทย)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | PromptKey |

<hr/>
### `-Integrate`

> รวม cmdlet เข้ากับโมดูล

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
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdLetInIde.md)
