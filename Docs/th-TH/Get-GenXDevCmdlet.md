# Get-GenXDevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `gcmds`

## Synopsis

> ดึงข้อมูลและแสดงรายการ cmdlet ทั้งหมดของ GenXdev พร้อมรายละเอียด

## Description

ค้นหาโมดูล GenXdev ที่ติดตั้งและไฟล์สคริปต์เพื่อค้นหาคำสั่ง cmdlet,
นามแฝง และคำอธิบาย สามารถกรองตามรูปแบบชื่อและชื่อโมดูลได้
รองรับการกรองตามคำจำกัดความของ cmdlet และมีตัวเลือกการค้นหาที่ยืดหยุ่น
ทั้งในเส้นทางโมดูลที่ติดตั้งในเครื่องและที่เผยแพร่แล้ว

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | รูปแบบการค้นหาเพื่อกรอง cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | นิพจน์ทั่วไปเพื่อจับคู่คำจำกัดความของ cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | ชื่อโมดูล GenXdev ที่จะค้นหา 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ข้ามการค้นหาในเส้นทางโมดูลภายใน |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | ค้นหาเฉพาะในพาธของโมดูลที่เผยแพร่แล้ว |
| `-FromScripts` | SwitchParameter | — | — | Named | — | ค้นหาในไฟล์สคริปต์แทนโมดูล |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | รวมไดเรกทอรีสคริปต์นอกเหนือจากโมดูลปกติ *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | ส่งคืนชื่อโมดูลที่ไม่ซ้ำกันเท่านั้น |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | ทำการจับคู่แบบตรงทั้งหมดแทนการจับคู่แบบไวด์การ์ด |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Parameter Details

### `-CmdletName <String[]>`

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
## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Show-GenXdevCmdlet.md)
