# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> สร้างรายงานโดยละเอียดเกี่ยวกับการดำเนินการปรับโครงสร้างและสถานะของพวกเขา

## Description

วิเคราะห์และรายงานความคืบหน้าของการดำเนินการปรับโครงสร้างโดยตรวจสอบสถานะปัจจุบัน สถานะความสมบูรณ์ และฟังก์ชันที่ได้รับผลกระทบ ให้ผลลัพธ์ในรูปแบบ hashtable ที่มีโครงสร้างหรือคอลัมน์ข้อความที่จัดเรียงเพื่อให้อ่านง่าย รายงานประกอบด้วยชื่อการปรับโครงสร้าง คีย์พร้อมท์ ลำดับความสำคัญ สถานะ จำนวนฟังก์ชัน และเปอร์เซ็นต์ความสมบูรณ์

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | ชื่อของการรีแฟกเตอร์ รองรับอักขระตัวแทน 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | ระบุตำแหน่งของไฟล์ฐานข้อมูลการตั้งค่า |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | ถ้าตั้งค่าแล้ว ให้ใช้เฉพาะแคชเซสชันสำหรับข้อมูลรีแฟกเตอร์เท่านั้น |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | หากตั้งค่า ให้ล้างแคชเซสชันก่อนเรียกใช้ |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | ถ้าตั้งค่า ให้ข้ามการโหลดแคชเซสชัน |
| `-AsText` | SwitchParameter | — | — | Named | `False` | ส่งออกผลลัพธ์รายงานในรูปแบบข้อความแทน Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

สร้างรายงานข้อความสำหรับการปรับโครงสร้างที่ตรงกับ "DatabaseRefactor"

### Example 2

```powershell
refactorreport "*"
```

สร้างรายงาน hashtable สำหรับการปรับโครงสร้างทั้งหมดที่ใช้นามแฝง

## Parameter Details

### `-Name <String[]>`

> ชื่อของการรีแฟกเตอร์ รองรับอักขระตัวแทน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> ระบุตำแหน่งของไฟล์ฐานข้อมูลการตั้งค่า

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> ถ้าตั้งค่าแล้ว ให้ใช้เฉพาะแคชเซสชันสำหรับข้อมูลรีแฟกเตอร์เท่านั้น

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> หากตั้งค่า ให้ล้างแคชเซสชันก่อนเรียกใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> ถ้าตั้งค่า ให้ข้ามการโหลดแคชเซสชัน

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> ส่งออกผลลัพธ์รายงานในรูปแบบข้อความแทน Hashtable

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/VSCode.md)
