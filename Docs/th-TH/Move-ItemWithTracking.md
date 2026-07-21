# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ย้ายไฟล์และไดเรกทอรีในขณะที่รักษาลิงก์และข้อมูลอ้างอิงของระบบไฟล์ไว้

## Description

* ใช้ Windows MoveFileEx API เพื่อย้ายไฟล์และไดเรกทอรีพร้อมการติดตามลิงก์ที่เปิดใช้งาน เพื่อให้แน่ใจว่าการอ้างอิงระบบไฟล์ยังคงอยู่
* หากพาธต้นทางอยู่ภายใต้การควบคุมของ Git จะพยายามใช้ git mv เพื่อติดตามการเปลี่ยนชื่อใน Git
* จะย้อนกลับไปใช้ MoveFileEx หากไม่มี Git หรือ git mv ล้มเหลว

## Syntax

```powershell
Move-ItemWithTracking -Path <String> -Destination <String> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | เส้นทางต้นทางของไฟล์/โฟลเดอร์ที่จะย้าย |
| `-Destination` | String | ✅ | — | 1 | — | เส้นทางปลายทางสำหรับย้ายไป |
| `-Force` | SwitchParameter | — | — | Named | `False` | เขียนทับปลายทางหากมีอยู่ |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

ย้ายไฟล์ในขณะที่รักษาลิงก์ระบบไฟล์และการติดตาม Git

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

ย้ายไดเรกทอรี โดยเขียนทับปลายทางถ้ามีอยู่

## Parameter Details

### `-Path <String>`

> เส้นทางต้นทางของไฟล์/โฟลเดอร์ที่จะย้าย

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Destination <String>`

> เส้นทางปลายทางสำหรับย้ายไป

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> เขียนทับปลายทางหากมีอยู่

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
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
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Rename-InProject.md)
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
