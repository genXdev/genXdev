# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Xóa các dòng trống kép (liên tiếp) khỏi chuỗi mã, tùy chọn định dạng lại đầu ra.

## Description

Dọn dẹp mã nguồn hoặc văn bản bằng cách thu gọn các dòng trống liên tiếp thành một dòng trống duy nhất. Điều này cải thiện khả năng đọc và tuân theo các quy ước định dạng mã phổ biến. Khi công tắc -Reformat được chỉ định, các quy tắc định dạng bổ sung được áp dụng để chuẩn hóa cấu trúc mã.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Xóa sạch nội dung khỏi máy tính. Nội dung đã xóa có thể được khôi phục cho đến khi bị ghi đè bởi dữ liệu mới. |
| `-Reformat` | SwitchParameter | — | — | Named | — | Áp dụng các quy tắc định dạng bổ sung ngoài việc xóa dòng trống kép |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Truyền mã nguồn qua hàm để loại bỏ các dòng trống liên tiếp.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Loại bỏ các dòng trống kép và áp dụng định dạng bổ sung.

## Parameter Details

### `-code <String>`

> Xóa sạch nội dung khỏi máy tính. Nội dung đã xóa có thể được khôi phục cho đến khi bị ghi đè bởi dữ liệu mới.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> Áp dụng các quy tắc định dạng bổ sung ngoài việc xóa dòng trống kép

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-ArrayTemplate.md)
