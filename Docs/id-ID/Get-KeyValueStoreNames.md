# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Mengambil nama-nama penyimpanan nilai-kunci yang tersedia.

## Description

* Memindai direktori penyimpanan key-value untuk mencari file JSON dan mengekstrak nama penyimpanan unik berdasarkan pola kunci sinkronisasi yang ditentukan.
* Memastikan direktori penyimpanan ada dan menyinkronkan penyimpanan non-lokal jika diperlukan.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Kunci untuk mengidentifikasi lingkup sinkronisasi, default ke semua |
| `-DatabasePath` | String | — | — | Named | — | Jalur database untuk file data penyimpanan nilai-kunci |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Mengambil semua nama toko dari lokasi default.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Mengambil nama-nama toko untuk lingkup sinkronisasi 'Lokal'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Mengambil semua nama toko dari jalur database kustom menggunakan alias.

## Parameter Details

### `-SynchronizationKey <String>`

> Kunci untuk mengidentifikasi lingkup sinkronisasi, default ke semua

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Sync-KeyValueStore.md)
