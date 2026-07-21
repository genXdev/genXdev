# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Mevcut anahtar-değer depolarının adlarını alır.

## Description

* Anahtar-değer deposu dizinini JSON dosyaları için tarar ve belirtilen senkronizasyon anahtarı modeline dayalı olarak benzersiz mağaza adlarını çıkarır.
* Depo dizininin var olduğundan emin olur ve gerekirse yerel olmayan mağazaları senkronize eder.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Eşitleme kapsamını belirleyen anahtar, varsayılan olarak tümü |
| `-DatabasePath` | String | — | — | Named | — | Anahtar-değer deposu veri dosyaları için veritabanı yolu |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Varsayılan konumdaki tüm mağaza adlarını alır.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

'Yerel' eşitleme kapsamı için mağaza adlarını alır.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Takma ad kullanarak özel bir veritabanı yolundan tüm mağaza adlarını alır.

## Parameter Details

### `-SynchronizationKey <String>`

> Eşitleme kapsamını belirleyen anahtar, varsayılan olarak tümü

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Sync-KeyValueStore.md)
