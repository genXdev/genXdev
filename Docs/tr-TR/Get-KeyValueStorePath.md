# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Anahtar-değer deposunun dosya yolunu alır.

## Description

* Anahtar-değer deposu için, eşitleme anahtarı, depo adı ve temel dizine göre dosya yolunu oluşturur.

## Syntax

```powershell
Get-KeyValueStorePath -SynchronizationKey <String> -StoreName <String> [-BasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | Mağazayı tanımlamak için kullanılan eşitleme anahtarı |
| `-StoreName` | String | ✅ | — | 1 | — | Anahtar-değer deposunun adı |
| `-BasePath` | String | — | — | Named | — | Dosyaları depolamak için temel dizin yolu |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Yerel bir anahtar-değer deposunun yolunu alın.

## Parameter Details

### `-SynchronizationKey <String>`

> Mağazayı tanımlamak için kullanılan eşitleme anahtarı

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StoreName <String>`

> Anahtar-değer deposunun adı

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-BasePath <String>`

> Dosyaları depolamak için temel dizin yolu

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
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Sync-KeyValueStore.md)
