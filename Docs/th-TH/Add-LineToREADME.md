# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> เพิ่มบรรทัดลงในไฟล์มาร์กดาวน์ README.md ในส่วนที่ระบุ

## Description

ค้นหาและแก้ไขไฟล์ README.md โดยเพิ่มบรรทัดใหม่ลงในส่วนที่ระบุ
สามารถสร้างส่วนได้ถ้ายังไม่มี รองรับการจัดรูปแบบบรรทัดเป็นบล็อกโค้ด
และการแสดงส่วนที่ถูกแก้ไข

จะค้นหาในไดเรกทอรีปัจจุบันก่อน จากนั้นค้นหาในไดเรกทอรีด้านบนเพื่อหาตำแหน่งของ README
ถ้าไม่พบ จะใช้ README ในไดเรกทอรีโปรไฟล์ PowerShell

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | บรรทัดที่ต้องเพิ่มในไฟล์ README |
| `-Section` | String | ✅ | — | 0 | — | ส่วนที่จะเพิ่มบรรทัด |
| `-Code` | SwitchParameter | — | — | Named | — | เปิดใน Visual Studio Code หลังจากแก้ไข |
| `-Show` | SwitchParameter | — | — | Named | — | แสดงส่วนที่แก้ไข |
| `-Done` | SwitchParameter | — | — | Named | — | ทำเครื่องหมายรายการว่าเสร็จสมบูรณ์ |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | ใช้ README ในไดเรกทอรีโปรไฟล์ของ PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | ใช้ README ในไดเรกทอรี OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | ลำดับความสำคัญในการจัดเรียง (ค่าสูง = แสดงก่อน, ค่าเริ่มต้น 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | จัดเรียงบรรทัดตามวันที่ (คำนำหน้า yyyyMMdd) แทนลำดับความสำคัญ |
| `-Ascending` | SwitchParameter | — | — | Named | — | กลับลำดับการจัดเรียง (เรียงจากน้อยไปมากแทนจากมากไปน้อย) |
| `-First` | Int32 | — | — | Named | `0` | ขีดจำกัด - แสดงผลลัพธ์เฉพาะ N บรรทัดแรก |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Parameter Details

### `-Line <String>`

> บรรทัดที่ต้องเพิ่มในไฟล์ README

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Section <String>`

> ส่วนที่จะเพิ่มบรรทัด

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> เปิดใน Visual Studio Code หลังจากแก้ไข

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Show`

> แสดงส่วนที่แก้ไข

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Done`

> ทำเครื่องหมายรายการว่าเสร็จสมบูรณ์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseHomeREADME`

> ใช้ README ในไดเรกทอรีโปรไฟล์ของ PowerShell

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseOneDriveREADME`

> ใช้ README ในไดเรกทอรี OneDrive

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

> ลำดับความสำคัญในการจัดเรียง (ค่าสูง = แสดงก่อน, ค่าเริ่มต้น 1)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SortByDate`

> จัดเรียงบรรทัดตามวันที่ (คำนำหน้า yyyyMMdd) แทนลำดับความสำคัญ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Ascending`

> กลับลำดับการจัดเรียง (เรียงจากน้อยไปมากแทนจากมากไปน้อย)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-First <Int32>`

> ขีดจำกัด - แสดงผลลัพธ์เฉพาะ N บรรทัดแรก

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IssueLineToREADME.md)
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
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/VSCode.md)
