# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> สร้างและพุชคอมมิต git ใหม่พร้อมกับการเปลี่ยนแปลงทั้งหมด

## Description

ด่านสเตจการเปลี่ยนแปลงทั้งหมดในที่เก็บ git ปัจจุบัน สร้างคอมมิตพร้อมชื่อที่กำหนด และพุชการเปลี่ยนแปลงไปยังรีโมท origin ตั้งค่าการติดตามต้นทางอัตโนมัติหากจำเป็น

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | ชื่อหัวข้อข้อความคอมมิตที่ใช้ |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

สร้างคอมมิตพร้อมข้อความกำหนดเอง "Added new authentication feature"

### Example 2

```powershell
commit "Hotfix for login issue"
```

สร้างคอมมิตโดยใช้นามแฝง 'commit' พร้อมข้อความเริ่มต้น

## Parameter Details

### `-Title <String>`

> ชื่อหัวข้อข้อความคอมมิตที่ใช้

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/PermanentlyDeleteGitFolders.md)
