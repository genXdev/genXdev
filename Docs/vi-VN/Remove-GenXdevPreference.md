# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> Xóa một giá trị ưu tiên khỏi kho lưu trữ ưu tiên của GenXdev.

## Description

* Xóa một giá trị tùy chọn khỏi kho lưu trữ cục bộ và tùy chọn khỏi kho lưu trữ mặc định.
* Cung cấp hai bộ tham số - một chỉ để xóa cục bộ và một khác để xóa khỏi cả kho lưu trữ cục bộ và mặc định.
* Đảm bảo đồng bộ hóa thích hợp khi sửa đổi kho lưu trữ mặc định.

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Tên của tùy chọn cần xóa |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Chuyển sang loại bỏ tùy chọn khỏi mặc định |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Sử dụng các thiết lập thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Xóa cài đặt phiên (biến toàn cục) trước khi truy xuất |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Không sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Chỉ xóa tùy chọn "Chủ đề" khỏi kho lưu trữ cục bộ.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Xóa tùy chọn "Theme" khỏi cả kho lưu trữ cục bộ và mặc định.

## Parameter Details

### `-Name <String>`

> Tên của tùy chọn cần xóa

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> Chuyển sang loại bỏ tùy chọn khỏi mặc định

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-SkipSession`

> Không sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v.

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreferencesDatabasePath.md)
