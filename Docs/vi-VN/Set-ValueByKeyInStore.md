# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> Quản lý các cặp khóa-giá trị trong một cửa hàng dựa trên tệp JSON.

## Description

Cung cấp bộ nhớ liên tục cho các cặp khóa-giá trị bằng cách sử dụng tệp JSON. Xử lý cả việc chèn mục nhập mới và cập nhật các mục hiện có. Hỗ trợ đồng bộ hóa tùy chọn cho các cửa hàng không phải cục bộ. Hàm này thực hiện thao tác upsert để chèn các cặp khóa-giá trị mới hoặc cập nhật các cặp hiện có dựa trên sự kết hợp của khóa đồng bộ hóa, tên cửa hàng và tên khóa.

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Tên lưu trữ cho cặp khóa-giá trị |
| `-KeyName` | String | ✅ | — | 1 | — | Tên của khóa cần đặt hoặc cập nhật |
| `-Value` | String | — | — | 2 | — | Giá trị cần lưu trữ |
| `-SynchronizationKey` | String | — | — | 3 | — | Khóa để xác định phạm vi đồng bộ hóa |
| `-DatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu lưu trữ key-value |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

Đặt một điểm cuối API trong ConfigStore.

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

Sử dụng bí danh để đặt giá trị.

## Parameter Details

### `-StoreName <String>`

> Tên lưu trữ cho cặp khóa-giá trị

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> Tên của khóa cần đặt hoặc cập nhật

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Giá trị cần lưu trữ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Khóa để xác định phạm vi đồng bộ hóa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
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
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyValueStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Sync-KeyValueStore.md)
