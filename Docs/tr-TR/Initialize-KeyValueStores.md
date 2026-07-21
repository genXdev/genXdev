# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Yerel ve OneDrive depolama için KeyValueStore dizin yapısını başlatır.

## Description

JSON tabanlı anahtar-değer depoları için iki konumda dizin yapısı oluşturur: yerel makinede anında erişim için ve OneDrive klasöründe bulut eşitlemesi için. Cmdlet, her iki dizinin de var olduğundan ve düzgün şekilde yapılandırıldığından emin olur.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Anahtar-değer deposu veri dosyaları için veritabanı yolu |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Anahtar-değer depoları için standart yerel ve OneDrive dizinlerini oluşturur.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Belirtilen özel yol altında anahtar-değer deposu dizinleri oluşturur.

## Parameter Details

### `-DatabasePath <String>`

> Anahtar-değer deposu veri dosyaları için veritabanı yolu

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Sync-KeyValueStore.md)
