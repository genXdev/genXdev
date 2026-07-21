# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ghi một đối tượng dưới dạng JSON vào một tệp một cách nguyên tử để tránh hỏng tệp.

## Description

* Ghi nguyên tử: sử dụng chiến lược tệp tạm thời + đổi tên để đảm bảo tệp đích không bao giờ bị hỏng nếu quá trình bị gián đoạn.
* Logic thử lại: thử ghi tối đa MaxRetries lần với độ trễ RetryDelayMs mili giây giữa các lần thử.
* Hỗ trợ đối tượng: chấp nhận mọi đối tượng, không chỉ Hashtable. Tuần tự hóa qua System.Text.Json với dự phòng ConvertTo-Json cho các kiểu .NET phức tạp không thể tuần tự hóa gốc.
* Hỗ trợ Debounce: khi DebounceMs > 0, các lần ghi liên tiếp nhanh vào cùng một tệp được kết hợp — chỉ phần dữ liệu cuối cùng được ghi sau khi tệp không bị chạm trong DebounceMs ms.
* Tạo thư mục: tự động tạo thư mục cha nếu chúng chưa tồn tại.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Đường dẫn đến tệp tin để ghi. |
| `-Data` | Object | — | — | 1 | — | Đối tượng cần tuần tự hóa thành JSON và ghi vào tệp. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Số lần thử lại tối đa cho thao tác ghi nguyên tử. Mặc định là 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Thời gian trì hoãn tính bằng mili giây giữa các lần thử lại. Mặc định là 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Nếu lớn hơn 0, ghi debounce vào tệp này. Mặc định là 0 (đã tắt). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Độ sâu tối đa cho tuần tự hóa JSON. Mặc định là 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Tên mô-đun: ADDSDeployment
Mô-đun GUID: 0c0ccb0b-5074-4571-9c9c-2e6e5e5e5e5e
Tải trọng xuống: https://go.microsoft.com/fwlink/?linkid=216775
Yêu cầu cập nhật: MMC snap-in Active Directory Administrative Center được cài đặt trên máy chủ này và các miền mục tiêu khả dụng thông qua kết nối mạng.
Ảnh: cải thiện tốc độ cập nhật các thuộc tính đối tượng được tìm kiếm thường xuyên. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Tên mô-đun: ADDSDeployment
Mô-đun GUID: 0c0ccb0b-5074-4571-9c9c-2e6e5e5e5e5e
Tải trọng xuống: https://go.microsoft.com/fwlink/?linkid=216775
Yêu cầu cập nhật: MMC snap-in Active Directory Administrative Center được cài đặt trên máy chủ này và các miền mục tiêu khả dụng thông qua kết nối mạng.
Ảnh: cải thiện tốc độ cập nhật các thuộc tính đối tượng được tìm kiếm thường xuyên. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Cung cấp một tùy chọn tuần tự hóa thay thế chuyển đổi tất cả các liệt kê thành biểu diễn chuỗi của chúng. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Ghi một Hashtable dưới dạng JSON có thụt lề vào config.json một cách nguyên tử.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Ghi các đối tượng tiến trình dưới dạng JSON nén một cách nguyên tử.

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
### `-Data <Object>`

> Đối tượng cần tuần tự hóa thành JSON và ghi vào tệp.

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
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Độ sâu tối đa cho tuần tự hóa JSON. Mặc định là 30.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> Tên mô-đun: ADDSDeployment
Mô-đun GUID: 0c0ccb0b-5074-4571-9c9c-2e6e5e5e5e5e
Tải trọng xuống: https://go.microsoft.com/fwlink/?linkid=216775
Yêu cầu cập nhật: MMC snap-in Active Directory Administrative Center được cài đặt trên máy chủ này và các miền mục tiêu khả dụng thông qua kết nối mạng.
Ảnh: cải thiện tốc độ cập nhật các thuộc tính đối tượng được tìm kiếm thường xuyên.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> Tên mô-đun: ADDSDeployment
Mô-đun GUID: 0c0ccb0b-5074-4571-9c9c-2e6e5e5e5e5e
Tải trọng xuống: https://go.microsoft.com/fwlink/?linkid=216775
Yêu cầu cập nhật: MMC snap-in Active Directory Administrative Center được cài đặt trên máy chủ này và các miền mục tiêu khả dụng thông qua kết nối mạng.
Ảnh: cải thiện tốc độ cập nhật các thuộc tính đối tượng được tìm kiếm thường xuyên.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> Cung cấp một tùy chọn tuần tự hóa thay thế chuyển đổi tất cả các liệt kê thành biểu diễn chuỗi của chúng.

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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Write-TextFileAtomic.md)
