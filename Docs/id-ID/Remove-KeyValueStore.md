# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Menghapus penyimpanan pasangan kunci-nilai.

## Description

Fungsi ini menghapus penyimpanan pasangan kunci-nilai tertentu. Untuk penyimpanan lokal, file akan dihapus secara fisik. Untuk penyimpanan tersinkronisasi, semua kunci ditandai sebagai dihapus dan memicu sinkronisasi.

## Syntax

```powershell
Remove-KeyValueStore -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nama toko yang akan dihapus |
| `-SynchronizationKey` | String | — | — | 1 | — | Kunci untuk mengidentifikasi ruang lingkup sinkronisasi |
| `-DatabasePath` | String | — | — | Named | — | Jalur database untuk file data penyimpanan nilai-kunci |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

Hapus penyimpanan nilai-kunci lokal bernama "MyStore".

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

Hapus penyimpanan yang disinkronkan dengan kunci sinkronisasi tertentu.

## Parameter Details

### `-StoreName <String>`

> Nama toko yang akan dihapus

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

> Kunci untuk mengidentifikasi ruang lingkup sinkronisasi

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

> Jalur database untuk file data penyimpanan nilai-kunci

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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyFromStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Sync-KeyValueStore.md)
