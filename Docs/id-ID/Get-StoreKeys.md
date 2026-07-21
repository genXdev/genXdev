# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys`

## Synopsis

> Mengambil semua nama kunci untuk penyimpanan nilai-kunci yang diberikan.

## Description

* Mengkueri file JSON KeyValueStore untuk mengambil semua kunci aktif (tidak dihapus) untuk penyimpanan yang ditentukan.
* Secara opsional dapat memfilter berdasarkan lingkup sinkronisasi.
* Secara otomatis menginisialisasi struktur direktori jika tidak ditemukan dan menangani sinkronisasi untuk penyimpanan non-lokal.

## Syntax

```powershell
Get-StoreKeys -StoreName <String> [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nama toko yang kuncinya harus diambil |
| `-SynchronizationKey` | String | — | — | 1 | — | Kunci untuk mengidentifikasi lingkup sinkronisasi, default ke semua |
| `-DatabasePath` | String | — | — | Named | — | Jalur database untuk file data penyimpanan nilai-kunci |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Mengambil semua kunci dari penyimpanan ApplicationSettings untuk lingkup Lokal.

### Example 2

```powershell
getkeys AppSettings
```

Mengambil kunci menggunakan alias.

## Parameter Details

### `-StoreName <String>`

> Nama toko yang kuncinya harus diambil

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

> Kunci untuk mengidentifikasi lingkup sinkronisasi, default ke semua

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
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Sync-KeyValueStore.md)
