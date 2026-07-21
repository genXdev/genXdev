# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Mendapatkan semua nama preferensi dari penyimpanan sesi dan penyimpanan basis data.

## Description

* Mengambil daftar unik nama preferensi dengan menggabungkan kunci dari
  penyimpanan sesi (variabel global) dan kedua penyimpanan preferensi lokal
  dan default.
* Menghormati parameter manajemen sesi untuk mengontrol sumber mana yang
  akan dikueri.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Hapus pengaturan sesi (Variabel global) sebelum mengambil |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Mengembalikan array terurut dari nama preferensi unik dari penyimpanan sesi dan kedua penyimpanan menggunakan jalur basis data yang ditentukan.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Mengembalikan hanya nama preferensi dari penyimpanan sesi.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Hanya mengembalikan nama preferensi dari penyimpanan database.

## Parameter Details

### `-SessionOnly`

> Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Hapus pengaturan sesi (Variabel global) sebelum mengambil

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Jalur database untuk file data preferensi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreferencesDatabasePath.md)
