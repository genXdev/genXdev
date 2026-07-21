# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> Truy xuất một giá trị tùy chỉnh từ kho lưu trữ tùy chỉnh GenXdev.

## Description

* Triển khai hệ thống truy xuất ưu tiên hai tầng.
* Đầu tiên kiểm tra kho lưu trữ cục bộ để tìm giá trị ưu tiên.
* Nếu không tìm thấy, chuyển sang kho lưu trữ mặc định.
* Nếu vẫn không tìm thấy, trả về giá trị mặc định được cung cấp.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Tên của tùy chọn cần truy xuất |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | Giá trị mặc định nếu không tìm thấy tùy chọn ưu tiên |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Sử dụng các thiết lập thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Xóa cài đặt phiên (biến toàn cục) trước khi truy xuất |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Không sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Truy xuất tùy chọn "Chủ đề" với giá trị mặc định là "Tối".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Sử dụng bí danh và các tham số vị trí.

## Parameter Details

### `-Name <String>`

> Tên của tùy chọn cần truy xuất

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Giá trị mặc định nếu không tìm thấy tùy chọn ưu tiên

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên

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

> Sử dụng các thiết lập thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v.

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

> Xóa cài đặt phiên (biến toàn cục) trước khi truy xuất

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

> Không sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreferencesDatabasePath.md)
