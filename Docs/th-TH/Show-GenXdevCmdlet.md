# Show-GenXdevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `cmds`

## Synopsis

> แสดงโมดูล PowerShell ของ GenXDev พร้อมด้วย cmdlets และนามแฝง (aliases)

## Description

แสดงรายการโมดูล PowerShell ของ GenXdev ทั้งหมดที่ติดตั้งไว้ พร้อมด้วย cmdlet และนามแฝงที่เกี่ยวข้อง ใช้ Get-GenXDevCmdlet เพื่อดึงข้อมูล cmdlet และตำแหน่งสคริปต์ตามตัวเลือก ให้ตัวเลือกการกรองและการแสดงผลต่างๆ

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | รูปแบบการค้นหาเพื่อกรอง cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | นิพจน์ทั่วไปเพื่อจับคู่คำจำกัดความของ cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | ชื่อโมดูล GenXdev ที่จะค้นหา 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ข้ามการค้นหาในเส้นทางโมดูลภายใน |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | ค้นหาเฉพาะในพาธของโมดูลที่เผยแพร่แล้ว |
| `-FromScripts` | SwitchParameter | — | — | Named | — | ค้นหาในไฟล์สคริปต์แทนโมดูล |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | รวมไดเรกทอรีสคริปต์นอกเหนือจากโมดูลปกติ *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | ส่งคืนชื่อโมดูลที่ไม่ซ้ำกันเท่านั้น |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | ทำการจับคู่แบบตรงทั้งหมดแทนการจับคู่แบบไวด์การ์ด |
| `-Online` | SwitchParameter | — | — | Named | — | เปิดเอกสาร GitHub แทนผลลัพธ์คอนโซล |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | เมื่อระบุ จะแสดงเฉพาะนามแฝงของ cmdlets |
| `-ShowTable` | SwitchParameter | — | — | Named | — | แสดงผลลัพธ์ในรูปแบบตาราง |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Parameter Details

### `-CmdletName <String>`

> รูปแบบการค้นหาเพื่อกรอง cmdlets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DefinitionMatches <String>`

> นิพจน์ทั่วไปเพื่อจับคู่คำจำกัดความของ cmdlet

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> ชื่อโมดูล GenXdev ที่จะค้นหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> ข้ามการค้นหาในเส้นทางโมดูลภายใน

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

> ค้นหาเฉพาะในพาธของโมดูลที่เผยแพร่แล้ว

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

> ค้นหาในไฟล์สคริปต์แทนโมดูล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> รวมไดเรกทอรีสคริปต์นอกเหนือจากโมดูลปกติ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> ส่งคืนชื่อโมดูลที่ไม่ซ้ำกันเท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> ทำการจับคู่แบบตรงทั้งหมดแทนการจับคู่แบบไวด์การ์ด

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Online`

> เปิดเอกสาร GitHub แทนผลลัพธ์คอนโซล

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAliases`

> เมื่อระบุ จะแสดงเฉพาะนามแฝงของ cmdlets

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `aliases`, `nonboring`, `notlame`, `handyonces` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowTable`

> แสดงผลลัพธ์ในรูปแบบตาราง

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `table`, `grid` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> The `-PassThru` parameter.

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

- `Collections.ArrayList`
- `Void`

## Related Links

- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GenXDevCmdlet.md)
