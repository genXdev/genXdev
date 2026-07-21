# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Lấy danh sách các tệp đã thay đổi trong kho lưu trữ Git.

## Description

Hàm này lấy danh sách các tệp đã được thay đổi trong kho Git hiện tại. Nó có thể được sử dụng để xác định các tệp đã được sửa đổi, thêm mới hoặc xóa. Theo mặc định, trả về đường dẫn tương đối với tiền tố .\. Sử dụng -PassThru để nhận các đối tượng FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Trả về các đối tượng FileInfo (giống lệnh Get-ChildItem) thay vì chuỗi đường dẫn. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Trả về các đường dẫn tương đối như ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Trả về các đối tượng FileInfo cho mỗi tệp đã thay đổi.

## Parameter Details

### `-PassThru`

> Trả về các đối tượng FileInfo (giống lệnh Get-ChildItem) thay vì chuỗi đường dẫn.

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/PermanentlyDeleteGitFolders.md)
