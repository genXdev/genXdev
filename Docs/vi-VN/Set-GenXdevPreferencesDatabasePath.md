# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Thiết lập đường dẫn cơ sở dữ liệu cho các tùy chọn được sử dụng trong các thao tác GenXdev.Data.

## Description

* Định cấu hình đường dẫn cơ sở dữ liệu toàn cục được mô-đun GenXdev.Data sử dụng
  cho các thao tác lưu trữ tùy chọn và dữ liệu khác nhau.
* Cài đặt được lưu trữ trong phiên hiện tại (sử dụng biến toàn cục) và
  có thể bị xóa khỏi phiên (sử dụng -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Đường dẫn cơ sở dữ liệu nơi các tệp dữ liệu tùy chọn được đặt |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Không sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn Dữ liệu như Ngôn ngữ, Đường dẫn cơ sở dữ liệu, v.v. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Khi được chỉ định, chỉ lưu cài đặt trong phiên hiện tại (biến Global) mà không lưu vào tùy chọn. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Khi được chỉ định, chỉ xóa cài đặt phiên (biến Toàn cục) mà không ảnh hưởng đến tùy chình bền vững |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Đặt đường dẫn cơ sở dữ liệu trong phiên hiện tại (biến toàn cục).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Đặt đường dẫn cơ sở dữ liệu bằng tham số vị trí.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Chỉ đặt đường dẫn cho phiên hiện tại mà không lưu lại.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Xóa biến toàn cục cho đường dẫn cơ sở dữ liệu.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Đường dẫn cơ sở dữ liệu nơi các tệp dữ liệu tùy chọn được đặt

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> Khi được chỉ định, chỉ lưu cài đặt trong phiên hiện tại (biến Global) mà không lưu vào tùy chọn.

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

> Khi được chỉ định, chỉ xóa cài đặt phiên (biến Toàn cục) mà không ảnh hưởng đến tùy chình bền vững

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
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevPreference.md)
