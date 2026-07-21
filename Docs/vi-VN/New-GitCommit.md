# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Tạo và đẩy một commit git mới với tất cả các thay đổi.

## Description

Tổ chức tất cả các thay đổi trong kho git hiện tại, tạo một commit với tiêu đề đã chỉ định, và đẩy các thay đổi lên remote origin. Tự động thiết lập theo dõi upstream nếu cần.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Tiêu đề thông báo commit cần sử dụng |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Tạo commit với thông điệp tùy chỉnh "Đã thêm tính năng xác thực mới".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Tạo một commit bằng cách sử dụng bí danh 'commit' với thông điệp mặc định.

## Parameter Details

### `-Title <String>`

> Tiêu đề thông báo commit cần sử dụng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/PermanentlyDeleteGitFolders.md)
