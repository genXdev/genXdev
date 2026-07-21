# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> เขียนไบต์ไปยังไฟล์แบบอะตอมิกเพื่อป้องกันการเสียหาย

## Description

* การเขียนแบบอะตอม: ใช้กลยุทธ์ temp-file + rename เพื่อให้แน่ใจว่าไฟล์เป้าหมายจะไม่มีวันอยู่ในสถานะเสียหายหากกระบวนการถูกขัดจังหวะ
* ตรรกะการลองใหม่: ลองเขียนซ้ำสูงสุด MaxRetries ครั้ง โดยหน่วงเวลา RetryDelayMs มิลลิวินาทีระหว่างการลองแต่ละครั้ง
* การรองรับ Debounce: เมื่อ DebounceMs > 0 การเขียนที่ต่อเนื่องอย่างรวดเร็วไปยังไฟล์เดียวกันจะถูกรวมเข้าด้วยกัน — เฉพาะข้อมูลสุดท้ายเท่านั้นที่จะถูกเขียนเมื่อไฟล์ไม่ถูกแตะต้องเป็นเวลา DebounceMs มิลลิวินาที
* การสร้างไดเรกทอรี: สร้างไดเรกทอรีหลักโดยอัตโนมัติหากไม่มีอยู่

## Syntax

```powershell
Write-FileAtomic -FilePath <String> [[-Data] <Byte[]>] [-DebounceMs <Int32>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | พาธไปยังไฟล์ที่จะเขียน |
| `-Data` | Byte[] | — | — | 1 | — | อาร์เรย์ไบต์ที่จะเขียนไปยังไฟล์ |
| `-MaxRetries` | Int32 | — | — | Named | `0` | จำนวนครั้งสูงสุดในการลองทำซ้ำสำหรับการเขียนแบบอะตอมมิก ค่าเริ่มต้นคือ 4 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | ความล่าช้าระหว่างการลองซ้ำเป็นมิลลิวินาที ค่าเริ่มต้นคือ 200 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | ถ้ามากกว่า 0 จะดีบาวน์การเขียนไปยังไฟล์นี้ ค่าเริ่มต้นคือ 0 (ปิดใช้งาน) |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

เขียนอาร์เรย์ไบต์ไปยัง data.bin อย่างอะตอมมิกด้วยการตั้งค่าการลองใหม่เริ่มต้น

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

เขียนอย่างรวดเร็ว 100 ครั้ง แต่เฉพาะเพย์โหลดสุดท้าย (100) เท่านั้นที่ถูกจัดเก็บลงดิสก์หลังจากช่วงเงียบ 5 วินาที

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

เขียนด้วยการลองใหม่แบบกำหนดเอง: สูงสุด 10 ครั้ง โดยมีระยะห่าง 500 มิลลิวินาทีระหว่างแต่ละครั้ง

## Parameter Details

### `-FilePath <String>`

> พาธไปยังไฟล์ที่จะเขียน

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Byte[]>`

> อาร์เรย์ไบต์ที่จะเขียนไปยังไฟล์

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> จำนวนครั้งสูงสุดในการลองทำซ้ำสำหรับการเขียนแบบอะตอมมิก ค่าเริ่มต้นคือ 4

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> ความล่าช้าระหว่างการลองซ้ำเป็นมิลลิวินาที ค่าเริ่มต้นคือ 200

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> ถ้ามากกว่า 0 จะดีบาวน์การเขียนไปยังไฟล์นี้ ค่าเริ่มต้นคือ 0 (ปิดใช้งาน)

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
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Start-RoboCopy.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-TextFileAtomic.md)
