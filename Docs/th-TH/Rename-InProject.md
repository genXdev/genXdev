# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip`

## Synopsis

> ดำเนินการแทนที่ข้อความทั่วทั้งไดเรกทอรีโครงการ

## Description

ค้นหาแบบเรียกซ้ำผ่านไฟล์และไดเรกทอรีในโปรเจกต์เพื่อดำเนินการแทนที่ข้อความ จัดการทั้งชื่อไฟล์/ไดเรกทอรีและเนื้อหาไฟล์ ข้ามไฟล์ไบนารีทั่วไปและโฟลเดอร์พื้นที่เก็บข้อมูล (.git, .svn) เพื่อหลีกเลี่ยงความเสียหาย ใช้การเข้ารหัส UTF-8 โดยไม่มี BOM สำหรับการดำเนินการกับไฟล์ รองรับโหมดการแทนที่ที่คำนึงถึงตัวพิมพ์เล็ก-ใหญ่และไม่คำนึงถึงตัวพิมพ์เล็ก-ใหญ่

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | ไดเรกทอรี พาธของไฟล์ หรือไดเรกทอรี+หน้ากากค้นหา |
| `-FindText` | String | ✅ | — | 1 | — | ข้อความที่จะค้นหา (การควบคุมความแตกต่างระหว่างตัวพิมพ์ใหญ่/ตัวพิมพ์เล็กโดยพารามิเตอร์ CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | ข้อความที่ต้องการแทนที่ตรงกับ |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | ดำเนินการแทนที่ข้อความโดยไม่คำนึงถึงตัวพิมพ์ใหญ่-เล็ก |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Parameter Details

### `-Source <String>`

> ไดเรกทอรี พาธของไฟล์ หรือไดเรกทอรี+หน้ากากค้นหา

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `src`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FindText <String>`

> ข้อความที่จะค้นหา (การควบคุมความแตกต่างระหว่างตัวพิมพ์ใหญ่/ตัวพิมพ์เล็กโดยพารามิเตอร์ CaseInsensitive)

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `find`, `what`, `from` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplacementText <String>`

> ข้อความที่ต้องการแทนที่ตรงกับ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `into`, `txt`, `to` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseInsensitive`

> ดำเนินการแทนที่ข้อความโดยไม่คำนึงถึงตัวพิมพ์ใหญ่-เล็ก

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-OnReboot.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-TextFileAtomic.md)
