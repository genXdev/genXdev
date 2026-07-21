# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> Đặt giá trị tùy chọn trong kho lưu trữ tùy chọn GenXdev.

## Description

* Quản lý các tùy chọn trong kho lưu trữ cục bộ của GenXdev.
* Có thể đặt tùy chọn mới, cập nhật tùy chọn hiện có hoặc xóa chúng khi giá trị null/rỗng được cung cấp.
* Các tùy chọn được lưu trữ với đồng bộ hóa được đặt thành "Cục bộ".

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Tên của tùy chọn ưu tiên cần đặt |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Giá trị để lưu trữ cho tùy chọn |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Sử dụng các thiết lập thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Xóa cài đặt phiên (biến toàn cục) trước khi truy xuất |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Không sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

### Example 2

```powershell
setPreference Theme Light
```

Sử dụng bí danh và tham số vị trí để đặt tùy chọn Chủ đề.

## Parameter Details

### `-Name <String>`

> Tên của tùy chọn ưu tiên cần đặt

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
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
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreferencesDatabasePath.md)
