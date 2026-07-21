# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> Tạo báo cáo chi tiết về các thao tác tái cấu trúc và trạng thái của chúng.

## Description

Phân tích và báo cáo tiến độ của các hoạt động tái cấu trúc bằng cách xem xét trạng thái hiện tại, mức độ hoàn thành và các hàm bị ảnh hưởng của chúng. Cung cấp đầu ra ở dạng bảng băm có cấu trúc hoặc các cột văn bản căn chỉnh dễ đọc cho con người. Báo cáo bao gồm tên tái cấu trúc, khóa nhắc nhở, mức độ ưu tiên, trạng thái, số lượng hàm và tỷ lệ phần trăm hoàn thành.

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Tên của refactor, chấp nhận ký tự đại diện 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chỉ định đường dẫn đến tệp cơ sở dữ liệu tùy chọn. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Nếu được đặt, chỉ sử dụng bộ nhớ cache phiên cho dữ liệu tái cấu trúc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Nếu được đặt, hãy xóa bộ nhớ đệm phiên trước khi chạy. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Nếu được đặt, bỏ qua việc tải bộ nhớ đệm phiên làm việc. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Xuất báo cáo dưới dạng văn bản thay vì Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Tạo một báo cáo văn bản cho các refactor phù hợp với "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Tạo báo cáo hashtable cho tất cả các refactor sử dụng bí danh.

## Parameter Details

### `-Name <String[]>`

> Tên của refactor, chấp nhận ký tự đại diện

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> Chỉ định đường dẫn đến tệp cơ sở dữ liệu tùy chọn.

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

> Nếu được đặt, chỉ sử dụng bộ nhớ cache phiên cho dữ liệu tái cấu trúc.

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

> Nếu được đặt, hãy xóa bộ nhớ đệm phiên trước khi chạy.

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

> Nếu được đặt, bỏ qua việc tải bộ nhớ đệm phiên làm việc.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> Xuất báo cáo dưới dạng văn bản thay vì Hashtable

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/VSCode.md)
