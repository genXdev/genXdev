# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Truy xuất tên của các cửa hàng khóa-giá trị có sẵn.

## Description

* Quét thư mục kho khóa-giá trị để tìm các tệp JSON và trích xuất các tên kho duy nhất dựa trên mẫu khóa đồng bộ hóa đã chỉ định.
* Đảm bảo thư mục kho tồn tại và đồng bộ hóa các kho không phải cục bộ nếu cần thiết.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Khóa để xác định phạm vi đồng bộ, mặc định là tất cả |
| `-DatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu lưu trữ key-value |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Truy xuất tất cả tên cửa hàng từ vị trí mặc định.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Truy xuất tên cửa hàng cho phạm vi đồng bộ hóa 'Cục bộ'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Truy xuất tất cả tên cửa hàng từ đường dẫn cơ sở dữ liệu tùy chỉnh bằng cách sử dụng bí danh.

## Parameter Details

### `-SynchronizationKey <String>`

> Khóa để xác định phạm vi đồng bộ, mặc định là tất cả

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Sync-KeyValueStore.md)
