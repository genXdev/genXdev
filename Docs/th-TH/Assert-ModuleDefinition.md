# Assert-ModuleDefinition

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> ช่วยในการปรับโครงสร้างไฟล์ซอร์สโค้ด PowerShell โดยใช้ความช่วยเหลือจาก AI

## Description

ฟังก์ชันนี้จะทำงานอัตโนมัติในการปรับปรุงโค้ด PowerShell โดยใช้ AI
จัดการเทมเพลตพร้อมต์ ตรวจจับ IDE ที่ใช้งานอยู่ (VS Code หรือ Visual Studio)
และจัดลำดับขั้นตอนการปรับปรุงผ่านระบบอัตโนมัติของคีย์บอร์ด
ฟังก์ชันนี้สามารถจัดการทั้งไฟล์แมนิเฟสต์โมดูล (.psd1) และไฟล์สคริปต์โมดูล (.psm1)

## Syntax

```powershell
Assert-ModuleDefinition -ModuleName <String> [-EditPrompt] [-Prompt <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | ชื่อของโมดูล |
| `-Prompt` | String | — | — | Named | — | .PARAMETER InputObject
ระบุอ็อบเจกต์หรือสคริปต์ blkone ที่จะดำเนินการ

.PARAMETER Name
สตริงที่ระบุชื่อของอ็อบเจกต์หรือบล็อก blkone |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | .PARAMETER Name
ระบุชื่อของทรัพยากร Azure |

## Examples

### Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt

```powershell
Assert-ModuleDefinition -ModuleName "MyModule" -EditPrompt
```

### "MyModule" | Assert-ModuleDefinition

```powershell
"MyModule" | Assert-ModuleDefinition
```

## Parameter Details

### `-ModuleName <String>`

> ชื่อของโมดูล

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> .PARAMETER InputObject
ระบุอ็อบเจกต์หรือสคริปต์ blkone ที่จะดำเนินการ

.PARAMETER Name
สตริงที่ระบุชื่อของอ็อบเจกต์หรือบล็อก blkone

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EditPrompt`

> .PARAMETER Name
ระบุชื่อของทรัพยากร Azure

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
