# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> Đặt giá trị tùy chọn mặc định trong kho lưu trữ tùy chọn GenXdev.

## Description

* Quản lý các tùy chọn mặc định trong hệ thống tùy chọn GenXdev.
* Xử lý việc lưu trữ giá trị, loại bỏ tùy chọn khi giá trị trống và đảm bảo các thay đổi được đồng bộ hóa trong toàn hệ thống.
* Hỗ trợ giá trị null bằng cách loại bỏ hoàn toàn tùy chọn trong những trường hợp như vậy.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | Tên của tùy chọn cần đặt trong mặc định |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Giá trị để lưu trữ cho tùy chọn |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Sử dụng các thiết lập thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Xóa cài đặt phiên (biến toàn cục) trước khi truy xuất |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Không sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Đặt tùy chọn chủ đề mặc định thành "Tối".

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Sử dụng bí danh để tắt thông báo email trong các mặc định.

## Parameter Details

### `-Name <String>`

> Tên của tùy chọn cần đặt trong mặc định

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Giá trị để lưu trữ cho tùy chọn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreferencesDatabasePath.md)
