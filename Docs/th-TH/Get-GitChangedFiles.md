# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> รับรายการไฟล์ที่มีการเปลี่ยนแปลงในพื้นที่เก็บ Git

## Description

ฟังก์ชันนี้เรียกดูรายการไฟล์ที่มีการเปลี่ยนแปลงในพื้นที่เก็บ Git ปัจจุบัน สามารถใช้เพื่อระบุไฟล์ที่ถูกแก้ไข เพิ่ม หรือลบ โดยค่าเริ่มต้น จะส่งคืนเส้นทางสัมพัทธ์ที่มีคำนำหน้า .\ ใช้ -PassThru เพื่อรับวัตถุ FileInfo

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | ส่งคืนออบเจ็กต์ FileInfo (เหมือน Get-ChildItem) แทนสตริงพาธ |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

ส่งคืนเส้นทางสัมพัทธ์เช่น ".\Modules\GenXdev.AI\3.26.2026\README.md"

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

ส่งคืนออบเจ็กต์ FileInfo สำหรับแต่ละไฟล์ที่เปลี่ยนแปลง

## Parameter Details

### `-PassThru`

> ส่งคืนออบเจ็กต์ FileInfo (เหมือน Get-ChildItem) แทนสตริงพาธ

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/PermanentlyDeleteGitFolders.md)
