# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Phân tích các chuỗi để tìm bất kỳ URI hợp lệ nào.

## Description

* Trích xuất tất cả các URI hợp lệ từ văn bản đầu vào, hỗ trợ các lược đồ URI chuẩn và tùy chỉnh như http:, https:, ftp:, magnet:, about:, v.v.
* Trả về các đối tượng Uri cho mỗi URI hợp lệ được tìm thấy.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Văn bản đầu vào có thể chứa URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Phân tích chuỗi văn bản đã cung cấp để tìm các URI và trả về các đối tượng Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Chuyển một chuỗi văn bản vào lệnh ghép để phân tích cú pháp URI.

## Parameter Details

### `-Text <String[]>`

> Văn bản đầu vào có thể chứa URI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Open-AllPossibleQueries.md)
