# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bir anahtar-değer deposunu kaldırır.

## Description

Bu işlev belirtilen anahtar-değer deposunu siler. Yerel depolar için dosyayı fiziksel olarak kaldırır. Senkronize depolar için tüm anahtarları silinmiş olarak işaretler ve eşitlemeyi tetikler.

## Syntax

```powershell
Remove-KeyValueStore -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Silinecek mağazanın adı |
| `-SynchronizationKey` | String | — | — | 1 | — | Eşitleme kapsamını tanımlamak için anahtar |
| `-DatabasePath` | String | — | — | Named | — | Anahtar-değer deposu veri dosyaları için veritabanı yolu |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

'MyStore' adlı bir yerel anahtar-değer deposunu kaldırın.

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Belirli bir eşitleme anahtarına sahip eşitlenmiş bir mağazayı kaldırın.

## Parameter Details

### `-StoreName <String>`

> Silinecek mağazanın adı

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

> Eşitleme kapsamını tanımlamak için anahtar

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

> Anahtar-değer deposu veri dosyaları için veritabanı yolu

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyFromStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Sync-KeyValueStore.md)
