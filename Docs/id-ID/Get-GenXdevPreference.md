# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> Mengambil nilai preferensi dari penyimpanan preferensi GenXdev.

## Description

* Menerapkan sistem pengambilan preferensi dua tingkat.
* Pertama memeriksa penyimpanan lokal untuk nilai preferensi.
* Jika tidak ditemukan, akan menggunakan penyimpanan default.
* Jika masih tidak ditemukan, mengembalikan nilai default yang disediakan.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Nama preferensi yang akan diambil |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | Nilai default jika preferensi tidak ditemukan |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Jalur database untuk file data preferensi |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Hapus pengaturan sesi (Variabel global) sebelum mengambil |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Jangan gunakan pengaturan alternatif yang disimpan dalam sesi untuk preferensi Data seperti Bahasa, jalur Database, dll |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Mengambil preferensi "Tema" dengan fallback ke "Gelap" secara default.

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Menggunakan alias dan parameter posisional.

## Parameter Details

### `-Name <String>`

> Nama preferensi yang akan diambil

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Nilai default jika preferensi tidak ditemukan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
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

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreferencesDatabasePath.md)
