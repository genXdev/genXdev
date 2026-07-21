# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Khởi tạo cấu trúc thư mục KeyValueStore cho lưu trữ cục bộ và OneDrive.

## Description

Tạo cấu trúc thư mục cho kho lưu trữ khóa-giá trị dựa trên JSON ở hai vị trí: máy cục bộ để truy cập tức thì và thư mục OneDrive để đồng bộ hóa đám mây. Cmdlet đảm bảo cả hai thư mục đều tồn tại và được cấu hình đúng cách.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu lưu trữ key-value |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Tạo các thư mục chuẩn cục bộ và OneDrive cho các kho lưu trữ khóa-giá trị.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Tạo các thư mục lưu trữ khóa-giá trị dưới đường dẫn tùy chỉnh được chỉ định.

## Parameter Details

### `-DatabasePath <String>`

> Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu lưu trữ key-value

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Sync-KeyValueStore.md)
