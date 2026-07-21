# Add-IssueLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issue`

## Synopsis

> เพิ่มรายการปัญหาลงในไฟล์ README.md

## Description

เพิ่มประเด็นที่มีการประทับเวลาไปยังส่วน "## Issues" ของไฟล์ README.md
สามารถแสดงส่วนที่แก้ไขและเปิดใน Visual Studio Code ได้

## Syntax

```powershell
Add-IssueLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | ข้อความของปัญหาที่จะเพิ่ม |
| `-Code` | SwitchParameter | — | — | Named | — | เปิด README ใน Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | แสดงส่วนที่แก้ไข |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | ใช้ README ในไดเรกทอรีโปรไฟล์ของ PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | ใช้ README ในไดเรกทอรี OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | ลำดับความสำคัญในการจัดเรียง (ค่าสูง = แสดงก่อน, ค่าเริ่มต้น 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | จัดเรียงบรรทัดตามวันที่ (คำนำหน้า yyyyMMdd) แทนลำดับความสำคัญ |
| `-Ascending` | SwitchParameter | — | — | Named | — | กลับลำดับการจัดเรียง (เรียงจากน้อยไปมากแทนจากมากไปน้อย) |
| `-First` | Int32 | — | — | Named | `0` | ขีดจำกัด - แสดงผลลัพธ์เฉพาะ N บรรทัดแรก |

## Examples

### Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME

```powershell
Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME
```

### issue "Server connection fails" -Show

```powershell
issue "Server connection fails" -Show
```

## Parameter Details

### `-Line <String>`

> ข้อความของปัญหาที่จะเพิ่ม

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
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-LineToREADME.md)
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
