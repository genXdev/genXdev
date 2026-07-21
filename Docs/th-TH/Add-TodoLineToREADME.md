# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo`

## Synopsis

> เพิ่มรายการสิ่งที่ต้องทำลงในไฟล์ README.md

## Description

เพิ่มรายการสิ่งที่ต้องทำพร้อมประทับเวลาในส่วน "## Todoos" ของไฟล์ README.md
รายการสิ่งที่ต้องทำสามารถทำเครื่องหมายว่าเสร็จแล้ว และสามารถแสดงส่วนที่แก้ไขได้
รายการสิ่งที่ต้องทำใหม่แต่ละรายการจะถูกประทับเวลาโดยอัตโนมัติ เว้นแต่จะทำเครื่องหมายว่าเสร็จแล้ว

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | ข้อความรายการสิ่งที่ต้องทำที่จะเพิ่ม |
| `-Code` | SwitchParameter | — | — | Named | — | เปิด README ใน Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | แสดงส่วนที่แก้ไข |
| `-Done` | SwitchParameter | — | — | Named | — | ทำเครื่องหมายรายการสิ่งที่ต้องทำว่าเสร็จสมบูรณ์ |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | ใช้ README ในไดเรกทอรีโปรไฟล์ของ PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | ใช้ README ในไดเรกทอรี OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | ลำดับความสำคัญในการจัดเรียง (ค่าสูง = แสดงก่อน, ค่าเริ่มต้น 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | จัดเรียงบรรทัดตามวันที่ (คำนำหน้า yyyyMMdd) แทนลำดับความสำคัญ |
| `-Ascending` | SwitchParameter | — | — | Named | — | กลับลำดับการจัดเรียง (เรียงจากน้อยไปมากแทนจากมากไปน้อย) |
| `-First` | Int32 | — | — | Named | `0` | ขีดจำกัด - แสดงผลลัพธ์เฉพาะ N บรรทัดแรก |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Parameter Details

### `-Line <String>`

> ข้อความรายการสิ่งที่ต้องทำที่จะเพิ่ม

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> เปิด README ใน Visual Studio Code

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

> ทำเครื่องหมายรายการสิ่งที่ต้องทำว่าเสร็จสมบูรณ์

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
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-ReleaseNoteLineToREADME.md)
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
