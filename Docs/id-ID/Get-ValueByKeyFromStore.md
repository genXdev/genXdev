# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue`

## Synopsis

> Mengambil nilai dari penyimpanan kunci-nilai berbasis JSON.

## Description

* Mengambil nilai untuk kunci yang ditentukan dari penyimpanan kunci-nilai berbasis file JSON.
* Mendukung nilai default opsional dan sinkronisasi di berbagai lingkup.
* Menyediakan inisialisasi dan sinkronisasi direktori secara otomatis.

## Syntax

```powershell
Get-ValueByKeyFromStore -StoreName <String> -KeyName <String> [[-DefaultValue] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nama toko untuk mengambil kunci |
| `-KeyName` | String | ✅ | — | 1 | — | Kunci yang akan diambil dari penyimpanan yang ditentukan |
| `-DefaultValue` | String | — | — | 2 | — | Nilai default opsional |
| `-SynchronizationKey` | String | — | — | 3 | — | Kunci untuk mengidentifikasi ruang lingkup sinkronisasi |
| `-DatabasePath` | String | — | — | Named | — | Jalur database untuk file data penyimpanan nilai-kunci |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Mengambil nilai "Theme" dari "AppSettings", mengembalikan "Dark" jika tidak ditemukan.

### Example 2

```powershell
getvalue AppSettings Theme
```

Menggunakan alias 'getvalue' untuk mengambil suatu nilai.

## Parameter Details

### `-StoreName <String>`

> Nama toko untuk mengambil kunci

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

> Kunci yang akan diambil dari penyimpanan yang ditentukan

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Nilai default opsional

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

> Kunci untuk mengidentifikasi ruang lingkup sinkronisasi

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
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Sync-KeyValueStore.md)
