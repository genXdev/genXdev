# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode`

## Synopsis

> Mở tệp nguồn trong IDE ưa thích (Visual Studio Code hoặc Visual Studio).

## Description

Hàm này mở một tệp nguồn được chỉ định trong Visual Studio Code hoặc Visual Studio. Nó có thể điều hướng trực tiếp đến một số dòng cụ thể và tùy chọn gửi đầu vào bàn phím đến IDE sau khi mở tệp. Hàm sẽ cố gắng xác định IDE nào sẽ sử dụng dựa trên quy trình máy chủ hiện tại, các ứng dụng đang chạy hoặc lựa chọn của người dùng.

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Đường dẫn đến tệp nguồn để mở |
| `-LineNo` | Int32 | — | — | 1 | `0` | Số dòng để điều hướng đến |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Mảng các đầu vào bàn phím để gửi đến ứng dụng |
| `-Code` | SwitchParameter | — | — | Named | — | IDE để mở tệp tin |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Mở trong Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Thoát các ký tự điều khiển và công cụ sửa đổi |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Giữ tiêu điểm bàn phím trên cửa sổ đích |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Sử dụng Shift+Enter thay vì Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Độ trễ giữa các chuỗi đầu vào khác nhau tính bằng mili giây |

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Parameter Details

### `-Path <String>`

> Đường dẫn đến tệp nguồn để mở

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LineNo <Int32>`

> Số dòng để điều hướng đến

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Mảng các đầu vào bàn phím để gửi đến ứng dụng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> IDE để mở tệp tin

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> Mở trong Visual Studio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Thoát các ký tự điều khiển và công cụ sửa đổi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Giữ tiêu điểm bàn phím trên cửa sổ đích

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Sử dụng Shift+Enter thay vì Enter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Độ trễ giữa các chuỗi đầu vào khác nhau tính bằng mili giây

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
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
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-Refactor.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/VSCode.md)
