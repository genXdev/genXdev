# Start-NextRefactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `nextrefactor`

## Synopsis

> Tiếp tục hoặc khởi động lại một phiên tái cấu trúc mã nguồn.

## Description

Quản lý các hoạt động tái cấu trúc mã bằng cách xử lý các định nghĩa tái cấu trúc theo thứ tự ưu tiên. Xử lý lựa chọn tệp, theo dõi tiến trình, xử lý lỗi và cung cấp quyền kiểm soát tương tác cho người dùng trong quá trình tái cấu trúc.

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Tên của refactor, chấp nhận ký tự đại diện 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Tên tệp tin để thêm |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Các tên tệp cần xóa |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Dọn dẹp các tệp đã xóa |
| `-Reset` | SwitchParameter | — | — | Named | — | Bắt đầu từ đầu của tập hợp refactor |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Khởi động lại tất cả các lựa chọn LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Đánh dấu tất cả tệp đã được tái cấu trúc |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Thực hiện lại lần tái cấu trúc cuối cùng |
| `-Speak` | SwitchParameter | — | — | Named | — | Đưa ra chi tiết của lần tái cấu trúc tiếp theo |

## Examples

### Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles Restarts refactoring for "RefactorProject" and removes deleted files.

```powershell
Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles
Restarts refactoring for "RefactorProject" and removes deleted files.
```

### nextrefactor -Name "*Test*" -Speak Processes all refactor sets matching "*Test*" pattern with speech enabled.

```powershell
nextrefactor -Name "*Test*" -Speak
Processes all refactor sets matching "*Test*" pattern with speech enabled.
```

## Parameter Details

### `-Name <String[]>`

> Tên của refactor, chấp nhận ký tự đại diện

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> Tên tệp tin để thêm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToRemove <IO.FileInfo[]>`

> Các tên tệp cần xóa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CleanUpDeletedFiles`

> Dọn dẹp các tệp đã xóa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reset`

> Bắt đầu từ đầu của tập hợp refactor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetLMSelections`

> Khởi động lại tất cả các lựa chọn LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkAllCompleted`

> Đánh dấu tất cả tệp đã được tái cấu trúc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoLast`

> Thực hiện lại lần tái cấu trúc cuối cùng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Đưa ra chi tiết của lần tái cấu trúc tiếp theo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-Refactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/VSCode.md)
