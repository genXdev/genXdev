# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Định dạng một tập hợp các đối tượng bằng một chuỗi mẫu có các trình giữ chỗ thuộc tính, tạo ra một chuỗi định dạng duy nhất.

## Description

Lặp qua một tập hợp các đối tượng và áp dụng một chuỗi mẫu có chứa các trình giữ chỗ {PropertyName} hoặc {PropertyName:format} cho từng mục. Kết quả được định dạng được nối với nhau bằng một dấu phân cách có thể cấu hình. Hỗ trợ thụt lề, dòng mới ở cuối và dấu phân cách ở cuối để định dạng đầu ra linh hoạt.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Bộ sưu tập các đối tượng cần định dạng |
| `-Template` | String | ✅ | — | 1 | — | Chuỗi mẫu có {PropertyName} hoặc trình giữ chỗ {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Chuỗi phân cách để chèn giữa các mục đã định dạng |
| `-Indentation` | Int32 | — | — | 3 | `0` | Số cấp độ thụt lề (4 khoảng trắng mỗi cấp) để áp dụng |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Thêm dấu phân cách ở cuối sau mục cuối cùng |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Thêm dấu phân cách ở cuối khi mảng không rỗng |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Tên: Alice
Tuổi: 30

Tên: Bob
Tuổi: 25

Định dạng một mảng các bảng băm với các trình giữ chỗ thuộc tính.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Sử dụng bí danh FormatArray với thụt lề và dấu phân cách tùy chỉnh.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Bộ sưu tập các đối tượng cần định dạng

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> Chuỗi mẫu có {PropertyName} hoặc trình giữ chỗ {PropertyName:format}

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> Chuỗi phân cách để chèn giữa các mục đã định dạng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> Số cấp độ thụt lề (4 khoảng trắng mỗi cấp) để áp dụng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> Thêm dấu phân cách ở cuối sau mục cuối cùng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> Thêm dấu phân cách ở cuối khi mảng không rỗng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-DoubleEmptyLines.md)
