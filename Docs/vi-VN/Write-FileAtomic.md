# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ghi byte vào tệp một cách nguyên tử để tránh hỏng hóc.

## Description

* Ghi nguyên tử: sử dụng chiến lược tệp tạm + đổi tên để đảm bảo tệp đích không bao giờ ở trạng thái hỏng nếu quá trình bị gián đoạn.
* Logic thử lại: thử ghi lại tối đa MaxRetries lần với độ trễ RetryDelayMs mili giây giữa các lần thử.
* Hỗ trợ chống rung: khi DebounceMs > 0, các lần ghi liên tiếp nhanh vào cùng một tệp được gộp lại — chỉ có nội dung cuối cùng được ghi sau khi tệp không được chạm đến trong DebounceMs ms.
* Tạo thư mục: tự động tạo các thư mục cha nếu chúng chưa tồn tại.

## Syntax

```powershell
Write-FileAtomic -FilePath <String> [[-Data] <Byte[]>] [-DebounceMs <Int32>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Đường dẫn đến tệp tin để ghi. |
| `-Data` | Byte[] | — | — | 1 | — | Mảng byte để ghi vào tệp. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Số lần thử lại tối đa cho thao tác ghi nguyên tử. Mặc định là 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Thời gian trì hoãn tính bằng mili giây giữa các lần thử lại. Mặc định là 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Nếu lớn hơn 0, ghi debounce vào tệp này. Mặc định là 0 (đã tắt). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Ghi một mảng byte vào data.bin một cách nguyên tử với cài đặt thử lại mặc định.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Ghi nhanh 100 lần nhưng chỉ payload cuối cùng (100) được lưu vào đĩa sau khoảng thời gian yên lặng 5 giây.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Viết với tùy chỉnh thử lại: lên đến 10 lần thử, mỗi lần cách nhau 500ms.

## Parameter Details

### `-FilePath <String>`

> Đường dẫn đến tệp tin để ghi.

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

> Mảng byte để ghi vào tệp.

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

> Số lần thử lại tối đa cho thao tác ghi nguyên tử. Mặc định là 4.

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

> Thời gian trì hoãn tính bằng mili giây giữa các lần thử lại. Mặc định là 200.

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

> Nếu lớn hơn 0, ghi debounce vào tệp này. Mặc định là 0 (đã tắt).

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-RoboCopy.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-TextFileAtomic.md)
