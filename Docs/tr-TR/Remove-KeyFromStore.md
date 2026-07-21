# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey`

## Synopsis

> Bir anahtar-değer deposundan bir anahtarı kaldırır.

## Description

Bu işlev, adlandırılmış bir anahtar-değer deposundan belirtilen bir anahtarı kaldırır. Yerel depolar için anahtar kalıcı olarak silinir. Senkronize edilmiş depolar için anahtar, senkronizasyona izin vermek amacıyla silinmiş olarak işaretlenir.

## Syntax

```powershell
Remove-KeyFromStore -StoreName <String> -KeyName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Mağazanın adı |
| `-KeyName` | String | ✅ | — | 1 | — | Silinecek anahtar |
| `-SynchronizationKey` | String | — | — | 2 | — | Eşitleme kapsamını tanımlamak için anahtar |
| `-DatabasePath` | String | — | — | Named | — | Anahtar-değer deposu veri dosyaları için veritabanı yolu |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

'MyStore' deposundan 'MyKey' anahtarını kaldırın.

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Bir anahtarı takma adını kullanarak kaldırın.

## Parameter Details

### `-StoreName <String>`

> Mağazanın adı

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

> Silinecek anahtar

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Sync-KeyValueStore.md)
