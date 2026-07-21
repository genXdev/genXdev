# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> เขียนข้อความลงในไฟล์แบบอะตอมมิกเพื่อป้องกันการเสียหาย

## Description

* การเขียนแบบอะตอมมิก: ใช้กลยุทธ์ไฟล์ชั่วคราว + การเปลี่ยนชื่อเพื่อให้แน่ใจว่าไฟล์เป้าหมายจะไม่ถูกทิ้งไว้ในสถานะเสียหายหากกระบวนการถูกขัดจังหวะ
* ตรรกะการลองใหม่: ลองเขียนใหม่สูงสุด MaxRetries ครั้ง โดยหน่วงเวลา RetryDelayMs มิลลิวินาทีระหว่างความพยายาม
* รองรับการเข้ารหัส: ยอมรับพารามิเตอร์ System.Text.Encoding เพื่อควบคุมการเข้ารหัสเอาต์พุต ค่าเริ่มต้นคือ UTF-8
* รองรับการดีบานซ์: เมื่อ DebounceMs > 0 การเขียนต่อเนื่องอย่างรวดเร็วไปยังไฟล์เดียวกันจะถูกรวมเข้าด้วยกัน — เฉพาะเพย์โหลดสุดท้ายเท่านั้นที่จะถูกเขียนเมื่อไฟล์ไม่ถูกแตะต้องเป็นเวลา DebounceMs มิลลิวินาที
* การสร้างไดเรกทอรี: สร้างไดเรกทอรีหลักโดยอัตโนมัติหากไม่มีอยู่

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | พาธไปยังไฟล์ที่จะเขียน |
| `-Data` | String | — | — | 1 | — | เนื้อหาข้อความที่จะเขียนลงในไฟล์ |
| `-MaxRetries` | Int32 | — | — | Named | `0` | จำนวนครั้งสูงสุดในการลองทำซ้ำสำหรับการเขียนแบบอะตอมมิก ค่าเริ่มต้นคือ 4 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | ความล่าช้าระหว่างการลองซ้ำเป็นมิลลิวินาที ค่าเริ่มต้นคือ 200 |
| `-Encoding` | Text.Encoding | — | — | Named | — | การเข้ารหัสข้อความที่จะใช้เมื่อเขียนไฟล์ ค่าเริ่มต้นคือ UTF-8 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | ถ้ามากกว่า 0 จะดีบาวน์การเขียนไปยังไฟล์นี้ ค่าเริ่มต้นคือ 0 (ปิดใช้งาน) |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

เขียนสตริงไปยัง config.txt โดยใช้การเข้ารหัส UTF-8 อย่างอะตอมมิก

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

ส่ง 50 บรรทัดอย่างรวดเร็ว โดยเฉพาะบรรทัดสุดท้ายจะถูกเก็บไว้หลังจาก
ช่วงที่เงียบเป็นเวลา 2 วินาที

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

เขียนสตริงไปยัง data.csv โดยใช้การเข้ารหัส ASCII อย่างอะตอมมิก

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

งานเบื้องหลังเขียนตราประทับเวลา (timestamp) ทุก ๆ 100 มิลลิวินาที แต่ debounce จะรวมเหตุการณ์ — มีการเขียนลงดิสก์เพียงครั้งเดียวต่อวินาทีเท่านั้น

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
### `-Data <String>`

> เนื้อหาข้อความที่จะเขียนลงในไฟล์

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
### `-Encoding <Text.Encoding>`

> การเข้ารหัสข้อความที่จะใช้เมื่อเขียนไฟล์ ค่าเริ่มต้นคือ UTF-8

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Write-JsonFileAtomic.md)
