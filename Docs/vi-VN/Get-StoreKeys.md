# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys`

## Synopsis

> Truy xuất tất cả tên khóa cho một kho lưu trữ khóa-giá trị đã cho.

## Description

* Truy vấn tệp JSON KeyValueStore để truy xuất tất cả các khóa hoạt động (chưa xóa) cho một kho lưu trữ được chỉ định.
* Có thể tùy chọn lọc theo phạm vi đồng bộ hóa.
* Tự động khởi tạo cấu trúc thư mục nếu không tìm thấy và xử lý đồng bộ hóa cho các kho lưu trữ không cục bộ.

## Syntax

```powershell
Get-StoreKeys -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Tên của kho lưu trữ mà khóa cần được truy xuất |
| `-SynchronizationKey` | String | — | — | 1 | — | Khóa để xác định phạm vi đồng bộ, mặc định là tất cả |
| `-DatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu lưu trữ key-value |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Truy xuất tất cả các khóa từ kho lưu trữ ApplicationSettings cho phạm vi Local.

### Example 2

```powershell
getkeys AppSettings
```

Truy xuất các khóa bằng cách sử dụng bí danh.

## Parameter Details

### `-StoreName <String>`

> Tên của kho lưu trữ mà khóa cần được truy xuất

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Khóa để xác định phạm vi đồng bộ, mặc định là tất cả

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu lưu trữ key-value

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-KeyValueStorePath.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Sync-KeyValueStore.md)
